.class Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "WebsocketCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebsocketCreationOperation"
.end annotation


# static fields
.field public static final RFC_NO_KNOWN_WS_SERVER_FOR_SERVER:I = 0x2

.field public static final RFC_WEBSOCKET_ALREADY_EXISTS:I = 0x1


# instance fields
.field private final server:Ljava/lang/String;

.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;


# direct methods
.method private constructor <init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Ljava/lang/String;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 2

    .line 328
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    .line 329
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "sha-256"

    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getHash(Ljava/lang/String;)Lio/olvid/engine/crypto/Hash;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lio/olvid/engine/crypto/Hash;->digest([B)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    invoke-direct {p0, p1, p3, p4}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 330
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->server:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Ljava/lang/String;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1, p2, p3, p4}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;-><init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Ljava/lang/String;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 5

    const/4 v0, 0x0

    .line 346
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1300(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 374
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->setFinished()V

    return-void

    .line 350
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1400(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->server:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->cancel(Ljava/lang/Integer;)V

    .line 379
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->processCancel()V

    return-void

    .line 355
    :cond_2
    :try_start_2
    invoke-static {}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1500()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->server:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    if-nez v1, :cond_4

    const/4 v1, 0x2

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->cancel(Ljava/lang/Integer;)V

    .line 379
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->processCancel()V

    return-void

    .line 360
    :cond_4
    :try_start_3
    new-instance v2, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;

    iget-object v3, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    iget-object v4, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->server:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;-><init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Ljava/lang/String;Ljava/net/URI;)V

    const-wide/16 v3, 0x1388

    .line 361
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->connectBlocking(JLjava/util/concurrent/TimeUnit;)Z

    .line 362
    invoke-static {v2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->access$1600(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;)Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_6

    .line 366
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1300(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 367
    invoke-virtual {v2, v1, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->closeConnection(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    :cond_5
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->setFinished()V

    goto :goto_0

    .line 363
    :cond_6
    :try_start_4
    invoke-static {v2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->access$1600(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;)Ljava/lang/Exception;

    move-result-object v1

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 371
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 376
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 377
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->cancel(Ljava/lang/Integer;)V

    .line 379
    :cond_7
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->processCancel()V

    :goto_0
    return-void

    .line 376
    :goto_1
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 377
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->cancel(Ljava/lang/Integer;)V

    .line 379
    :cond_8
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->processCancel()V

    .line 381
    throw v1
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->server:Ljava/lang/String;

    return-object v0
.end method
