.class Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;
.super Ljava/lang/Object;
.source "WebsocketCoordinator.java"

# interfaces
.implements Lio/olvid/engine/datatypes/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerSessionCreatedNotificationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;


# direct methods
.method private constructor <init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;-><init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
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

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "identity"

    .line 268
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 269
    instance-of p2, p1, Lio/olvid/engine/datatypes/Identity;

    if-nez p2, :cond_1

    return-void

    .line 272
    :cond_1
    check-cast p1, Lio/olvid/engine/datatypes/Identity;

    .line 273
    iget-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {p2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$500(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 274
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$600(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$700(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/UID;

    if-eqz v0, :cond_2

    .line 277
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v1, p1, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$800(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    .line 279
    :cond_2
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$600(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 281
    :cond_3
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
