.class public Lio/olvid/engine/identity/databases/OwnedDevice;
.super Ljava/lang/Object;
.source "OwnedDevice.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final IDENTITY:Ljava/lang/String; = "identity"

.field static final IS_CURRENT_DEVICE:Ljava/lang/String; = "is_current_device"

.field static final TABLE_NAME:Ljava/lang/String; = "owned_device"

.field static final UID_:Ljava/lang/String; = "uid"


# instance fields
.field private identity:Lio/olvid/engine/datatypes/Identity;

.field private final identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

.field private isCurrentDevice:Z

.field private uid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 81
    iput-object p2, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->uid:Lio/olvid/engine/datatypes/UID;

    .line 82
    iput-object p3, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 83
    iput-boolean p4, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->isCurrentDevice:Z

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 88
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->uid:Lio/olvid/engine/datatypes/UID;

    :try_start_0
    const-string p1, "identity"

    .line 90
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->identity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "is_current_device"

    .line 94
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->isCurrentDevice:Z

    return-void

    .line 92
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static createCurrentDevice(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/identity/databases/OwnedDevice;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 69
    :cond_0
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v1, p2}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 71
    :try_start_0
    new-instance p2, Lio/olvid/engine/identity/databases/OwnedDevice;

    const/4 v2, 0x1

    invoke-direct {p2, p0, v1, p1, v2}, Lio/olvid/engine/identity/databases/OwnedDevice;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)V

    .line 72
    invoke-virtual {p2}, Lio/olvid/engine/identity/databases/OwnedDevice;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    return-object v0
.end method

.method public static createOtherDevice(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedDevice;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 57
    :cond_0
    :try_start_0
    new-instance v1, Lio/olvid/engine/identity/databases/OwnedDevice;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/olvid/engine/identity/databases/OwnedDevice;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)V

    .line 58
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/OwnedDevice;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS owned_device (uid BLOB PRIMARY KEY, identity BLOB NOT NULL, is_current_device BIT NOT NULL, FOREIGN KEY (identity) REFERENCES owned_identity (identity) ON DELETE CASCADE);"

    .line 104
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 109
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 103
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 109
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

.method public static get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/identity/databases/OwnedDevice;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM owned_device WHERE uid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 139
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 140
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 141
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    new-instance v1, Lio/olvid/engine/identity/databases/OwnedDevice;

    invoke-direct {v1, p0, p1}, Lio/olvid/engine/identity/databases/OwnedDevice;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 146
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    if-eqz v0, :cond_1

    .line 147
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 146
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_3
    if-eqz v0, :cond_4

    .line 147
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    .line 140
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_5

    .line 146
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
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    .line 137
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_6

    .line 147
    :try_start_8
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p1
.end method

.method public static getAllDevicesOfIdentity(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/identity/databases/OwnedDevice;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM owned_device WHERE identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 188
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 189
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 190
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 191
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    new-instance v2, Lio/olvid/engine/identity/databases/OwnedDevice;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/identity/databases/OwnedDevice;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lio/olvid/engine/identity/databases/OwnedDevice;

    .line 194
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/identity/databases/OwnedDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 195
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v0, :cond_2

    .line 196
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 189
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    .line 195
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

    .line 186
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_4

    .line 196
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

.method public static getCurrentDeviceOfOwnedIdentity(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedDevice;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 156
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM owned_device WHERE identity = ? AND is_current_device = 1;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 159
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 160
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 161
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    new-instance v0, Lio/olvid/engine/identity/databases/OwnedDevice;

    invoke-direct {v0, p0, p1}, Lio/olvid/engine/identity/databases/OwnedDevice;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 166
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 167
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object v0

    :cond_3
    if-eqz p1, :cond_4

    .line 166
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 167
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 160
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_6

    .line 166
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
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    .line 156
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 167
    :try_start_8
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method public static getOtherDevicesOfOwnedIdentity(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/identity/databases/OwnedDevice;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM owned_device WHERE identity = ? AND is_current_device = 0;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 174
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 175
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 176
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 177
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    new-instance v2, Lio/olvid/engine/identity/databases/OwnedDevice;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/identity/databases/OwnedDevice;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lio/olvid/engine/identity/databases/OwnedDevice;

    .line 180
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/identity/databases/OwnedDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 181
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v0, :cond_2

    .line 182
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 175
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    .line 181
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

    .line 171
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_4

    .line 182
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

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM owned_device WHERE uid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 128
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 129
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 127
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 130
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

.method public getIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->identity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getOwnedIdentity()Lio/olvid/engine/identity/databases/OwnedIdentity;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->uid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public insert()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO owned_device VALUES (?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 118
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 119
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 120
    iget-boolean v2, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->isCurrentDevice:Z

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 121
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 117
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 122
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

.method public isCurrentDevice()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lio/olvid/engine/identity/databases/OwnedDevice;->isCurrentDevice:Z

    return v0
.end method

.method public wasCommitted()V
    .locals 0

    return-void
.end method
