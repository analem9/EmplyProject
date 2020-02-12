.class public Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;
.super Ljava/lang/Object;
.source "ContactGroupMembersJoin.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final CONTACT_IDENTITY:Ljava/lang/String; = "contact_identity"

.field static final GROUP_OWNER_AND_UID:Ljava/lang/String; = "group_owner_and_uid"

.field private static HOOK_BIT_DELETED:J = 0x2L

.field private static HOOK_BIT_INSERTED:J = 0x1L

.field static final OWNED_IDENTITY:Ljava/lang/String; = "owned_identity"

.field static final TABLE_NAME:Ljava/lang/String; = "contact_group_members_join"


# instance fields
.field private commitHookBits:J

.field private contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private groupOwnerAndUid:[B

.field private final identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

.field private ownedIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 264
    iput-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->commitHookBits:J

    .line 61
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    const-string p1, "group_owner_and_uid"

    .line 62
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->groupOwnerAndUid:[B

    :try_start_0
    const-string p1, "owned_identity"

    .line 64
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    const-string p1, "contact_identity"

    .line 65
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->contactIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 67
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 264
    iput-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->commitHookBits:J

    .line 54
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 55
    iput-object p2, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->groupOwnerAndUid:[B

    .line 56
    iput-object p3, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 57
    iput-object p4, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method

.method public static create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    :try_start_0
    new-instance v1, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    .line 46
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_1
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

    .line 77
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS contact_group_members_join (group_owner_and_uid BLOB NOT NULL, owned_identity BLOB NOT NULL, contact_identity BLOB NOT NULL,  CONSTRAINT PK_contact_group_members_join PRIMARY KEY(group_owner_and_uid, owned_identity, contact_identity),  FOREIGN KEY (group_owner_and_uid,owned_identity) REFERENCES contact_group(group_owner_and_uid,owned_identity) ON DELETE CASCADE,  FOREIGN KEY (contact_identity,owned_identity) REFERENCES contact_identity(identity,owned_identity) ON DELETE CASCADE);"

    .line 78
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 85
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 77
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 85
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

.method public static get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM contact_group_members_join WHERE group_owner_and_uid = ?  AND owned_identity = ?  AND contact_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 170
    :try_start_0
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 171
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x3

    .line 172
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 173
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 174
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 175
    new-instance p2, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 179
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-object p2

    :cond_2
    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 179
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_3
    if-eqz v0, :cond_4

    .line 180
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    .line 173
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_5

    .line 179
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

    .line 165
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_6

    .line 180
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

.method public static getContactIdentitiesInGroup(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/Identity;
    .locals 3

    const/4 v0, 0x0

    .line 217
    :try_start_0
    iget-object p0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT contact.identity FROM contact_group_members_join AS joiin  INNER JOIN contact_identity AS contact  ON contact.identity = joiin.contact_identity AND contact.owned_identity = joiin.owned_identity WHERE joiin.group_owner_and_uid = ? AND joiin.owned_identity = ?;"

    invoke-virtual {p0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    .line 223
    :try_start_1
    invoke-interface {p0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 224
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 225
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 226
    :try_start_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 229
    :try_start_3
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 231
    :try_start_4
    invoke-virtual {v2}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lio/olvid/engine/datatypes/Identity;

    .line 234
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lio/olvid/engine/datatypes/Identity;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_1

    .line 235
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_1
    if-eqz p0, :cond_2

    .line 236
    :try_start_6
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    return-object p2

    :catchall_0
    move-exception p2

    .line 225
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    .line 235
    :try_start_8
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    .line 217
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_4

    .line 236
    :try_start_b
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p2
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_1

    :catch_1
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    new-array p0, v0, [Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method public static getGroupOwnerAndUidsOfGroupsContainingContact(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM contact_group_members_join WHERE contact_identity = ? AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 244
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 245
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 246
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 247
    :try_start_1
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 248
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    new-instance v1, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;

    invoke-direct {v1, p0, p1}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V

    .line 250
    iget-object v1, v1, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->groupOwnerAndUid:[B

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [[B

    .line 252
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 253
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v0, :cond_2

    .line 254
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 246
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_3

    .line 253
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
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 243
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_4

    .line 254
    :try_start_7
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xb

    if-ge p1, v0, :cond_7

    if-lt p2, v0, :cond_7

    .line 90
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 91
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIGRATING contact_group_members_join DATABASE FROM VERSION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 11"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE contact_group_members_join RENAME TO old_contact_group_members_join"

    .line 92
    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string p1, "CREATE TABLE contact_group_members_join ( group_owner_and_uid BLOB NOT NULL,  owned_identity BLOB NOT NULL,  contact_identity BLOB NOT NULL,  CONSTRAINT PK_contact_group_members_join PRIMARY KEY(group_owner_and_uid, owned_identity, contact_identity),  FOREIGN KEY (group_owner_and_uid,owned_identity) REFERENCES contact_group(group_owner_and_uid,owned_identity) ON DELETE CASCADE,  FOREIGN KEY (contact_identity,owned_identity) REFERENCES contact_identity(identity,owned_identity) ON DELETE CASCADE);"

    .line 93
    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string p1, "SELECT * FROM old_contact_group_members_join"

    .line 100
    invoke-interface {v1, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 101
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "INSERT INTO contact_group_members_join VALUES (?,?,?)"

    .line 102
    invoke-virtual {p0, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v3, 0x1

    .line 103
    :try_start_2
    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v3, 0x2

    .line 104
    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v3, 0x3

    .line 105
    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 106
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 107
    :try_start_3
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 102
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v2, :cond_1

    .line 107
    :try_start_5
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_2
    if-eqz p1, :cond_3

    .line 109
    :try_start_7
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    :cond_3
    const-string p1, "DROP TABLE old_contact_group_members_join"

    .line 110
    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v1, :cond_4

    .line 111
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    :cond_4
    const/16 p1, 0xb

    goto :goto_4

    :catchall_3
    move-exception p0

    .line 100
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p1, :cond_5

    .line 109
    :try_start_9
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p0

    .line 90
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception p1

    if-eqz v1, :cond_6

    .line 111
    :try_start_c
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_3

    :catchall_8
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p1

    :cond_7
    :goto_4
    const/16 v0, 0xc

    if-ge p1, v0, :cond_9

    if-lt p2, v0, :cond_9

    .line 115
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_d
    const-string p1, "DELETE FROM contact_group_members_join AS p  WHERE NOT EXISTS ( SELECT 1 FROM contact_group  WHERE group_owner_and_uid = p.group_owner_and_uid AND owned_identity = p.owned_identity )"

    .line 116
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string p1, "DELETE FROM contact_group_members_join AS p  WHERE NOT EXISTS ( SELECT 1 FROM contact_identity  WHERE identity = p.contact_identity AND owned_identity = p.owned_identity )"

    .line 122
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-eqz p0, :cond_9

    .line 128
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_6

    :catchall_9
    move-exception p1

    .line 115
    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :catchall_a
    move-exception p2

    if-eqz p0, :cond_8

    .line 128
    :try_start_f
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    goto :goto_5

    :catchall_b
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw p2

    :cond_9
    :goto_6
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM contact_group_members_join WHERE group_owner_and_uid = ? AND owned_identity = ? AND contact_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 148
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 149
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 150
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 151
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 152
    iget-wide v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->HOOK_BIT_DELETED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->commitHookBits:J

    .line 153
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 147
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 154
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

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO contact_group_members_join VALUES (?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 136
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 137
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 138
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 139
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 140
    iget-wide v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->HOOK_BIT_INSERTED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->commitHookBits:J

    .line 141
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 135
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 142
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

.method public wasCommitted()V
    .locals 9

    .line 270
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->HOOK_BIT_INSERTED:J

    and-long/2addr v0, v2

    const-string v2, "contact_identity"

    const-string v3, "owned_identity"

    const-string v4, "group_uid"

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_0

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 272
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->groupOwnerAndUid:[B

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v7, "identity_manager_notification_group_member_added"

    invoke-interface {v1, v7, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 277
    :cond_0
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->commitHookBits:J

    sget-wide v7, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->HOOK_BIT_DELETED:J

    and-long/2addr v0, v7

    cmp-long v7, v0, v5

    if-eqz v7, :cond_1

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->groupOwnerAndUid:[B

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v2, "identity_manager_notification_group_member_removed"

    invoke-interface {v1, v2, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 284
    :cond_1
    iput-wide v5, p0, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->commitHookBits:J

    return-void
.end method
