.class Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;
.super Lorg/java_websocket/client/WebSocketClient;
.source "WebsocketCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebSocketClient"
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private connectionException:Ljava/lang/Exception;

.field private final server:Ljava/lang/String;

.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

.field private thisWebsocketDidConnect:Z


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Ljava/lang/String;Ljava/net/URI;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    .line 485
    invoke-direct {p0, p3}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    const/4 p1, 0x0

    .line 481
    iput-boolean p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->thisWebsocketDidConnect:Z

    const/4 p1, 0x0

    .line 482
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->connectionException:Ljava/lang/Exception;

    .line 486
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->server:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1600(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;)Ljava/lang/Exception;
    .locals 0

    .line 477
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->connectionException:Ljava/lang/Exception;

    return-object p0
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 0

    .line 609
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1400(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->server:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-boolean p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->thisWebsocketDidConnect:Z

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 612
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Websocket remotely disconnected from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Websocket locally disconnected from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 616
    :goto_0
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1300(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 617
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    iget-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->server:Ljava/lang/String;

    invoke-static {p1, p2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$400(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 624
    iget-boolean v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->thisWebsocketDidConnect:Z

    if-nez v0, :cond_0

    .line 625
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->connectionException:Ljava/lang/Exception;

    goto :goto_0

    :cond_0
    const-string v0, "Websocket exception"

    .line 627
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 7

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Websocket received message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 508
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1700(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    new-instance v1, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient$1;

    invoke-direct {v1, p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient$1;-><init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;)V

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "action"

    .line 510
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v1, :cond_e

    const/4 p1, -0x1

    .line 516
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7d57d9d7

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, -0x2923d15d

    if-eq v2, v3, :cond_1

    const v3, 0x38eb0007

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "register"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "return_receipt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x2

    :cond_3
    :goto_0
    if-eqz p1, :cond_8

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string p1, "identity"

    .line 575
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "serverUid"

    .line 576
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "nonce"

    .line 577
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "encryptedPayload"

    .line 578
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "timestamp"

    .line 579
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 581
    :try_start_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lnet/iharder/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 582
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lnet/iharder/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 583
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lnet/iharder/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 584
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lnet/iharder/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 585
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 587
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$2000(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v6, "bytes_owned_identity"

    .line 589
    invoke-virtual {v0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "server_uid"

    .line 590
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nonce"

    .line 591
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "encrypted_payload"

    .line 592
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timestamp"

    .line 593
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$2000(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    move-result-object p1

    const-string v1, "netword_fetch_notification_return_receipt_received"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    const-string v0, "Error parsing return receipt"

    .line 598
    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_5
    const-string p1, "identity"

    .line 556
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 557
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    goto/16 :goto_3

    .line 561
    :cond_6
    :try_start_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lnet/iharder/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 562
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$700(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/UID;

    if-nez v0, :cond_7

    goto/16 :goto_3

    .line 567
    :cond_7
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1900(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;->downloadMessagesAndListAttachments(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    const-string v0, "Error decoding identity"

    .line 569
    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_8
    const-string p1, "identity"

    .line 518
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 519
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_3

    .line 523
    :cond_9
    :try_start_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lnet/iharder/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 524
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$700(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    const-string v1, "err"

    .line 528
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "Successfully registered identity on websocket"

    .line 529
    invoke-static {v1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    :cond_b
    const-string v1, "err"

    .line 532
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xff

    .line 533
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 534
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_c

    .line 535
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    .line 537
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    goto :goto_3

    .line 539
    :cond_d
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$500(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 540
    :try_start_4
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$600(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 542
    :try_start_5
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1800(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;->createServerSession(Lio/olvid/engine/datatypes/Identity;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 541
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    :goto_2
    const-string v0, "Error decoding identity"

    .line 550
    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_3
    return-void

    .line 512
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse websocket JSON message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 3

    .line 491
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1400(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->server:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 492
    iput-boolean p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->thisWebsocketDidConnect:Z

    .line 493
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Websocket connected to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 494
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-static {p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$1100(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->server:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 496
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityAndUid;

    .line 497
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    iget-object v2, v0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityAndUid;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityAndUid;->deviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v1, v2, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$800(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    goto :goto_0

    :cond_0
    return-void
.end method
