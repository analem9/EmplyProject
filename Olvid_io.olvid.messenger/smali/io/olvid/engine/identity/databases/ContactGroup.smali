.class public Lio/olvid/engine/identity/databases/ContactGroup;
.super Ljava/lang/Object;
.source "ContactGroup.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final GROUP_MEMBERS_VERSION:Ljava/lang/String; = "group_members_version"

.field static final GROUP_OWNER:Ljava/lang/String; = "group_owner"

.field static final GROUP_OWNER_AND_UID:Ljava/lang/String; = "group_owner_and_uid"

.field private static final HOOK_BIT_DELETED:J = 0x2L

.field private static final HOOK_BIT_DETAILS_PUBLISHED:J = 0x20L

.field private static final HOOK_BIT_DETAILS_PUBLISHED_PHOTO_CHANGED:J = 0x40L

.field private static final HOOK_BIT_INSERTED:J = 0x1L

.field private static final HOOK_BIT_NEW_PUBLISHED_DETAILS:J = 0x8L

.field private static final HOOK_BIT_PHOTO_SET:J = 0x10L

.field private static final HOOK_BIT_PUBLISHED_DETAILS_TRUSTED:J = 0x4L

.field static final LATEST_OR_TRUSTED_DETAILS_VERSION:Ljava/lang/String; = "latest_or_trusted_details_version"

.field static final OWNED_IDENTITY:Ljava/lang/String; = "owned_identity"

.field static final PUBLISHED_DETAILS_VERSION:Ljava/lang/String; = "published_details_version"

.field static final TABLE_NAME:Ljava/lang/String; = "contact_group"


# instance fields
.field private commitHookBits:J

.field private groupMembersVersion:J

.field private groupOwner:Lio/olvid/engine/datatypes/Identity;

.field private groupOwnerAndUid:[B

.field private hookGroupName:Ljava/lang/String;

.field private hookPhotoSetVersion:I

.field private hookTrustedDetails:Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

.field private final identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

.field private latestOrTrustedDetailsVersion:I

.field private ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private publishedDetailsVersion:I


# direct methods
.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "group_owner"

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 588
    iput-wide v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    .line 398
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    const-string p1, "group_owner_and_uid"

    .line 399
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    :try_start_0
    const-string p1, "owned_identity"

    .line 401
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 402
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    .line 404
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "published_details_version"

    .line 408
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    const-string p1, "latest_or_trusted_details_version"

    .line 409
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    const-string p1, "group_members_version"

    .line 410
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupMembersVersion:J

    return-void

    .line 406
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;I)V
    .locals 2

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 588
    iput-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    .line 388
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 389
    iput-object p2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    .line 390
    iput-object p3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 391
    iput-object p4, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    .line 392
    iput p5, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    .line 393
    iput p5, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    .line 394
    iput-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupMembersVersion:J

    return-void
.end method

.method public static create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    invoke-virtual {v1, p3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 369
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    invoke-static {p0, p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;)Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 378
    new-instance v7, Lio/olvid/engine/identity/databases/ContactGroup;

    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getVersion()I

    move-result v6

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/identity/databases/ContactGroup;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;I)V

    .line 379
    invoke-virtual {v7}, Lio/olvid/engine/identity/databases/ContactGroup;->insert()V

    return-object v7

    :cond_1
    const-string p0, "Error create contactGroupDetails in ContactGroup.create()"

    .line 375
    invoke-static {p0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 376
    new-instance p0, Ljava/sql/SQLException;

    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    throw p0

    :cond_2
    const-string p0, "Calling ContactGroup.create() outside a transaction"

    .line 370
    invoke-static {p0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 371
    new-instance p0, Ljava/sql/SQLException;

    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 382
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception p0

    .line 364
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS contact_group (group_owner_and_uid BLOB NOT NULL, owned_identity BLOB NOT NULL, group_owner BLOB, published_details_version INT NOT NULL, latest_or_trusted_details_version INT NOT NULL, group_members_version BIGINT NOT NULL,  CONSTRAINT PK_contact_group PRIMARY KEY(group_owner_and_uid, owned_identity),  FOREIGN KEY (group_owner,owned_identity) REFERENCES contact_identity(identity,owned_identity),  FOREIGN KEY (owned_identity) REFERENCES owned_identity(identity), FOREIGN KEY (owned_identity, group_owner_and_uid, published_details_version) REFERENCES contact_group_details(owned_identity, group_owner_and_uid, version), FOREIGN KEY (owned_identity, group_owner_and_uid, latest_or_trusted_details_version) REFERENCES contact_group_details(owned_identity, group_owner_and_uid, version));"

    .line 421
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 433
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 420
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 433
    :try_start_2
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM contact_group WHERE group_owner_and_uid = ? AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 543
    :try_start_0
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 544
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 545
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 546
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 547
    new-instance p2, Lio/olvid/engine/identity/databases/ContactGroup;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/identity/databases/ContactGroup;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 551
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    if-eqz v0, :cond_1

    .line 552
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-object p2

    :cond_2
    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 551
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_3
    if-eqz v0, :cond_4

    .line 552
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    .line 545
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_5

    .line 551
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    .line 542
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_6

    .line 552
    :try_start_8
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p1
.end method

.method public static getAllForIdentity(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/identity/databases/ContactGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM contact_group WHERE owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 557
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 558
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 559
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 560
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    new-instance v2, Lio/olvid/engine/identity/databases/ContactGroup;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/identity/databases/ContactGroup;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V

    .line 562
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lio/olvid/engine/identity/databases/ContactGroup;

    .line 564
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/identity/databases/ContactGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 565
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v0, :cond_2

    .line 566
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 558
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    .line 565
    :try_start_4
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 556
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_4

    .line 566
    :try_start_7
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
.end method

.method public static getGroupOwnerAndUidsOfGroupsOwnedByContact(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 570
    iget-object p0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v0, "SELECT group_owner_and_uid FROM contact_group WHERE owned_identity = ? AND group_owner = ?;"

    invoke-virtual {p0, v0}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 571
    :try_start_0
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {p0, v0, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x2

    .line 572
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 573
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 574
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 575
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "group_owner_and_uid"

    .line 576
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [[B

    .line 578
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 579
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz p0, :cond_2

    .line 580
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p2

    :catchall_0
    move-exception p2

    .line 573
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    .line 579
    :try_start_4
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    .line 570
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_4

    .line 580
    :try_start_7
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p2
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xb

    if-ge p1, v0, :cond_8

    if-lt p2, v0, :cond_8

    .line 438
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p2

    .line 439
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIGRATING contact_group DATABASE FROM VERSION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 11"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE contact_group RENAME TO old_contact_group"

    .line 440
    invoke-interface {p2, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string p1, "CREATE TABLE contact_group_details ( group_owner_and_uid BLOB NOT NULL,  owned_identity BLOB NOT NULL,  version INT NOT NULL,  serialized_json_details TEXT NOT NULL,  photo_url TEXT,  photo_server_label BLOB,  photo_server_key BLOB,  CONSTRAINT PK_contact_group_details PRIMARY KEY(group_owner_and_uid, owned_identity, version));"

    .line 441
    invoke-interface {p2, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string p1, "CREATE TABLE contact_group ( group_owner_and_uid BLOB NOT NULL,  owned_identity BLOB NOT NULL,  group_owner BLOB,  published_details_version INT NOT NULL,  latest_or_trusted_details_version INT NOT NULL,  group_members_version BIGINT NOT NULL,  CONSTRAINT PK_contact_group PRIMARY KEY(group_owner_and_uid, owned_identity),  FOREIGN KEY (group_owner,owned_identity) REFERENCES contact_identity(identity,owned_identity),  FOREIGN KEY (owned_identity) REFERENCES owned_identity(identity),  FOREIGN KEY (owned_identity, group_owner_and_uid, published_details_version) REFERENCES contact_group_details(owned_identity, group_owner_and_uid, version),  FOREIGN KEY (owned_identity, group_owner_and_uid, latest_or_trusted_details_version) REFERENCES contact_group_details(owned_identity, group_owner_and_uid, version));"

    .line 450
    invoke-interface {p2, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 462
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    const-string v0, "SELECT * FROM old_contact_group"

    .line 463
    invoke-interface {p2, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 464
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "INSERT INTO contact_group VALUES (?,?,?,?,?, ?);"

    .line 465
    invoke-virtual {p0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 v2, 0x1

    .line 466
    :try_start_2
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v3, 0x2

    .line 467
    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v4, 0x4

    .line 468
    invoke-interface {v0, v4}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v1, v6, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v5, 0x0

    .line 469
    invoke-interface {v1, v4, v5}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v7, 0x5

    .line 470
    invoke-interface {v1, v7, v5}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v8, 0x6

    .line 471
    invoke-interface {v1, v8, v5}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 472
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_1

    .line 473
    :try_start_3
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    const-string v1, "INSERT INTO contact_group_details VALUES (?,?,?,?,?, ?,?);"

    .line 474
    invoke-virtual {p0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 475
    :try_start_4
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v9

    invoke-interface {v1, v2, v9}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 476
    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 477
    invoke-interface {v1, v6, v5}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 478
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "name"

    .line 479
    invoke-interface {v0, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 481
    :try_start_5
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x0

    .line 486
    :try_start_6
    invoke-interface {v1, v7, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 487
    invoke-interface {v1, v8, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v3, 0x7

    .line 488
    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 489
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_0

    .line 490
    :try_start_7
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_0

    :catch_0
    :try_start_8
    const-string p0, "\n\n\n\nMIGRATION ERROR!!!\n\n\n"

    .line 483
    invoke-static {p0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 484
    new-instance p0, Ljava/sql/SQLException;

    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p0

    .line 474
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_2

    .line 490
    :try_start_a
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_b
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_3
    move-exception p0

    .line 465
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_3

    .line 473
    :try_start_d
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_e
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_4
    if-eqz v0, :cond_5

    .line 492
    :try_start_f
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    :cond_5
    const-string p0, "DROP TABLE old_contact_group"

    .line 493
    invoke-interface {p2, p0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-eqz p2, :cond_8

    .line 494
    invoke-interface {p2}, Ljava/sql/Statement;->close()V

    goto :goto_5

    :catchall_6
    move-exception p0

    .line 463
    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception p1

    if-eqz v0, :cond_6

    .line 492
    :try_start_11
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_3

    :catchall_8
    move-exception v0

    :try_start_12
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :catchall_9
    move-exception p0

    .line 438
    :try_start_13
    throw p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :catchall_a
    move-exception p1

    if-eqz p2, :cond_7

    .line 494
    :try_start_14
    invoke-interface {p2}, Ljava/sql/Statement;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_4

    :catchall_b
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw p1

    :cond_8
    :goto_5
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 520
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM contact_group WHERE group_owner_and_uid = ? AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 521
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 522
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v0, v3, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 523
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 524
    iget-wide v4, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v6, 0x2

    or-long/2addr v4, v6

    iput-wide v4, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    .line 525
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    .line 526
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 527
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM contact_group_details WHERE group_owner_and_uid = ?  AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 530
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 531
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 532
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 533
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 527
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 533
    :try_start_3
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2

    :catchall_3
    move-exception v1

    .line 520
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v0, :cond_3

    .line 526
    :try_start_5
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2

    :cond_4
    const-string v0, "Running ContactGroup delete outside a transaction"

    .line 517
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 518
    new-instance v0, Ljava/sql/SQLException;

    invoke-direct {v0}, Ljava/sql/SQLException;-><init>()V

    throw v0
.end method

.method public discardLatestDetails()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 276
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    iget v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    if-ne v0, v1, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE contact_group SET latest_or_trusted_details_version = ?  WHERE group_owner_and_uid = ?  AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 283
    :try_start_0
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x2

    .line 284
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 285
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 286
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 287
    iget v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    iput v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 288
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 279
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 288
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
.end method

.method public getGroupInformation()Lio/olvid/engine/datatypes/containers/GroupInformation;
    .locals 5

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/ContactGroup;->getPublishedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getJsonGroupDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    array-length v3, v2

    add-int/lit8 v3, v3, -0x20

    array-length v4, v2

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    .line 96
    new-instance v2, Lio/olvid/engine/datatypes/containers/GroupInformation;

    iget-object v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    if-nez v3, :cond_0

    iget-object v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    :cond_0
    invoke-direct {v2, v3, v1, v0}, Lio/olvid/engine/datatypes/containers/GroupInformation;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Ljava/lang/String;)V

    return-object v2

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupMembersVersion()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupMembersVersion:J

    return-wide v0
.end method

.method public getGroupOwner()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getGroupOwnerAndUid()[B
    .locals 1

    .line 56
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    return-object v0
.end method

.method public getLatestOrTrustedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    iget v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    invoke-static {v0, v1, v2, v3}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    return-object v0
.end method

.method public getLatestOrTrustedDetailsVersion()I
    .locals 1

    .line 84
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    return v0
.end method

.method public getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getPublishedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    iget v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    invoke-static {v0, v1, v2, v3}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    return-object v0
.end method

.method public getPublishedDetailsVersion()I
    .locals 1

    .line 72
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    return v0
.end method

.method public incrementGroupMembersVersion()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE contact_group SET group_members_version = ?  WHERE group_owner_and_uid = ?  AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 329
    :try_start_0
    iget-wide v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupMembersVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v1, 0x2

    .line 330
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 331
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 332
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 333
    iget-wide v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupMembersVersion:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupMembersVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 325
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 334
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    :cond_2
    const-string v0, "Called incrementGroupMembersVersion outside a transaction"

    .line 322
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO contact_group VALUES (?,?,?,?,?, ?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 502
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 503
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 504
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 505
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x5

    .line 506
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x6

    .line 507
    iget-wide v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupMembersVersion:J

    invoke-interface {v0, v1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 508
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 509
    iget-wide v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v3, 0x1

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    .line 510
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 511
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 501
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 511
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public publishLatestDetails()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 249
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    iget v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/ContactGroup;->getPublishedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/ContactGroup;->getLatestOrTrustedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, v2, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v3, "UPDATE contact_group SET published_details_version = ?  WHERE group_owner_and_uid = ?  AND owned_identity = ?;"

    invoke-virtual {v2, v3}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    const/4 v3, 0x1

    .line 258
    :try_start_0
    iget v4, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v3, 0x2

    .line 259
    iget-object v4, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v3, 0x3

    .line 260
    iget-object v4, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 261
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 262
    iget v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    iput v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 263
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 264
    :cond_1
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    :goto_0
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoServerLabel()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoServerKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v0

    if-nez v0, :cond_4

    .line 267
    :cond_3
    iget-wide v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    iput-wide v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    .line 269
    :cond_4
    iget-wide v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    iput-wide v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    .line 270
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getJsonGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->hookGroupName:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V

    .line 272
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    return v0

    :catchall_0
    move-exception v0

    .line 254
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_5

    .line 263
    :try_start_2
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v1
.end method

.method public setDetailsPhotoUrl(I[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, v2, p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-static {v1}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 301
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 304
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v4, v4, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->identityPhotosPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x10000

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 308
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 309
    :try_start_0
    array-length v4, p2

    invoke-virtual {v1, p2, v2, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 313
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->setPhotoUrl(Ljava/lang/String;)V

    .line 314
    iput p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->hookPhotoSetVersion:I

    .line 315
    iget-wide p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    .line 316
    iget-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object p1, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V

    return-void

    :catchall_0
    move-exception p1

    .line 308
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 310
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
.end method

.method public setGroupMembersVersion(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE contact_group SET group_members_version = ?  WHERE group_owner_and_uid = ?  AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 343
    :try_start_0
    invoke-interface {v0, v1, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v1, 0x2

    .line 344
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 345
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 346
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 347
    iput-wide p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupMembersVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 339
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 348
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public setLatestDetails(Lio/olvid/engine/engine/types/JsonGroupDetails;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/JsonGroupDetails;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 158
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/ContactGroup;->getLatestOrTrustedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getJsonGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p1}, Lio/olvid/engine/engine/types/JsonGroupDetails;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 163
    :cond_1
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    iget v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    if-eq v0, v1, :cond_2

    .line 164
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/ContactGroup;->getPublishedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getJsonGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Lio/olvid/engine/engine/types/JsonGroupDetails;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/ContactGroup;->discardLatestDetails()V

    return-void

    .line 173
    :cond_2
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    iget v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    if-ne v0, v1, :cond_4

    .line 174
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    iget-object v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v1, v2, v3, v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->copy(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "UPDATE contact_group SET latest_or_trusted_details_version = ?  WHERE group_owner_and_uid = ? AND owned_identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 179
    :try_start_0
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getVersion()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v2, 0x2

    .line 180
    iget-object v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v2, 0x3

    .line 181
    iget-object v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 182
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 183
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getVersion()I

    move-result v2

    iput v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    .line 184
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 175
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    .line 184
    :try_start_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0

    .line 186
    :cond_4
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    iget-object v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v2, v3, v1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    .line 188
    :cond_5
    :goto_1
    invoke-virtual {v0, p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->setJsonDetails(Lio/olvid/engine/engine/types/JsonGroupDetails;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setOwnedGroupPhoto(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 196
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 201
    :cond_1
    iget p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    iget v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    if-ne p1, v1, :cond_3

    .line 202
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    iget-object v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v1, v2, v3, p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->copy(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object p1

    .line 203
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "UPDATE contact_group SET latest_or_trusted_details_version = ?  WHERE group_owner_and_uid = ? AND owned_identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 207
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getVersion()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v2, 0x2

    .line 208
    iget-object v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v2, 0x3

    .line 209
    iget-object v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 210
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 211
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getVersion()I

    move-result v2

    iput v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 212
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 203
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 212
    :try_start_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0

    .line 214
    :cond_3
    iget-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    iget-object v3, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {p1, v2, v3, v1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object p1

    .line 218
    :cond_4
    :goto_1
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-static {v1}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 219
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 222
    :cond_5
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v4, v4, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->identityPhotosPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x10000

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 226
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 227
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const/16 v2, 0x1000

    :try_start_4
    new-array v2, v2, [B

    .line 230
    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_6

    const/4 v5, 0x0

    .line 231
    invoke-virtual {v0, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 233
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 234
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 237
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->setPhotoUrl(Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception p1

    .line 227
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v2

    .line 233
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception p1

    .line 226
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    .line 234
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0

    :cond_7
    :goto_5
    return-void
.end method

.method public setPhotoLabelAndKey(ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, v2, p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->setPhotoServerLabelAndKey(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    :cond_0
    return-void
.end method

.method public trustPublishedDetails()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    if-eqz v0, :cond_3

    iget v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    iget v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE contact_group SET latest_or_trusted_details_version = ?  WHERE group_owner_and_uid = ?  AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 142
    :try_start_0
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x2

    .line 143
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 144
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 145
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 146
    iget v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    iput v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 147
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/ContactGroup;->getLatestOrTrustedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getJsonGroupDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->hookTrustedDetails:Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    .line 149
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    .line 150
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V

    return-void

    :catchall_0
    move-exception v1

    .line 138
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 147
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2

    :cond_3
    :goto_1
    return-void
.end method

.method public updatePublishedDetails(Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getVersion()I

    move-result v0

    iget v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I

    if-gt v0, v1, :cond_0

    goto/16 :goto_1

    .line 108
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, v2, p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;)Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object p1

    .line 109
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/ContactGroup;->getPublishedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoServerLabel()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoServerKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoServerLabel()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoServerLabel()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoServerKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v1

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoServerKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->setPhotoUrl(Ljava/lang/String;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE contact_group SET published_details_version = ?  WHERE group_owner_and_uid = ?  AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 123
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getVersion()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x2

    .line 124
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 125
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 126
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 127
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getVersion()I

    move-result p1

    iput p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->publishedDetailsVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 128
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 129
    :cond_2
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    .line 130
    iget-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object p1, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V

    return-void

    :catchall_0
    move-exception p1

    .line 119
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 128
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1

    :cond_4
    :goto_1
    return-void
.end method

.method public wasCommitted()V
    .locals 8

    .line 602
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-string v2, "owned_identity"

    const-string v3, "group_uid"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 604
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v6, "identity_manager_notification_group_created"

    invoke-interface {v1, v6, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 608
    :cond_0
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v6, 0x2

    and-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 610
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v6, "identity_manager_notification_group_deleted"

    invoke-interface {v1, v6, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 614
    :cond_1
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v6, 0x20

    and-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    .line 615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 616
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->hookGroupName:Ljava/lang/String;

    const-string v6, "group_name"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v6, "identity_manager_notification_group_published_details_updated"

    invoke-interface {v1, v6, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 620
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    .line 624
    :cond_2
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v6, 0x8

    and-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3

    .line 625
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 626
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v6, "identity_manager_notification_new_group_published_details"

    invoke-interface {v1, v6, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 630
    :cond_3
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v6, 0x4

    and-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-eqz v6, :cond_4

    .line 631
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 632
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->hookTrustedDetails:Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    const-string v6, "group_details"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v6, "identity_manager_notification_group_trusted_details_updated"

    invoke-interface {v1, v6, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 637
    :cond_4
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    const-wide/16 v6, 0x10

    and-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-eqz v6, :cond_6

    .line 638
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 639
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->groupOwnerAndUid:[B

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->hookPhotoSetVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->hookPhotoSetVersion:I

    iget v2, p0, Lio/olvid/engine/identity/databases/ContactGroup;->latestOrTrustedDetailsVersion:I

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_trusted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroup;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v2, "identity_manager_notification_group_photo_set"

    invoke-interface {v1, v2, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 646
    :cond_6
    iput-wide v4, p0, Lio/olvid/engine/identity/databases/ContactGroup;->commitHookBits:J

    return-void
.end method
