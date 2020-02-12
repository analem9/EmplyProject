.class public Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;
.super Ljava/lang/Object;
.source "ProtocolStepCoordinator.java"

# interfaces
.implements Lio/olvid/engine/protocol/datatypes/ProtocolReceivedMessageProcessorDelegate;
.implements Lio/olvid/engine/datatypes/Operation$OnFinishCallback;
.implements Lio/olvid/engine/datatypes/Operation$OnCancelCallback;


# instance fields
.field private final jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final prng:Lio/olvid/engine/crypto/PRNGService;

.field private final protocolManagerSessionFactory:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;

.field private final protocolOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->protocolManagerSessionFactory:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;

    .line 40
    iput-object p2, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->prng:Lio/olvid/engine/crypto/PRNGService;

    .line 41
    iput-object p3, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 43
    new-instance p1, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->protocolOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    .line 44
    iget-object p1, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->protocolOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->execute(I)V

    return-void
.end method

.method private queueNewProtocolOperation(Lio/olvid/engine/datatypes/UID;)V
    .locals 8

    .line 48
    new-instance v7, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;

    iget-object v1, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->protocolManagerSessionFactory:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;

    iget-object v3, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->prng:Lio/olvid/engine/crypto/PRNGService;

    iget-object v4, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-object v0, v7

    move-object v2, p1

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 49
    iget-object p1, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->protocolOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-virtual {p1, v7}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method


# virtual methods
.method public initialQueueing()V
    .locals 5

    .line 53
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->protocolManagerSessionFactory:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    invoke-static {v0}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->deleteExpiredMessagesWithNoProtocol(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;)V

    .line 57
    invoke-static {v0}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getAll(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;)[Lio/olvid/engine/protocol/databases/ReceivedMessage;

    move-result-object v1

    .line 58
    array-length v2, v1

    if-lez v2, :cond_0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ReceivedMessage to (attempt to) process."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 60
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 61
    invoke-virtual {v4}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->queueNewProtocolOperation(Lio/olvid/engine/datatypes/UID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 64
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 53
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 64
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 5

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running onCancelCallback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->hasNoReasonForCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtocolOperation cancelled for RFC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown RFC for ProtocolOperation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 120
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->protocolManagerSessionFactory:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :try_start_1
    check-cast p1, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;

    invoke-virtual {p1}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->getReceivedMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    invoke-static {v0, p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/protocol/databases/ReceivedMessage;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->delete()V

    .line 124
    new-instance v1, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {}, Lio/olvid/engine/datatypes/containers/DialogType;->createDeleteDialog()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v3

    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getUserDialogUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getProtocolId()I

    move-result v3

    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 125
    new-instance p1, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {p1, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {p1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object p1

    .line 126
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {v1, v2, p1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 128
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 129
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 120
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 129
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 110
    :pswitch_1
    :try_start_6
    iget-object v0, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->protocolManagerSessionFactory:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    .line 111
    :try_start_7
    check-cast p1, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;

    invoke-virtual {p1}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->getReceivedMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    invoke-static {v0, p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/protocol/databases/ReceivedMessage;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->delete()V

    .line 113
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_3

    .line 114
    :try_start_8
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :catchall_3
    move-exception p1

    .line 110
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v0, :cond_2

    .line 114
    :try_start_a
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_3
    :goto_2
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFinishCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 5

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running onFinishCallback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 77
    check-cast p1, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;

    .line 78
    invoke-virtual {p1}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->getProtocolOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    .line 84
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->protocolManagerSessionFactory:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;

    invoke-interface {v1}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :try_start_1
    invoke-static {v1, v0, p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getAll(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/protocol/databases/ReceivedMessage;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 86
    iget-object v4, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->protocolReceivedMessageProcessorDelegate:Lio/olvid/engine/protocol/datatypes/ProtocolReceivedMessageProcessorDelegate;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-interface {v4, v3}, Lio/olvid/engine/protocol/datatypes/ProtocolReceivedMessageProcessorDelegate;->processReceivedMessage(Lio/olvid/engine/datatypes/UID;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 89
    :try_start_2
    invoke-virtual {v1}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 84
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 89
    :try_start_4
    invoke-virtual {v1}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string p1, "The ProtocolOperation finished, but either the protocolInstanceUid or the protocolOwnedIdentity is not properly set."

    .line 81
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public processReceivedMessage(Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->queueNewProtocolOperation(Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method
