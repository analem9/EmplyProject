.class public Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;
.super Ljava/lang/Object;
.source "RegisteredPushNotification.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification$RegisteredPushNotificationListener;
    }
.end annotation


# static fields
.field static final DEVICE_UID:Ljava/lang/String; = "device_uid"

.field static final EXTRA_INFO:Ljava/lang/String; = "extra_info"

.field private static HOOK_BIT_INSERT:J = 0x1L

.field static final IDENTITY:Ljava/lang/String; = "identity"

.field static final PUSH_NOTIFICATION_TYPE:Ljava/lang/String; = "push_notification_type"

.field static final TABLE_NAME:Ljava/lang/String; = "registered_push_notification"


# instance fields
.field private commitHookBits:J

.field private deviceUid:Lio/olvid/engine/datatypes/UID;

.field private extraInfo:Lio/olvid/engine/encoder/Encoded;

.field private final fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

.field private identity:Lio/olvid/engine/datatypes/Identity;

.field private pushNotificationType:B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 178
    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->commitHookBits:J

    .line 78
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    .line 79
    iput-object p2, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 80
    iput-object p3, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->deviceUid:Lio/olvid/engine/datatypes/UID;

    .line 81
    iput-byte p4, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->pushNotificationType:B

    .line 82
    iput-object p5, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 178
    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->commitHookBits:J

    .line 86
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    :try_start_0
    const-string p1, "identity"

    .line 88
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->identity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    .line 92
    :goto_0
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "device_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->deviceUid:Lio/olvid/engine/datatypes/UID;

    const-string p1, "push_notification_type"

    .line 93
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->pushNotificationType:B

    const-string p1, "extra_info"

    .line 94
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 95
    :cond_0
    new-instance p2, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p2, p1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method

.method public static create(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    if-eq p3, v1, :cond_1

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    return-object v0

    .line 68
    :cond_1
    :try_start_0
    new-instance v1, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    .line 69
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_2
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

    .line 138
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS registered_push_notification (identity BLOB PRIMARY KEY, device_uid BLOB NOT NULL, push_notification_type INT, extra_info BLOB);"

    .line 139
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 144
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 138
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 144
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

.method public static get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 105
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM registered_push_notification WHERE identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 106
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 107
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 108
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    new-instance v2, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 113
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 114
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object v2

    :cond_3
    if-eqz p1, :cond_4

    .line 113
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 114
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 107
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_6

    .line 113
    :try_start_8
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p0

    .line 105
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 114
    :try_start_b
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v1

    :try_start_c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v0
.end method

.method public static getAll(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)[Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;
    .locals 5

    const/4 v0, 0x0

    .line 121
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM registered_push_notification;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 123
    :try_start_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 124
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    new-instance v4, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;

    invoke-direct {v4, p0, v2}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;

    .line 127
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 128
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 129
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 122
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 128
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

    .line 121
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_4

    .line 129
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
    new-array p0, v0, [Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;

    return-object p0
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

    .line 165
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM registered_push_notification WHERE identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 166
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 167
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 165
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 168
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

.method public getDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getExtraInfo()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->identity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getPushNotificationType()B
    .locals 1

    .line 44
    iget-byte v0, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->pushNotificationType:B

    return v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO registered_push_notification VALUES(?,?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 153
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 154
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->deviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 155
    iget-byte v2, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->pushNotificationType:B

    and-int/lit16 v2, v2, 0xff

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x4

    .line 156
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 157
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 158
    iget-wide v1, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->HOOK_BIT_INSERT:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->commitHookBits:J

    .line 159
    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 152
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 160
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

.method public wasCommitted()V
    .locals 5

    .line 183
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->HOOK_BIT_INSERT:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 184
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->registeredPushNotificationListener:Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification$RegisteredPushNotificationListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->registeredPushNotificationListener:Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification$RegisteredPushNotificationListener;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->deviceUid:Lio/olvid/engine/datatypes/UID;

    iget-byte v3, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->pushNotificationType:B

    iget-object v4, p0, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    invoke-interface {v0, v1, v2, v3, v4}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification$RegisteredPushNotificationListener;->newRegisteredPushNotification(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    :cond_0
    return-void
.end method
