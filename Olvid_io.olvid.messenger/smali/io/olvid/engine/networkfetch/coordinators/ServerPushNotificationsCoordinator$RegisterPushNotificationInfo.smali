.class Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;
.super Ljava/lang/Object;
.source "ServerPushNotificationsCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterPushNotificationInfo"
.end annotation


# instance fields
.field private final deviceUid:Lio/olvid/engine/datatypes/UID;

.field private final extraInfo:Lio/olvid/engine/encoder/Encoded;

.field private final pushNotificationType:B

.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;->deviceUid:Lio/olvid/engine/datatypes/UID;

    .line 300
    iput-byte p3, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;->pushNotificationType:B

    .line 301
    iput-object p4, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method


# virtual methods
.method public getDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 305
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getExtraInfo()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 313
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getPushNotificationType()B
    .locals 1

    .line 309
    iget-byte v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;->pushNotificationType:B

    return v0
.end method
