.class public final Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "ProtocolOperation.java"


# static fields
.field public static final RFC_DELEGATE_NOT_SET:I = 0x1

.field public static final RFC_DIALOG_RESPONSE_CANNOT_BE_PROCESSED:I = 0x7

.field public static final RFC_MESSAGE_NOT_FOUND:I = 0x2

.field public static final RFC_THE_STEP_TO_EXECUTE_FAILED:I = 0x6

.field public static final RFC_UNABLE_TO_FIND_STEP_TO_EXECUTE:I = 0x5

.field public static final RFC_UNABLE_TO_RECONSTRUCT_MESSAGE:I = 0x4

.field public static final RFC_UNABLE_TO_RECONSTRUCT_PROTOCOL:I = 0x3


# instance fields
.field private final jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final prng:Lio/olvid/engine/crypto/PRNGService;

.field private protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

.field private final protocolManagerSessionFactory:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;

.field private protocolOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final receivedMessageUid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 0

    .line 54
    invoke-direct {p0, p2, p5, p6}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 55
    iput-object p1, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->protocolManagerSessionFactory:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;

    .line 56
    iput-object p2, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->receivedMessageUid:Lio/olvid/engine/datatypes/UID;

    .line 57
    iput-object p3, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->prng:Lio/olvid/engine/crypto/PRNGService;

    .line 58
    iput-object p4, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 10

    .line 68
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->protocolManagerSessionFactory:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v7, 0x0

    .line 71
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->receivedMessageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/protocol/databases/ReceivedMessage;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v1, 0x2

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :try_start_2
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 189
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p0, v7}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 195
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    return-void

    .line 77
    :cond_2
    :try_start_4
    invoke-virtual {v8}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getProtocolId()I

    move-result v2

    .line 79
    invoke-virtual {v8}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    .line 80
    invoke-virtual {v8}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getAssociatedOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->protocolOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 82
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    :try_start_5
    iget-object v1, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->protocolOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, v3}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/ProtocolInstance;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_3

    .line 89
    :try_start_6
    iget-object v3, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->protocolOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    new-instance v5, Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    invoke-direct {v5}, Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;-><init>()V

    invoke-static {v0, v3, v4, v2, v5}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;ILio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;)Lio/olvid/engine/protocol/databases/ProtocolInstance;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v9, :cond_4

    .line 91
    :try_start_7
    iget-object v3, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->protocolOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-object v5, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->prng:Lio/olvid/engine/crypto/PRNGService;

    iget-object v6, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getConcreteProtocolInInitialState(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 94
    :cond_3
    :try_start_8
    iget-object v2, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->prng:Lio/olvid/engine/crypto/PRNGService;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-static {v1, v2, v3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getConcreteProtocol(Lio/olvid/engine/protocol/databases/ProtocolInstance;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v9, v1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v9, v1

    move-object v1, v2

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v9, v7

    .line 97
    :goto_0
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    move-object v1, v7

    :goto_1
    if-nez v1, :cond_7

    const/4 v1, 0x3

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 188
    :try_start_a
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 189
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    invoke-virtual {p0, v7}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V

    .line 192
    :cond_5
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->processCancel()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v0, :cond_6

    .line 195
    :try_start_b
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_4

    :cond_6
    return-void

    .line 106
    :cond_7
    :try_start_c
    invoke-virtual {v1, v8}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getConcreteProtocolMessage(Lio/olvid/engine/protocol/databases/ReceivedMessage;)Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;

    move-result-object v2

    if-nez v2, :cond_a

    const/4 v1, 0x4

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 188
    :try_start_d
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 189
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 190
    invoke-virtual {p0, v7}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V

    .line 192
    :cond_8
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->processCancel()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v0, :cond_9

    .line 195
    :try_start_e
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_4

    :cond_9
    return-void

    .line 112
    :cond_a
    :try_start_f
    invoke-virtual {v1, v2}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getStepToExecute(Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;)Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;

    move-result-object v2

    if-nez v2, :cond_10

    .line 115
    invoke-virtual {v8}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getUserDialogUuid()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x7

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 188
    :try_start_10
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 189
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 190
    invoke-virtual {p0, v7}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V

    .line 192
    :cond_b
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->processCancel()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v0, :cond_c

    .line 195
    :try_start_11
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_4

    :cond_c
    return-void

    :cond_d
    const/4 v1, 0x5

    .line 119
    :try_start_12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 188
    :try_start_13
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 189
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 190
    invoke-virtual {p0, v7}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V

    .line 192
    :cond_e
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->processCancel()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v0, :cond_f

    .line 195
    :try_start_14
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_14
    .catch Ljava/sql/SQLException; {:try_start_14 .. :try_end_14} :catch_4

    :cond_f
    return-void

    .line 126
    :cond_10
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing step "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 127
    new-instance v3, Lio/olvid/engine/datatypes/OperationQueue;

    invoke-direct {v3}, Lio/olvid/engine/datatypes/OperationQueue;-><init>()V

    .line 128
    invoke-virtual {v3, v2}, Lio/olvid/engine/datatypes/OperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    const/4 v4, 0x1

    .line 129
    invoke-virtual {v3, v4}, Lio/olvid/engine/datatypes/OperationQueue;->execute(I)V

    .line 130
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/OperationQueue;->join()V

    .line 133
    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->getEndState()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    move-result-object v3

    if-nez v3, :cond_11

    goto/16 :goto_4

    .line 138
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished step "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". It reached state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->getEndState()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->getEndState()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    move-result-object v2

    .line 141
    invoke-virtual {v9, v2}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->updateCurrentState(Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;)V

    .line 142
    invoke-virtual {v1, v2}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->updateCurrentState(Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;)V

    .line 147
    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 148
    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 149
    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getCurrentState()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    move-result-object v4

    .line 145
    invoke-static {v0, v2, v3, v4}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->getGenericProtocolMessageToSendWhenChildProtocolInstanceReachesAState(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;)Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 152
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    if-eqz v3, :cond_12

    .line 156
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v2

    iget-object v5, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {v3, v4, v2, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    goto :goto_2

    :cond_12
    const-string v1, "Unable to run notify parent protocol as the ChannelDelegate is not set yet."

    .line 153
    invoke-static {v1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 154
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    .line 159
    :cond_13
    :goto_2
    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->hasReachedFinalState()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 161
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    if-eqz v2, :cond_14

    .line 165
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->deleteAllProtocolEphemeralIdentities(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V

    .line 168
    invoke-virtual {v9}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->delete()V

    .line 171
    iget-boolean v2, v1, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->eraseReceivedMessagesAfterReachingAFinalState:Z

    if-eqz v2, :cond_15

    .line 172
    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getAll(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/protocol/databases/ReceivedMessage;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_15

    aget-object v4, v1, v3

    .line 173
    invoke-virtual {v4}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->delete()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_14
    const-string v1, "Unable to delete ephemeral identities as the IdentityDelegate is not set yet."

    .line 162
    invoke-static {v1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 163
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    .line 178
    :cond_15
    invoke-virtual {v8}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->delete()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 185
    :try_start_16
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 186
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->setFinished()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_5

    .line 134
    :cond_16
    :goto_4
    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Step "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 188
    :try_start_18
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 189
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 190
    invoke-virtual {p0, v7}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V

    .line 192
    :cond_17
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->processCancel()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-eqz v0, :cond_18

    .line 195
    :try_start_19
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_19
    .catch Ljava/sql/SQLException; {:try_start_19 .. :try_end_19} :catch_4

    :cond_18
    return-void

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    .line 182
    :try_start_1a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 188
    :try_start_1b
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 189
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 190
    invoke-virtual {p0, v7}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V

    .line 192
    :cond_19
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->processCancel()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :goto_5
    if-eqz v0, :cond_1c

    .line 195
    :try_start_1c
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_1c
    .catch Ljava/sql/SQLException; {:try_start_1c .. :try_end_1c} :catch_4

    goto :goto_8

    .line 188
    :goto_6
    :try_start_1d
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 189
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 190
    invoke-virtual {p0, v7}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->cancel(Ljava/lang/Integer;)V

    .line 192
    :cond_1a
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->processCancel()V

    .line 194
    throw v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :catchall_1
    move-exception v1

    .line 68
    :try_start_1e
    throw v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_1b

    .line 195
    :try_start_1f
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_20
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_7
    throw v2
    :try_end_20
    .catch Ljava/sql/SQLException; {:try_start_20 .. :try_end_20} :catch_4

    :catch_4
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    const-string v0, "SQLException in getSession."

    .line 197
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    :cond_1c
    :goto_8
    return-void
.end method

.method public getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getProtocolOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->protocolOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getReceivedMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolOperation;->receivedMessageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method
