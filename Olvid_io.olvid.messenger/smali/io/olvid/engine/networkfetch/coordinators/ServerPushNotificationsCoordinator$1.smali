.class Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;
.super Ljava/lang/Object;
.source "ServerPushNotificationsCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->scheduleNewRegisterPushNotificationOperationQueueing(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

.field final synthetic val$deviceUid:Lio/olvid/engine/datatypes/UID;

.field final synthetic val$extraInfo:Lio/olvid/engine/encoder/Encoded;

.field final synthetic val$identity:Lio/olvid/engine/datatypes/Identity;

.field final synthetic val$pushNotificationType:B


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;->val$identity:Lio/olvid/engine/datatypes/Identity;

    iput-object p3, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;->val$deviceUid:Lio/olvid/engine/datatypes/UID;

    iput-byte p4, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;->val$pushNotificationType:B

    iput-object p5, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;->val$extraInfo:Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 128
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;->val$identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;->val$deviceUid:Lio/olvid/engine/datatypes/UID;

    iget-byte v3, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;->val$pushNotificationType:B

    iget-object v4, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;->val$extraInfo:Lio/olvid/engine/encoder/Encoded;

    invoke-static {v0, v1, v2, v3, v4}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->access$000(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    return-void
.end method
