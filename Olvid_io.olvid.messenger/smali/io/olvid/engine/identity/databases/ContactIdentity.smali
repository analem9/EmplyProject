.class public Lio/olvid/engine/identity/databases/ContactIdentity;
.super Ljava/lang/Object;
.source "ContactIdentity.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field private static final HOOK_BIT_DELETED:J = 0x2L

.field private static final HOOK_BIT_INSERTED:J = 0x1L

.field private static final HOOK_BIT_NEW_PUBLISHED_DETAILS:J = 0x8L

.field private static final HOOK_BIT_PHOTO_SET:J = 0x10L

.field private static final HOOK_BIT_PUBLISHED_DETAILS_TRUSTED:J = 0x4L

.field private static final HOOK_BIT_TRUST_LEVEL_INCREASED:J = 0x20L

.field static final IDENTITY:Ljava/lang/String; = "identity"

.field static final OWNED_IDENTITY:Ljava/lang/String; = "owned_identity"

.field static final PUBLISHED_DETAILS_VERSION:Ljava/lang/String; = "published_details_version"

.field static final TABLE_NAME:Ljava/lang/String; = "contact_identity"

.field static final TRUSTED_DETAILS_VERSION:Ljava/lang/String; = "trusted_details_version"

.field static final TRUST_LEVEL:Ljava/lang/String; = "trust_level"


# instance fields
.field private commitHookBits:J

.field private hookPhotoSetVersion:I

.field private hookTrustedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

.field private identity:Lio/olvid/engine/datatypes/Identity;

.field private final identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

.field private ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private publishedDetailsVersion:I

.field private trustLevel:Lio/olvid/engine/datatypes/TrustLevel;

.field private trustedDetailsVersion:I


# direct methods
.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;ILio/olvid/engine/datatypes/TrustLevel;)V
    .locals 2

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 566
    iput-wide v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    .line 231
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 232
    iput-object p2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 233
    iput-object p3, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 234
    iput p4, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustedDetailsVersion:I

    .line 235
    iput p4, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->publishedDetailsVersion:I

    .line 236
    iput-object p5, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustLevel:Lio/olvid/engine/datatypes/TrustLevel;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 566
    iput-wide v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    .line 240
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    :try_start_0
    const-string p1, "identity"

    .line 242
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    const-string p1, "owned_identity"

    .line 243
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "trusted_details_version"

    .line 247
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustedDetailsVersion:I

    const-string p1, "published_details_version"

    .line 248
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->publishedDetailsVersion:I

    const-string p1, "trust_level"

    .line 249
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/TrustLevel;->of(Ljava/lang/String;)Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustLevel:Lio/olvid/engine/datatypes/TrustLevel;

    return-void

    .line 245
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;Lio/olvid/engine/datatypes/containers/TrustOrigin;)Lio/olvid/engine/identity/databases/ContactIdentity;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    invoke-static {p0, p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 216
    new-instance v7, Lio/olvid/engine/identity/databases/ContactIdentity;

    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getVersion()I

    move-result v5

    new-instance v6, Lio/olvid/engine/datatypes/TrustLevel;

    const/4 p3, 0x0

    invoke-direct {v6, p3, p3}, Lio/olvid/engine/datatypes/TrustLevel;-><init>(II)V

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/identity/databases/ContactIdentity;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;ILio/olvid/engine/datatypes/TrustLevel;)V

    .line 217
    invoke-virtual {v7}, Lio/olvid/engine/identity/databases/ContactIdentity;->insert()V

    .line 218
    invoke-static {p0, p1, p2, p4}, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)Lio/olvid/engine/identity/databases/ContactTrustOrigin;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 223
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->getTrustLevel()Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object p0

    invoke-direct {v7, p0}, Lio/olvid/engine/identity/databases/ContactIdentity;->setTrustLevel(Lio/olvid/engine/datatypes/TrustLevel;)V

    return-object v7

    :cond_1
    const-string p0, "Error create contactTrustOrigin in ContactIdentity.create()"

    .line 220
    invoke-static {p0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 221
    new-instance p0, Ljava/sql/SQLException;

    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    throw p0

    :cond_2
    const-string p0, "Error create contactIdentityDetails in ContactIdentity.create()"

    .line 213
    invoke-static {p0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 214
    new-instance p0, Ljava/sql/SQLException;

    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    throw p0

    :cond_3
    const-string p0, "Calling ContactIdentity.create() outside a transaction"

    .line 208
    invoke-static {p0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 209
    new-instance p0, Ljava/sql/SQLException;

    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
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

    .line 258
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS contact_identity (identity BLOB NOT NULL, owned_identity BLOB NOT NULL, trusted_details_version INT NOT NULL, published_details_version INT NOT NULL, trust_level TEXT NOT NULL,  CONSTRAINT PK_contact_identity PRIMARY KEY(identity, owned_identity),  FOREIGN KEY (owned_identity) REFERENCES owned_identity(identity) ON DELETE CASCADE,  FOREIGN KEY (identity, owned_identity, trusted_details_version) REFERENCES contact_identity_details(contact_identity, owned_identity, version),  FOREIGN KEY (identity, owned_identity, published_details_version) REFERENCES contact_identity_details(contact_identity, owned_identity, version));"

    .line 259
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 270
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 258
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 270
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

.method public static get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    .line 493
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM contact_identity WHERE identity = ? AND owned_identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 494
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 495
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 496
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 497
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 498
    new-instance p2, Lio/olvid/engine/identity/databases/ContactIdentity;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/identity/databases/ContactIdentity;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 502
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 503
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 502
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 503
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 496
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_6

    .line 502
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    .line 493
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 503
    :try_start_8
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static getAll(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/identity/databases/ContactIdentity;
    .locals 4

    const/4 v0, 0x0

    .line 507
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM contact_identity WHERE owned_identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 508
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 509
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 510
    :try_start_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 511
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 512
    new-instance v3, Lio/olvid/engine/identity/databases/ContactIdentity;

    invoke-direct {v3, p0, p1}, Lio/olvid/engine/identity/databases/ContactIdentity;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/identity/databases/ContactIdentity;

    .line 514
    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/identity/databases/ContactIdentity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 515
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 516
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 509
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_3

    .line 515
    :try_start_6
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 507
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_4

    .line 516
    :try_start_9
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    new-array p0, v0, [Lio/olvid/engine/identity/databases/ContactIdentity;

    return-object p0
.end method

.method public static getAllWithoutDevices(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;)[Lio/olvid/engine/identity/databases/ContactIdentity;
    .locals 5

    const/4 v0, 0x0

    .line 522
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM contact_identity AS c WHERE NOT EXISTS ( SELECT 1 FROM contact_device WHERE contact_identity = c.identity AND owned_identity = c.owned_identity)"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 528
    :try_start_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 529
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 530
    new-instance v4, Lio/olvid/engine/identity/databases/ContactIdentity;

    invoke-direct {v4, p0, v2}, Lio/olvid/engine/identity/databases/ContactIdentity;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/identity/databases/ContactIdentity;

    .line 532
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/identity/databases/ContactIdentity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 533
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 534
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 527
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 533
    :try_start_6
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 522
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_4

    .line 534
    :try_start_9
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v2
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    new-array p0, v0, [Lio/olvid/engine/identity/databases/ContactIdentity;

    return-object p0
.end method

.method public static getSerializedPublishedDetails(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 540
    :try_start_0
    iget-object p0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT details.serialized_json_details FROM contact_identity AS contact  INNER JOIN contact_identity_details AS details  ON contact.owned_identity = details.owned_identity AND contact.identity = details.contact_identity AND contact.published_details_version = details.version WHERE contact.owned_identity = ?  AND contact.identity = ?;"

    invoke-virtual {p0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :try_start_1
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p0, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x2

    .line 550
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 551
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 552
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 553
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    .line 556
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_0
    if-eqz p0, :cond_1

    .line 557
    :try_start_4
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    return-object p2

    :cond_2
    if-eqz p1, :cond_3

    .line 556
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_3
    if-eqz p0, :cond_4

    .line 557
    :try_start_6
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    return-object v0

    :catchall_0
    move-exception p2

    .line 551
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_5

    .line 556
    :try_start_8
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    .line 540
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_6

    .line 557
    :try_start_b
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p2
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    return-object v0
.end method

.method private setTrustLevel(Lio/olvid/engine/datatypes/TrustLevel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE contact_identity SET trust_level = ?  WHERE identity = ?  AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 188
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/TrustLevel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 189
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 190
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 191
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 192
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustLevel:Lio/olvid/engine/datatypes/TrustLevel;

    .line 193
    iget-wide v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v3, 0x20

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    .line 194
    iget-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object p1, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 184
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 195
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
    throw v1
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, "INSERT INTO contact_identity VALUES (?,?,?,?,?);"

    const-string v4, "DROP TABLE old_contact_identity"

    const-string v5, "SELECT * FROM old_contact_identity"

    const-string v6, "ALTER TABLE contact_identity RENAME TO old_contact_identity"

    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x2

    move/from16 v0, p1

    if-ge v0, v10, :cond_9

    if-lt v2, v10, :cond_9

    .line 275
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object v7

    .line 276
    :try_start_0
    invoke-interface {v7, v6}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "CREATE TABLE IF NOT EXISTS contact_identity_details ( contact_identity BLOB NOT NULL,  owned_identity BLOB NOT NULL,  version INT NOT NULL,  serialized_json_details TEXT NOT NULL,  photo_url TEXT,  photo_server_label BLOB,  photo_server_key BLOB,  CONSTRAINT PK_contact_identity_details PRIMARY KEY(contact_identity, owned_identity, version));"

    .line 277
    invoke-interface {v7, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "CREATE TABLE IF NOT EXISTS contact_identity ( identity BLOB NOT NULL,  owned_identity BLOB NOT NULL,  trusted_details_version INT NOT NULL,  published_details_version INT NOT NULL,  encoded_trust_origins BLOB NOT NULL,  CONSTRAINT PK_contact_identity PRIMARY KEY(identity, owned_identity),  FOREIGN KEY (owned_identity) REFERENCES owned_identity(identity), FOREIGN KEY (identity, owned_identity, trusted_details_version) REFERENCES contact_identity_details(contact_identity, owned_identity, version), FOREIGN KEY (identity, owned_identity, published_details_version) REFERENCES contact_identity_details(contact_identity, owned_identity, version));"

    .line 286
    invoke-interface {v7, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 296
    new-instance v10, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v10}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 297
    invoke-interface {v7, v5}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 298
    :goto_0
    :try_start_1
    invoke-interface {v9}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 300
    :try_start_2
    invoke-interface {v9, v14}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v0

    invoke-interface {v12, v14, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 301
    invoke-interface {v9, v15}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v0

    invoke-interface {v12, v15, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 302
    invoke-interface {v12, v11, v8}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 303
    invoke-interface {v12, v13, v8}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v13, 0x5

    .line 304
    invoke-interface {v9, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v0

    invoke-interface {v12, v13, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 305
    invoke-interface {v12}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v12, :cond_0

    .line 306
    :try_start_3
    invoke-interface {v12}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    const-string v0, "INSERT INTO contact_identity_details VALUES (?,?,?,?,?, ?,?);"

    .line 307
    invoke-virtual {v1, v0}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 308
    :try_start_4
    invoke-interface {v9, v14}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v0

    invoke-interface {v12, v14, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 309
    invoke-interface {v9, v15}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v0

    invoke-interface {v12, v15, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 310
    invoke-interface {v12, v11, v8}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v13, "first_name"

    .line 312
    invoke-interface {v9, v11}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 314
    :try_start_5
    invoke-virtual {v10, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x4

    invoke-interface {v12, v13, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v13, 0x0

    const/4 v15, 0x5

    .line 320
    :try_start_6
    invoke-interface {v12, v15, v13}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v15, 0x6

    .line 321
    invoke-interface {v12, v15, v13}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v15, 0x7

    .line 322
    invoke-interface {v12, v15, v13}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 323
    invoke-interface {v12}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v12, :cond_1

    .line 324
    :goto_1
    :try_start_7
    invoke-interface {v12}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_2

    :catch_0
    move-exception v0

    .line 316
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v13, 0x4

    const/4 v15, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 307
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v12, :cond_2

    .line 324
    :try_start_a
    invoke-interface {v12}, Ljava/sql/PreparedStatement;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 299
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v12, :cond_3

    .line 306
    :try_start_d
    invoke-interface {v12}, Ljava/sql/PreparedStatement;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_e
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_4
    if-eqz v9, :cond_5

    .line 326
    :try_start_f
    invoke-interface {v9}, Ljava/sql/ResultSet;->close()V

    .line 327
    :cond_5
    invoke-interface {v7, v4}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-eqz v7, :cond_6

    .line 328
    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    :cond_6
    const/4 v0, 0x6

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 297
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    if-eqz v9, :cond_7

    .line 326
    :try_start_11
    invoke-interface {v9}, Ljava/sql/ResultSet;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_5

    :catchall_8
    move-exception v0

    move-object v3, v0

    :try_start_12
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :catchall_9
    move-exception v0

    move-object v1, v0

    .line 275
    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :catchall_a
    move-exception v0

    move-object v2, v0

    if-eqz v7, :cond_8

    .line 328
    :try_start_14
    invoke-interface {v7}, Ljava/sql/Statement;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_6

    :catchall_b
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    throw v2

    :cond_9
    :goto_7
    const/16 v7, 0x9

    if-ge v0, v7, :cond_23

    if-lt v2, v7, :cond_23

    .line 332
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 333
    :try_start_15
    invoke-interface {v2, v6}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "CREATE TABLE IF NOT EXISTS contact_identity ( identity BLOB NOT NULL,  owned_identity BLOB NOT NULL,  trusted_details_version INT NOT NULL,  published_details_version INT NOT NULL,  trust_level TEXT NOT NULL,  CONSTRAINT PK_contact_identity PRIMARY KEY(identity, owned_identity),  FOREIGN KEY (owned_identity) REFERENCES owned_identity(identity), FOREIGN KEY (identity, owned_identity, trusted_details_version) REFERENCES contact_identity_details(contact_identity, owned_identity, version), FOREIGN KEY (identity, owned_identity, published_details_version) REFERENCES contact_identity_details(contact_identity, owned_identity, version));"

    .line 334
    invoke-interface {v2, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "CREATE TABLE IF NOT EXISTS contact_trust_origin (row_id INTEGER PRIMARY KEY AUTOINCREMENT, contact_identity BLOB NOT NULL, owned_identity BLOB NOT NULL, timestamp INTEGER NOT NULL, trust_type INTEGER NOT NULL, mediator_or_group_owner_identity BLOB, mediator_or_group_owner_trust_level_major INTEGER, identity_server TEXT,  FOREIGN KEY (contact_identity, owned_identity ) REFERENCES contact_identity(identity, owned_identity) ON DELETE CASCADE);"

    .line 344
    invoke-interface {v2, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 354
    invoke-interface {v2, v5}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_24

    .line 355
    :goto_8
    :try_start_16
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_21

    if-eqz v0, :cond_1f

    .line 357
    :try_start_17
    new-instance v0, Lio/olvid/engine/encoder/Encoded;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v7

    invoke-direct {v0, v7}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    .line 359
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    array-length v7, v6
    :try_end_17
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_21

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_9
    if-ge v9, v7, :cond_1a

    :try_start_18
    aget-object v0, v6, v9
    :try_end_18
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_21

    .line 361
    :try_start_19
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 362
    array-length v10, v0

    if-nez v10, :cond_a

    move v15, v9

    const/4 v10, 0x2

    goto :goto_a

    .line 365
    :cond_a
    aget-object v10, v0, v8
    :try_end_19
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_21

    move v15, v9

    :try_start_1a
    invoke-virtual {v10}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v8
    :try_end_1a
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_21

    long-to-int v9, v8

    const-string v8, "INSERT INTO contact_trust_origin(contact_identity,owned_identity,timestamp,trust_type,mediator_or_group_owner_identity,mediator_or_group_owner_trust_level_major,identity_server) VALUES (?,?,?,?,?,?,?);"

    if-eqz v9, :cond_d

    if-eq v9, v14, :cond_c

    const/4 v10, 0x2

    move/from16 p2, v15

    if-eq v9, v10, :cond_b

    const/4 v10, 0x6

    const/4 v14, 0x7

    move v15, v13

    const/4 v13, 0x0

    goto/16 :goto_11

    :cond_b
    move v15, v13

    goto/16 :goto_10

    :cond_c
    move/from16 p2, v15

    goto :goto_d

    :cond_d
    const/4 v10, 0x2

    .line 368
    :try_start_1b
    array-length v9, v0

    if-eq v9, v10, :cond_e

    :goto_a
    move/from16 p2, v15

    :goto_b
    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v14, 0x7

    goto/16 :goto_1c

    .line 371
    :cond_e
    invoke-virtual {v1, v8}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v9
    :try_end_1b
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_21

    .line 372
    :try_start_1c
    invoke-interface {v5, v14}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v12

    invoke-interface {v9, v14, v12}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 373
    invoke-interface {v5, v10}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v12

    invoke-interface {v9, v10, v12}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 374
    aget-object v10, v0, v14
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_17

    move/from16 p2, v15

    :try_start_1d
    invoke-virtual {v10}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v14

    invoke-interface {v9, v11, v14, v15}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v10, 0x4

    const/4 v12, 0x1

    .line 375
    invoke-interface {v9, v10, v12}, Ljava/sql/PreparedStatement;->setInt(II)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_16

    const/4 v14, 0x0

    const/4 v15, 0x5

    .line 376
    :try_start_1e
    invoke-interface {v9, v15, v14}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v15, 0x6

    .line 377
    invoke-interface {v9, v15, v10}, Ljava/sql/PreparedStatement;->setNull(II)V

    const/4 v10, 0x7

    .line 378
    invoke-interface {v9, v10, v14}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_15

    .line 379
    :try_start_1f
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_16

    if-eqz v9, :cond_f

    .line 380
    :try_start_20
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V
    :try_end_20
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_21

    goto :goto_c

    :catch_1
    move v15, v13

    :catch_2
    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v14, 0x7

    goto/16 :goto_1b

    :cond_f
    :goto_c
    const/4 v9, 0x4

    if-ge v13, v9, :cond_10

    const/4 v15, 0x4

    goto :goto_e

    :cond_10
    :goto_d
    move v15, v13

    .line 385
    :goto_e
    :try_start_21
    array-length v9, v0

    if-eq v9, v11, :cond_11

    :goto_f
    move v13, v15

    goto :goto_b

    .line 388
    :cond_11
    invoke-virtual {v1, v8}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v9
    :try_end_21
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_21 .. :try_end_21} :catch_4
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    const/4 v10, 0x1

    .line 389
    :try_start_22
    invoke-interface {v5, v10}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v12

    invoke-interface {v9, v10, v12}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v13, 0x2

    .line 390
    invoke-interface {v5, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v12

    invoke-interface {v9, v13, v12}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 391
    aget-object v14, v0, v10

    invoke-virtual {v14}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v12

    invoke-interface {v9, v11, v12, v13}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v12, 0x4

    const/4 v13, 0x2

    .line 392
    invoke-interface {v9, v12, v13}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 393
    aget-object v14, v0, v13

    invoke-virtual {v14}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v13

    const/4 v14, 0x5

    invoke-interface {v9, v14, v13}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v13, 0x6

    .line 394
    invoke-interface {v9, v13, v12}, Ljava/sql/PreparedStatement;->setInt(II)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    const/4 v12, 0x7

    const/4 v13, 0x0

    .line 395
    :try_start_23
    invoke-interface {v9, v12, v13}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    .line 396
    :try_start_24
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    if-eqz v9, :cond_12

    .line 397
    :try_start_25
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V
    :try_end_25
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_25 .. :try_end_25} :catch_2
    .catchall {:try_start_25 .. :try_end_25} :catchall_21

    :cond_12
    const/4 v9, 0x2

    if-ge v15, v9, :cond_13

    const/4 v15, 0x2

    .line 402
    :cond_13
    :goto_10
    :try_start_26
    array-length v9, v0

    const/4 v12, 0x4

    if-eq v9, v12, :cond_14

    goto :goto_f

    .line 405
    :cond_14
    invoke-virtual {v1, v8}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8
    :try_end_26
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_26 .. :try_end_26} :catch_4
    .catchall {:try_start_26 .. :try_end_26} :catchall_21

    const/4 v9, 0x1

    .line 406
    :try_start_27
    invoke-interface {v5, v9}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v10, 0x2

    .line 407
    invoke-interface {v5, v10}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v12

    invoke-interface {v8, v10, v12}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 408
    aget-object v13, v0, v9

    invoke-virtual {v13}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v13

    invoke-interface {v8, v11, v13, v14}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v9, 0x4

    .line 409
    invoke-interface {v8, v9, v11}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 410
    aget-object v0, v0, v10

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v0

    const/4 v10, 0x5

    invoke-interface {v8, v10, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    const/4 v10, 0x6

    .line 411
    :try_start_28
    invoke-interface {v8, v10, v9}, Ljava/sql/PreparedStatement;->setInt(II)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    const/4 v13, 0x0

    const/4 v14, 0x7

    .line 412
    :try_start_29
    invoke-interface {v8, v14, v13}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 413
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    if-eqz v8, :cond_15

    .line 414
    :try_start_2a
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2a
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_2a .. :try_end_2a} :catch_3
    .catchall {:try_start_2a .. :try_end_2a} :catchall_21

    :cond_15
    const/4 v8, 0x2

    if-ge v15, v8, :cond_16

    const/4 v15, 0x2

    :catch_3
    :cond_16
    :goto_11
    move-object v8, v13

    goto/16 :goto_1b

    :catchall_c
    move-exception v0

    goto :goto_13

    :catchall_d
    move-exception v0

    goto :goto_12

    :catchall_e
    move-exception v0

    const/4 v10, 0x6

    :goto_12
    const/4 v13, 0x0

    const/4 v14, 0x7

    :goto_13
    move-object v9, v0

    .line 405
    :try_start_2b
    throw v9
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    :catchall_f
    move-exception v0

    move-object/from16 v16, v0

    if-eqz v8, :cond_17

    .line 414
    :try_start_2c
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception v0

    move-object v8, v0

    :try_start_2d
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17
    :goto_14
    throw v16
    :try_end_2d
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_2d .. :try_end_2d} :catch_3
    .catchall {:try_start_2d .. :try_end_2d} :catchall_21

    :catchall_11
    move-exception v0

    const/4 v10, 0x6

    goto :goto_15

    :catchall_12
    move-exception v0

    const/4 v10, 0x6

    const/4 v13, 0x0

    :goto_15
    const/4 v14, 0x7

    move-object v8, v0

    .line 388
    :try_start_2e
    throw v8
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_13

    :catchall_13
    move-exception v0

    move-object/from16 v16, v0

    if-eqz v9, :cond_18

    .line 397
    :try_start_2f
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_14

    goto :goto_16

    :catchall_14
    move-exception v0

    move-object v9, v0

    :try_start_30
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_16
    throw v16
    :try_end_30
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_30 .. :try_end_30} :catch_3
    .catchall {:try_start_30 .. :try_end_30} :catchall_21

    :catch_4
    const/4 v10, 0x6

    const/4 v14, 0x7

    const/4 v8, 0x0

    goto :goto_1b

    :catchall_15
    move-exception v0

    move-object v8, v14

    goto :goto_18

    :catchall_16
    move-exception v0

    goto :goto_17

    :catchall_17
    move-exception v0

    move/from16 p2, v15

    :goto_17
    const/4 v8, 0x0

    :goto_18
    const/4 v10, 0x6

    const/4 v14, 0x7

    move-object v15, v0

    .line 371
    :try_start_31
    throw v15
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_18

    :catchall_18
    move-exception v0

    move-object/from16 v16, v0

    if-eqz v9, :cond_19

    .line 380
    :try_start_32
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_19

    goto :goto_19

    :catchall_19
    move-exception v0

    move-object v9, v0

    :try_start_33
    invoke-virtual {v15, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    throw v16
    :try_end_33
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_33 .. :try_end_33} :catch_7
    .catchall {:try_start_33 .. :try_end_33} :catchall_21

    :catch_5
    move/from16 p2, v15

    goto :goto_1a

    :catch_6
    move/from16 p2, v9

    :goto_1a
    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v14, 0x7

    :catch_7
    move v15, v13

    :goto_1b
    move v13, v15

    :goto_1c
    add-int/lit8 v9, p2, 0x1

    const/4 v8, 0x0

    const/4 v14, 0x1

    goto/16 :goto_9

    :catch_8
    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v14, 0x7

    :catch_9
    const/4 v7, 0x1

    const/4 v9, 0x4

    const/4 v12, 0x5

    goto/16 :goto_23

    :cond_1a
    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v14, 0x7

    .line 421
    :try_start_34
    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6
    :try_end_34
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_34 .. :try_end_34} :catch_9
    .catchall {:try_start_34 .. :try_end_34} :catchall_21

    const/4 v7, 0x1

    .line 422
    :try_start_35
    invoke-interface {v5, v7}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v0

    invoke-interface {v6, v7, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v9, 0x2

    .line 423
    invoke-interface {v5, v9}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v0

    invoke-interface {v6, v9, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 424
    invoke-interface {v5, v11}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    invoke-interface {v6, v11, v0}, Ljava/sql/PreparedStatement;->setInt(II)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1e

    const/4 v9, 0x4

    .line 425
    :try_start_36
    invoke-interface {v5, v9}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    invoke-interface {v6, v9, v0}, Ljava/sql/PreparedStatement;->setInt(II)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1d

    if-ne v13, v9, :cond_1b

    :try_start_37
    const-string v0, "4.0"
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1b

    const/4 v12, 0x5

    .line 427
    :try_start_38
    invoke-interface {v6, v12, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1a

    const/4 v15, 0x2

    goto :goto_1e

    :catchall_1a
    move-exception v0

    goto :goto_1d

    :catchall_1b
    move-exception v0

    const/4 v12, 0x5

    :goto_1d
    move-object v13, v0

    const/4 v15, 0x2

    goto :goto_21

    :cond_1b
    const/4 v12, 0x5

    const/4 v15, 0x2

    if-ne v13, v15, :cond_1c

    :try_start_39
    const-string v0, "2.4"

    .line 429
    invoke-interface {v6, v12, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_1e

    :cond_1c
    const-string v0, "0.0"

    .line 431
    invoke-interface {v6, v12, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 433
    :goto_1e
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1c

    if-eqz v6, :cond_1e

    .line 434
    :try_start_3a
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3a
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_3a .. :try_end_3a} :catch_b
    .catchall {:try_start_3a .. :try_end_3a} :catchall_21

    goto :goto_24

    :catchall_1c
    move-exception v0

    goto :goto_20

    :catchall_1d
    move-exception v0

    goto :goto_1f

    :catchall_1e
    move-exception v0

    const/4 v9, 0x4

    :goto_1f
    const/4 v12, 0x5

    const/4 v15, 0x2

    :goto_20
    move-object v13, v0

    .line 421
    :goto_21
    :try_start_3b
    throw v13
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1f

    :catchall_1f
    move-exception v0

    move-object/from16 v16, v0

    if-eqz v6, :cond_1d

    .line 434
    :try_start_3c
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_20

    goto :goto_22

    :catchall_20
    move-exception v0

    move-object v6, v0

    :try_start_3d
    invoke-virtual {v13, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_22
    throw v16
    :try_end_3d
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_3d .. :try_end_3d} :catch_b
    .catchall {:try_start_3d .. :try_end_3d} :catchall_21

    :catch_a
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x6

    const/4 v12, 0x5

    const/4 v14, 0x7

    :goto_23
    const/4 v15, 0x2

    :catch_b
    :cond_1e
    :goto_24
    const/4 v8, 0x0

    const/4 v14, 0x1

    goto/16 :goto_8

    :cond_1f
    if-eqz v5, :cond_20

    .line 437
    :try_start_3e
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V

    .line 438
    :cond_20
    invoke-interface {v2, v4}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_24

    if-eqz v2, :cond_23

    .line 439
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    goto :goto_27

    :catchall_21
    move-exception v0

    move-object v1, v0

    .line 354
    :try_start_3f
    throw v1
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_22

    :catchall_22
    move-exception v0

    move-object v3, v0

    if-eqz v5, :cond_21

    .line 437
    :try_start_40
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_23

    goto :goto_25

    :catchall_23
    move-exception v0

    move-object v4, v0

    :try_start_41
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21
    :goto_25
    throw v3
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_24

    :catchall_24
    move-exception v0

    move-object v1, v0

    .line 332
    :try_start_42
    throw v1
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_25

    :catchall_25
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_22

    .line 439
    :try_start_43
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_26

    goto :goto_26

    :catchall_26
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_26
    throw v3

    :cond_23
    :goto_27
    return-void
.end method


# virtual methods
.method public addTrustOrigin(Lio/olvid/engine/datatypes/containers/TrustOrigin;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, v2, p1}, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)Lio/olvid/engine/identity/databases/ContactTrustOrigin;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->getTrustLevel()Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustLevel:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/databases/ContactIdentity;->setTrustLevel(Lio/olvid/engine/datatypes/TrustLevel;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "Error create contactTrustOrigin in ContactIdentity.addTrustOrigin()"

    .line 174
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 175
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1

    :cond_2
    const-string p1, "Calling ContactIdentity.addTrustOrigin() outside a transaction"

    .line 168
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 169
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public delete()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 467
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM contact_identity WHERE identity = ?  AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 470
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 471
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v0, v3, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 472
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 473
    iget-wide v4, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v6, 0x2

    or-long/2addr v4, v6

    iput-wide v4, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    .line 474
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 476
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM contact_identity_details WHERE contact_identity = ?  AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 479
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 480
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 481
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 482
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 476
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 482
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

    .line 467
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v0, :cond_3

    .line 475
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
    const-string v0, "Running ContactIdentity delete outside a transaction"

    .line 464
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/sql/SQLException;

    invoke-direct {v0}, Ljava/sql/SQLException;-><init>()V

    throw v0
.end method

.method public getDeviceUids()[Lio/olvid/engine/datatypes/UID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, v2}, Lio/olvid/engine/identity/databases/ContactDevice;->getAll(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/identity/databases/ContactDevice;

    move-result-object v0

    .line 72
    array-length v1, v0

    new-array v1, v1, [Lio/olvid/engine/datatypes/UID;

    const/4 v2, 0x0

    .line 73
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 74
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/olvid/engine/identity/databases/ContactDevice;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getPublishedDetails()Lio/olvid/engine/identity/databases/ContactIdentityDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    iget v3, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->publishedDetailsVersion:I

    invoke-static {v0, v1, v2, v3}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    move-result-object v0

    return-object v0
.end method

.method public getPublishedDetailsVersion()I
    .locals 1

    .line 61
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->publishedDetailsVersion:I

    return v0
.end method

.method public getTrustLevel()Lio/olvid/engine/datatypes/TrustLevel;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustLevel:Lio/olvid/engine/datatypes/TrustLevel;

    return-object v0
.end method

.method public getTrustedDetails()Lio/olvid/engine/identity/databases/ContactIdentityDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    iget v3, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustedDetailsVersion:I

    invoke-static {v0, v1, v2, v3}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    move-result-object v0

    return-object v0
.end method

.method public getTrustedDetailsVersion()I
    .locals 1

    .line 57
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustedDetailsVersion:I

    return v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO contact_identity VALUES (?,?,?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 446
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 447
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 448
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustedDetailsVersion:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x4

    .line 449
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->publishedDetailsVersion:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x5

    .line 453
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustLevel:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/TrustLevel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 454
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 455
    iget-wide v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v3, 0x1

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    .line 456
    iget-wide v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v3, 0x20

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    .line 457
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 458
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 445
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 458
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
.end method

.method public setDetailsPhotoUrl(I[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, v2, p1}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 148
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 151
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

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

    .line 152
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 155
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 156
    :try_start_0
    array-length v4, p2

    invoke-virtual {v1, p2, v2, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 160
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->setPhotoUrl(Ljava/lang/String;)V

    .line 161
    iput p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->hookPhotoSetVersion:I

    .line 162
    iget-wide p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    .line 163
    iget-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object p1, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V

    return-void

    :catchall_0
    move-exception p1

    .line 155
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 157
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

.method public trustPublishedDetails()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 121
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustedDetailsVersion:I

    iget v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->publishedDetailsVersion:I

    if-ne v0, v1, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE contact_identity SET trusted_details_version = ?  WHERE identity = ?  AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 128
    :try_start_0
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->publishedDetailsVersion:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x2

    .line 129
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 130
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 131
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 132
    iget v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->publishedDetailsVersion:I

    iput v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustedDetailsVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 134
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/ContactIdentity;->getTrustedDetails()Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getJsonIdentityDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->hookTrustedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    .line 135
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    .line 136
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V

    return-void

    :catchall_0
    move-exception v1

    .line 124
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 133
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

.method public updatePublishedDetails(Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 92
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getVersion()I

    move-result v0

    iget v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->publishedDetailsVersion:I

    if-gt v0, v1, :cond_0

    goto/16 :goto_1

    .line 95
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, v2, p1}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    move-result-object p1

    .line 96
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/ContactIdentity;->getPublishedDetails()Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getPhotoServerLabel()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getPhotoServerKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getPhotoServerLabel()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getPhotoServerLabel()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getPhotoServerKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v1

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getPhotoServerKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->setPhotoUrl(Ljava/lang/String;)V

    .line 106
    :cond_1
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE contact_identity SET published_details_version = ?  WHERE identity = ?  AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 110
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getVersion()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x2

    .line 111
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 112
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 113
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 114
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getVersion()I

    move-result p1

    iput p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->publishedDetailsVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 115
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 116
    :cond_2
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    .line 117
    iget-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object p1, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V

    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 115
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

    .line 578
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-string v2, "owned_identity"

    const-string v3, "contact_identity"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 579
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 580
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v6, "identity_manager_notification_new_contact_identity"

    invoke-interface {v1, v6, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 584
    :cond_0
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v6, 0x2

    and-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 586
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v6, "identity_manager_notification_contact_identity_deleted"

    invoke-interface {v1, v6, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 590
    :cond_1
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v6, 0x8

    and-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    .line 591
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 592
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v6, "identity_manager_notification_new_contact_published_details"

    invoke-interface {v1, v6, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 596
    :cond_2
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v6, 0x4

    and-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3

    .line 597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 598
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->hookTrustedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    const-string v6, "identity_details"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v6, "identity_manager_notification_contact_trusted_details_updated"

    invoke-interface {v1, v6, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 603
    :cond_3
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v6, 0x10

    and-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-eqz v6, :cond_5

    .line 604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 605
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->hookPhotoSetVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "version"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->hookPhotoSetVersion:I

    iget v6, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustedDetailsVersion:I

    if-ne v1, v6, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v6, "is_trusted"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v6, "identity_manager_notification_contact_photo_set"

    invoke-interface {v1, v6, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 611
    :cond_5
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    const-wide/16 v6, 0x20

    and-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-eqz v6, :cond_6

    .line 612
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 613
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->trustLevel:Lio/olvid/engine/datatypes/TrustLevel;

    const-string v2, "trust_level"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v2, "identity_manager_notification_contact_trust_level_increased"

    invoke-interface {v1, v2, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 618
    :cond_6
    iput-wide v4, p0, Lio/olvid/engine/identity/databases/ContactIdentity;->commitHookBits:J

    return-void
.end method
