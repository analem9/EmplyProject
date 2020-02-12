.class Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$ServerSessionCreatedNotificationListener;
.super Ljava/lang/Object;
.source "ServerPushNotificationsCoordinator.java"

# interfaces
.implements Lio/olvid/engine/datatypes/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerSessionCreatedNotificationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "network_fetch_notification_server_session_created"

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "identity"

    .line 277
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 278
    instance-of p2, p1, Lio/olvid/engine/datatypes/Identity;

    if-nez p2, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    check-cast p1, Lio/olvid/engine/datatypes/Identity;

    .line 282
    iget-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    invoke-static {p2}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->access$300(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 283
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->access$400(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;

    if-eqz v0, :cond_2

    .line 285
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    invoke-static {v1}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->access$400(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;->getPushNotificationType()B

    move-result v3

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;->getExtraInfo()Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    invoke-static {v1, p1, v2, v3, v0}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->access$000(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    .line 288
    :cond_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method
