.class public Lio/olvid/engine/identity/databases/ContactTrustOrigin;
.super Ljava/lang/Object;
.source "ContactTrustOrigin.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final CONTACT_IDENTITY:Ljava/lang/String; = "contact_identity"

.field static final IDENTITY_SERVER:Ljava/lang/String; = "identity_server"

.field static final MEDIATOR_OR_GROUP_OWNER_IDENTITY:Ljava/lang/String; = "mediator_or_group_owner_identity"

.field static final MEDIATOR_OR_GROUP_OWNER_TRUST_LEVEL_MAJOR:Ljava/lang/String; = "mediator_or_group_owner_trust_level_major"

.field static final OWNED_IDENTITY:Ljava/lang/String; = "owned_identity"

.field static final ROW_ID:Ljava/lang/String; = "row_id"

.field static final TABLE_NAME:Ljava/lang/String; = "contact_trust_origin"

.field static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field static final TRUST_TYPE:Ljava/lang/String; = "trust_type"

.field private static final TRUST_TYPE_DIRECT:I = 0x1

.field private static final TRUST_TYPE_GROUP:I = 0x3

.field private static final TRUST_TYPE_IDENTITY_SERVER:I = 0x4

.field private static final TRUST_TYPE_INTRODUCTION:I = 0x2


# instance fields
.field private contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

.field private identityServer:Ljava/lang/String;

.field private mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

.field private mediatorOrGroupOwnerTrustLevelMajor:Ljava/lang/Integer;

.field private ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private rowId:J

.field private timestamp:J

.field private trustType:I


# direct methods
.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;JILio/olvid/engine/datatypes/Identity;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 205
    iput-object p2, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 206
    iput-object p3, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 207
    iput-wide p4, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->timestamp:J

    .line 208
    iput p6, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->trustType:I

    .line 209
    iput-object p7, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 210
    iput-object p8, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerTrustLevelMajor:Ljava/lang/Integer;

    .line 211
    iput-object p9, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->identityServer:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "row_id"

    .line 216
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->rowId:J

    .line 217
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    :try_start_0
    const-string p1, "contact_identity"

    .line 219
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    const-string p1, "owned_identity"

    .line 220
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    const-string p1, "mediator_or_group_owner_identity"

    .line 221
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 223
    iput-object v0, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string p1, "timestamp"

    .line 230
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->timestamp:J

    const-string p1, "trust_type"

    .line 231
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->trustType:I

    const-string p1, "mediator_or_group_owner_trust_level_major"

    .line 232
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerTrustLevelMajor:Ljava/lang/Integer;

    .line 233
    invoke-interface {p2}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    iput-object v0, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerTrustLevelMajor:Ljava/lang/Integer;

    :cond_1
    const-string p1, "identity_server"

    .line 236
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->identityServer:Ljava/lang/String;

    return-void

    .line 228
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)Lio/olvid/engine/identity/databases/ContactTrustOrigin;
    .locals 12

    const/4 v10, 0x0

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    if-nez p3, :cond_0

    goto :goto_2

    .line 167
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    return-object v10

    :cond_1
    const/4 v0, 0x3

    .line 175
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->getMediatorOrGroupOwnerIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    move-object v7, v1

    const/4 v6, 0x3

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->getMediatorOrGroupOwnerIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    move-object v7, v0

    const/4 v6, 0x2

    goto :goto_0

    :cond_3
    move-object v7, v10

    const/4 v6, 0x1

    :goto_0
    const/4 v9, 0x0

    if-eqz v7, :cond_5

    .line 188
    invoke-static {p0, v7, p2}, Lio/olvid/engine/identity/databases/ContactIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v10

    .line 192
    :cond_4
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactIdentity;->getTrustLevel()Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object v0

    iget v0, v0, Lio/olvid/engine/datatypes/TrustLevel;->major:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_5
    move-object v8, v10

    .line 195
    :goto_1
    new-instance v11, Lio/olvid/engine/identity/databases/ContactTrustOrigin;

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->getTimestamp()J

    move-result-wide v4

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lio/olvid/engine/identity/databases/ContactTrustOrigin;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;JILio/olvid/engine/datatypes/Identity;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v11}, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    :cond_6
    :goto_2
    return-object v10
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS contact_trust_origin (row_id INTEGER PRIMARY KEY AUTOINCREMENT, contact_identity BLOB NOT NULL, owned_identity BLOB NOT NULL, timestamp INTEGER NOT NULL, trust_type INTEGER NOT NULL, mediator_or_group_owner_identity BLOB, mediator_or_group_owner_trust_level_major INTEGER, identity_server TEXT,  FOREIGN KEY (contact_identity, owned_identity) REFERENCES contact_identity(identity, owned_identity) ON DELETE CASCADE);"

    .line 84
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 83
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 94
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

.method public static getAll(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/identity/databases/ContactTrustOrigin;
    .locals 3

    const/4 v0, 0x0

    .line 244
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM contact_trust_origin WHERE contact_identity = ?  AND owned_identity = ? ORDER BY timestamp DESC;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 248
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 249
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 250
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 251
    :try_start_2
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 252
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    new-instance v2, Lio/olvid/engine/identity/databases/ContactTrustOrigin;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/identity/databases/ContactTrustOrigin;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/identity/databases/ContactTrustOrigin;

    .line 255
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/identity/databases/ContactTrustOrigin;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 256
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 257
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 250
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_3

    .line 256
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

    .line 244
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_4

    .line 257
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
    new-array p0, v0, [Lio/olvid/engine/identity/databases/ContactTrustOrigin;

    return-object p0
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xc

    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string p1, "DELETE FROM contact_trust_origin AS p  WHERE NOT EXISTS ( SELECT 1 FROM contact_identity  WHERE identity = p.contact_identity AND owned_identity = p.owned_identity )"

    .line 100
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 106
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 99
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_0

    .line 106
    :try_start_2
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM contact_trust_origin WHERE row_id = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 150
    :try_start_0
    iget-wide v2, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->rowId:J

    invoke-interface {v0, v1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 151
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 148
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 152
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

.method getTrustLevel()Lio/olvid/engine/datatypes/TrustLevel;
    .locals 2

    .line 50
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->trustType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    invoke-static {}, Lio/olvid/engine/datatypes/TrustLevel;->createServer()Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object v0

    return-object v0

    .line 55
    :cond_1
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerTrustLevelMajor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/TrustLevel;->createIndirect(I)Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object v0

    return-object v0

    .line 52
    :cond_2
    invoke-static {}, Lio/olvid/engine/datatypes/TrustLevel;->createDirect()Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object v0

    return-object v0
.end method

.method public getTrustOrigin()Lio/olvid/engine/datatypes/containers/TrustOrigin;
    .locals 3

    .line 64
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->trustType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->timestamp:J

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, v2}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createGroupTrustOrigin(JLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->timestamp:J

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, v2}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createIntroductionTrustOrigin(JLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v0

    return-object v0

    .line 66
    :cond_2
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->timestamp:J

    invoke-static {v0, v1}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createDirectTrustOrigin(J)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v0

    return-object v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const/4 v1, 0x1

    const-string v2, "INSERT INTO contact_trust_origin(contact_identity, owned_identity, timestamp, trust_type, mediator_or_group_owner_identity, mediator_or_group_owner_trust_level_major, identity_server)  VALUES (?,?,?,?,?, ?,?);"

    invoke-virtual {v0, v2, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 123
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v2, 0x2

    .line 124
    iget-object v3, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v2, 0x3

    .line 125
    iget-wide v3, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->timestamp:J

    invoke-interface {v0, v2, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 126
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->trustType:I

    const/4 v3, 0x4

    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 127
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    const/4 v4, 0x5

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 128
    invoke-interface {v0, v4, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 132
    :goto_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerTrustLevelMajor:Ljava/lang/Integer;

    const/4 v4, 0x6

    if-nez v2, :cond_1

    .line 133
    invoke-interface {v0, v4, v3}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_1

    .line 135
    :cond_1
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->mediatorOrGroupOwnerTrustLevelMajor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v4, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    :goto_1
    const/4 v2, 0x7

    .line 137
    iget-object v3, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->identityServer:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 138
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 139
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v2

    .line 140
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->rowId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    .line 143
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 114
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_4

    .line 143
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v2
.end method

.method public wasCommitted()V
    .locals 0

    return-void
.end method
