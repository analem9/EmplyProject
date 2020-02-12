.class Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "WebsocketCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdentityRegistrationOperation"
.end annotation


# static fields
.field public static final RFC_NO_VALID_SERVER_SESSION:I = 0x3

.field public static final RFC_WEBSOCKET_NOT_CONNECTED:I = 0x2

.field public static final RFC_WEBSOCKET_NOT_FOUND:I = 0x1


# instance fields
.field private final deviceUid:Lio/olvid/engine/datatypes/UID;

.field private final identity:Lio/olvid/engine/datatypes/Identity;

.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;


# direct methods
.method private constructor <init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    .line 394
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->computeUniqueUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    invoke-direct {p0, p1, p4, p5}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 395
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 396
    iput-object p3, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method

.method synthetic constructor <init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;)V
    .locals 0

    .line 385
    invoke-direct/range {p0 .. p5}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;-><init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 7

    const/4 v0, 0x0

    .line 415
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1000(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    move-result-object v1

    invoke-interface {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1400(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 419
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :try_start_2
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->cancel(Ljava/lang/Integer;)V

    .line 450
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 453
    :try_start_3
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    return-void

    .line 422
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->isOpen()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v2, 0x2

    .line 423
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 447
    :try_start_5
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 448
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->cancel(Ljava/lang/Integer;)V

    .line 450
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->processCancel()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_4

    .line 453
    :try_start_6
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    return-void

    .line 427
    :cond_5
    :try_start_7
    iget-object v3, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v1, v3}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getToken(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;)[B

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v2, 0x3

    .line 429
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 447
    :try_start_8
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 448
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->cancel(Ljava/lang/Integer;)V

    .line 450
    :cond_6
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->processCancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_7

    .line 453
    :try_start_9
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_7
    return-void

    .line 433
    :cond_8
    :try_start_a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "action"

    const-string v6, "register"

    .line 434
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "identity"

    .line 435
    iget-object v6, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lnet/iharder/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "deviceUid"

    .line 436
    iget-object v6, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->deviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lnet/iharder/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "token"

    .line 437
    invoke-static {v3}, Lnet/iharder/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v3, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v3}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1700(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->send(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 445
    :try_start_b
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->setFinished()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 442
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 447
    :try_start_d
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 448
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->cancel(Ljava/lang/Integer;)V

    .line 450
    :cond_9
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->processCancel()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_0
    if-eqz v1, :cond_c

    .line 453
    :try_start_e
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_3

    .line 447
    :goto_1
    :try_start_f
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 448
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->cancel(Ljava/lang/Integer;)V

    .line 450
    :cond_a
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->processCancel()V

    .line 452
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catchall_1
    move-exception v2

    .line 415
    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catchall_2
    move-exception v3

    if-eqz v1, :cond_b

    .line 453
    :try_start_11
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_12
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_2
    throw v3
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_1

    :catch_1
    move-exception v1

    .line 454
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 455
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->cancel(Ljava/lang/Integer;)V

    .line 456
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->processCancel()V

    :cond_c
    :goto_3
    return-void
.end method

.method public getDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 404
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 400
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method
