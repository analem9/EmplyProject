.class Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;
.super Lio/olvid/engine/datatypes/ServerMethod;
.source "RegisterPushNotificationOperation.java"


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/registerPushNotification"


# instance fields
.field private final deviceUid:Lio/olvid/engine/datatypes/UID;

.field private final extraInfo:Lio/olvid/engine/encoder/Encoded;

.field private final identity:Lio/olvid/engine/datatypes/Identity;

.field private final pushNotificationType:B

.field private final server:Ljava/lang/String;

.field private final token:[B


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;[BLio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Lio/olvid/engine/datatypes/ServerMethod;-><init>()V

    .line 129
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->server:Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 131
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->token:[B

    .line 132
    iput-object p3, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->deviceUid:Lio/olvid/engine/datatypes/UID;

    .line 133
    iput-byte p4, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->pushNotificationType:B

    .line 134
    iput-object p5, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 149
    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 150
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->token:[B

    .line 151
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->deviceUid:Lio/olvid/engine/datatypes/UID;

    .line 152
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-array v1, v3, [B

    iget-byte v3, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->pushNotificationType:B

    aput-byte v3, v1, v2

    .line 153
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 149
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/registerPushNotification"

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 0

    return-void
.end method
