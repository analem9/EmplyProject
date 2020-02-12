.class Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;
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
    name = "OwnedIdentityListUpdatedNotificationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;


# direct methods
.method private constructor <init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;-><init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
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

    .line 288
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$900(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 289
    :try_start_0
    iget-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {p2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1000(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    move-result-object p2

    invoke-interface {p2}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 290
    :try_start_1
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1100(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 291
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$700(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 292
    iget-object v0, p2, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v1, p2, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v0, v1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOwnedIdentities(Lio/olvid/engine/datatypes/Session;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    .line 293
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 294
    iget-object v4, p2, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v5, p2, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v4, v5, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    .line 295
    iget-object v5, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v5}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$700(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v5

    .line 297
    iget-object v6, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v6}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1100(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_0

    .line 299
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 300
    iget-object v7, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v7}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1100(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_0
    new-instance v5, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityAndUid;

    invoke-direct {v5, v3, v4}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityAndUid;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 304
    :try_start_2
    invoke-virtual {p2}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 289
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p2, :cond_2

    .line 304
    :try_start_4
    invoke-virtual {p2}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 305
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    :cond_3
    :goto_2
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 308
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1200(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)V

    return-void

    .line 307
    :goto_3
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p2
.end method
