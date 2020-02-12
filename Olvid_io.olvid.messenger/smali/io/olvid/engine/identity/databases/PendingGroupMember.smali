.class public Lio/olvid/engine/identity/databases/PendingGroupMember;
.super Ljava/lang/Object;
.source "PendingGroupMember.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final CONTACT_DISPLAY_NAME:Ljava/lang/String; = "contact_display_name"

.field static final CONTACT_IDENTITY:Ljava/lang/String; = "contact_identity"

.field static final DECLINED:Ljava/lang/String; = "declined"

.field static final GROUP_OWNER_AND_UID:Ljava/lang/String; = "group_owner_and_uid"

.field private static HOOK_BIT_DECLINED_TOGGLED:J = 0x4L

.field private static HOOK_BIT_DELETED:J = 0x2L

.field private static HOOK_BIT_INSERTED:J = 0x1L

.field static final OWNED_IDENTITY:Ljava/lang/String; = "owned_identity"

.field static final TABLE_NAME:Ljava/lang/String; = "pending_group_member"


# instance fields
.field private commitHookBits:J

.field private contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private contactSerializedDetails:Ljava/lang/String;

.field private declined:Z

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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 268
    iput-wide v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->commitHookBits:J

    .line 75
    iput-object p1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    const-string p1, "group_owner_and_uid"

    .line 76
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->groupOwnerAndUid:[B

    :try_start_0
    const-string p1, "owned_identity"

    .line 78
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    const-string p1, "contact_identity"

    .line 79
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "contact_display_name"

    .line 83
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactSerializedDetails:Ljava/lang/String;

    const-string p1, "declined"

    .line 84
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->declined:Z

    return-void

    .line 81
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 268
    iput-wide v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->commitHookBits:J

    .line 66
    iput-object p1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 67
    iput-object p2, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->groupOwnerAndUid:[B

    .line 68
    iput-object p3, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 69
    iput-object p4, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 70
    iput-object p5, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactSerializedDetails:Ljava/lang/String;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->declined:Z

    return-void
.end method

.method public static create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)Lio/olvid/engine/identity/databases/PendingGroupMember;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    :try_start_0
    new-instance v7, Lio/olvid/engine/identity/databases/PendingGroupMember;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/identity/databases/PendingGroupMember;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v7}, Lio/olvid/engine/identity/databases/PendingGroupMember;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

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

    .line 90
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS pending_group_member (group_owner_and_uid BLOB NOT NULL, owned_identity BLOB NOT NULL, contact_identity BLOB NOT NULL, contact_display_name TEXT NOT NULL, declined BIT NOT NULL, CONSTRAINT PK_pending_group_member PRIMARY KEY(group_owner_and_uid, owned_identity, contact_identity), FOREIGN KEY (group_owner_and_uid,owned_identity) REFERENCES contact_group(group_owner_and_uid,owned_identity) ON DELETE CASCADE);"

    .line 91
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 99
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 90
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 99
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

.method public static get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/PendingGroupMember;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_0

    goto :goto_2

    .line 200
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM pending_group_member WHERE group_owner_and_uid = ? AND owned_identity = ? AND contact_identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 201
    :try_start_0
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 202
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x3

    .line 203
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 204
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 205
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 206
    new-instance p2, Lio/olvid/engine/identity/databases/PendingGroupMember;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/identity/databases/PendingGroupMember;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 210
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 211
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 210
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 211
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 204
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_6

    .line 210
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

    .line 200
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 211
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

.method public static getDeclinedPendingMembersInGroup(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/Identity;
    .locals 3

    const/4 v0, 0x0

    .line 180
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM pending_group_member WHERE group_owner_and_uid = ? AND owned_identity = ? AND declined = 1;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 181
    :try_start_1
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 182
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 183
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 184
    :try_start_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    new-instance v2, Lio/olvid/engine/identity/databases/PendingGroupMember;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/identity/databases/PendingGroupMember;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V

    .line 187
    iget-object v2, v2, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/datatypes/Identity;

    .line 189
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/datatypes/Identity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 190
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 191
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 183
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_3

    .line 190
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
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 180
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_4

    .line 191
    :try_start_9
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    new-array p0, v0, [Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method public static getGroupOwnerAndUidOfGroupsWhereContactIsPending(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 218
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM pending_group_member WHERE contact_identity = ?  AND owned_identity = ?  AND group_owner_and_uid IN (SELECT group_owner_and_uid FROM contact_group WHERE owned_identity = ? AND group_owner IS NULL);"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 224
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 225
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x3

    .line 226
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 227
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 228
    :try_start_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    new-instance v2, Lio/olvid/engine/identity/databases/PendingGroupMember;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/identity/databases/PendingGroupMember;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V

    .line 231
    invoke-virtual {v2}, Lio/olvid/engine/identity/databases/PendingGroupMember;->getGroupOwnerAndUid()[B

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array p0, v0, [[B

    .line 233
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 234
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    if-eqz v1, :cond_3

    .line 235
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    .line 227
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_4

    .line 234
    :try_start_6
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 218
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_5

    .line 235
    :try_start_9
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    new-array p0, v0, [[B

    return-object p0

    :cond_6
    :goto_3
    new-array p0, v0, [[B

    return-object p0
.end method

.method public static getPendingMembersInGroup(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;
    .locals 5

    const/4 v0, 0x0

    .line 163
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM pending_group_member WHERE group_owner_and_uid = ? AND owned_identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 164
    :try_start_1
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 165
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 166
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 167
    :try_start_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    new-instance v2, Lio/olvid/engine/identity/databases/PendingGroupMember;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/identity/databases/PendingGroupMember;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V

    .line 170
    new-instance v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    iget-object v4, v2, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-object v2, v2, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactSerializedDetails:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 172
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 173
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 174
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 166
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_3

    .line 173
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
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 163
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_4

    .line 174
    :try_start_9
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    new-array p0, v0, [Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    return-object p0
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xb

    if-ge p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    .line 104
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 105
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIGRATING pending_group_member DATABASE FROM VERSION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 11"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    const-string p1, "DROP TABLE pending_group_member"

    .line 106
    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string p1, "CREATE TABLE pending_group_member (group_owner_and_uid BLOB NOT NULL, owned_identity BLOB NOT NULL, contact_identity BLOB NOT NULL, contact_display_name TEXT NOT NULL, declined BIT NOT NULL, CONSTRAINT PK_pending_group_member PRIMARY KEY(group_owner_and_uid, owned_identity, contact_identity), FOREIGN KEY (group_owner_and_uid,owned_identity) REFERENCES contact_group(group_owner_and_uid,owned_identity) ON DELETE CASCADE);"

    .line 107
    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    :cond_0
    const/16 p1, 0xb

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 104
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    .line 115
    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    :goto_1
    const/16 v0, 0xc

    if-ge p1, v0, :cond_4

    if-lt p2, v0, :cond_4

    .line 119
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_3
    const-string p1, "DELETE FROM pending_group_member AS p  WHERE NOT EXISTS ( SELECT 1 FROM contact_group  WHERE group_owner_and_uid = p.group_owner_and_uid AND owned_identity = p.owned_identity )"

    .line 120
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p0, :cond_4

    .line 126
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 119
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_3

    .line 126
    :try_start_5
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p2

    :cond_4
    :goto_3
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
    iget-object v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM pending_group_member WHERE group_owner_and_uid = ? AND owned_identity = ? AND contact_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 148
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 149
    iget-object v2, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 150
    iget-object v2, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 151
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 152
    iget-wide v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/identity/databases/PendingGroupMember;->HOOK_BIT_DELETED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->commitHookBits:J

    .line 153
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

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

.method public getContactIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getGroupOwnerAndUid()[B
    .locals 1

    .line 38
    iget-object v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->groupOwnerAndUid:[B

    return-object v0
.end method

.method public getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO pending_group_member VALUES (?,?,?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 134
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 135
    iget-object v2, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 136
    iget-object v2, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 137
    iget-object v2, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactSerializedDetails:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x5

    .line 138
    iget-boolean v2, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->declined:Z

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 139
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 140
    iget-wide v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/identity/databases/PendingGroupMember;->HOOK_BIT_INSERTED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->commitHookBits:J

    .line 141
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

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

    .line 133
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

.method public setDeclined(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE pending_group_member SET declined = ?  WHERE group_owner_and_uid = ?  AND owned_identity = ?  AND contact_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 251
    :try_start_0
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/4 v1, 0x2

    .line 252
    iget-object v2, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 253
    iget-object v2, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 254
    iget-object v2, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 255
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 256
    iput-boolean p1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->declined:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 258
    :cond_0
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/identity/databases/PendingGroupMember;->HOOK_BIT_DECLINED_TOGGLED:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->commitHookBits:J

    .line 259
    iget-object p1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object p1, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V

    return-void

    :catchall_0
    move-exception p1

    .line 246
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 257
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

.method public wasCommitted()V
    .locals 10

    .line 275
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/identity/databases/PendingGroupMember;->HOOK_BIT_INSERTED:J

    and-long/2addr v0, v2

    const-string v2, "contact_serialized_details"

    const-string v3, "contact_identity"

    const-string v4, "owned_identity"

    const-string v5, "group_uid"

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_0

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->groupOwnerAndUid:[B

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactSerializedDetails:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v8, "identity_manager_notification_pending_group_member_added"

    invoke-interface {v1, v8, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 283
    :cond_0
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->commitHookBits:J

    sget-wide v8, Lio/olvid/engine/identity/databases/PendingGroupMember;->HOOK_BIT_DELETED:J

    and-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-eqz v8, :cond_1

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->groupOwnerAndUid:[B

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactSerializedDetails:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v2, "identity_manager_notification_pending_group_member_removed"

    invoke-interface {v1, v2, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 291
    :cond_1
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->commitHookBits:J

    sget-wide v8, Lio/olvid/engine/identity/databases/PendingGroupMember;->HOOK_BIT_DECLINED_TOGGLED:J

    and-long/2addr v0, v8

    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 293
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->groupOwnerAndUid:[B

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-boolean v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->declined:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "declined"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v1, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v2, "identity_manager_notification_pending_group_member_declined_toggled"

    invoke-interface {v1, v2, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 299
    :cond_2
    iput-wide v6, p0, Lio/olvid/engine/identity/databases/PendingGroupMember;->commitHookBits:J

    return-void
.end method
