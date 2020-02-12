.class public Lio/olvid/engine/channel/coordinators/ChannelCoordinator;
.super Ljava/lang/Object;
.source "ChannelCoordinator.java"

# interfaces
.implements Lio/olvid/engine/channel/datatypes/NetworkReceivedMessageDecryptorDelegate;


# instance fields
.field private final channelManagerSessionFactory:Lio/olvid/engine/channel/datatypes/ChannelManagerSessionFactory;


# direct methods
.method public constructor <init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSessionFactory;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lio/olvid/engine/channel/coordinators/ChannelCoordinator;->channelManagerSessionFactory:Lio/olvid/engine/channel/datatypes/ChannelManagerSessionFactory;

    return-void
.end method

.method private decryptAndProcess(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;)V
    .locals 6

    .line 67
    iget-object v0, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    :try_start_0
    new-instance v0, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;

    invoke-virtual {p3}, Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;->getAuthEncKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v1

    invoke-virtual {p3}, Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;-><init>(Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getMessageType()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The ChannelReceivedMessage contains an unknown MessageType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getMessageType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 95
    :cond_1
    :try_start_1
    invoke-static {v0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;->of(Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;)Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p3, "Error parsing a ChannelReceivedMessage"

    .line 97
    invoke-static {p3}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_2
    iget-object v1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    iget-object v2, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 102
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    .line 103
    invoke-virtual {p3}, Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p3

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p3

    .line 104
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;->getAttachmentsKeyAndMetadata()[Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;

    move-result-object v4

    .line 105
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;->getMessagePayload()[B

    move-result-object v5

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, p3

    .line 100
    invoke-interface/range {v0 .. v5}, Lio/olvid/engine/metamanager/NetworkFetchDelegate;->setAttachmentKeyAndMetadataAndMessagePayload(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 108
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    const-string p3, "Error while processing a ChannelReceivedApplicationMessage."

    .line 109
    invoke-static {p3}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 110
    iget-object p3, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    iget-object p1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lio/olvid/engine/metamanager/NetworkFetchDelegate;->deleteMessageAndAttachments(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V

    goto :goto_1

    .line 80
    :cond_3
    iget-object p3, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    if-nez p3, :cond_4

    const-string p1, "Received a protocol message, but no ProtocolDelegate is set."

    .line 81
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_4
    :try_start_2
    invoke-static {v0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->of(Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;)Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;

    move-result-object p3

    .line 86
    iget-object v0, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    iget-object v1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v0, v1, p3}, Lio/olvid/engine/metamanager/ProtocolDelegate;->process(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    goto :goto_2

    :catch_1
    :try_start_3
    const-string p3, "Error while processing a ProtocolReceivedMessage."

    .line 88
    invoke-static {p3}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :goto_0
    iget-object p3, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    iget-object p1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lio/olvid/engine/metamanager/NetworkFetchDelegate;->deleteMessageAndAttachments(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V

    :goto_1
    return-void

    :goto_2
    iget-object v0, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    iget-object p1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lio/olvid/engine/metamanager/NetworkFetchDelegate;->deleteMessageAndAttachments(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V

    .line 91
    throw p3

    .line 74
    :catch_2
    iget-object p3, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    iget-object p1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lio/olvid/engine/metamanager/NetworkFetchDelegate;->deleteMessageAndAttachments(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method


# virtual methods
.method public decryptAndProcess(Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;)V
    .locals 4

    .line 32
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/channel/coordinators/ChannelCoordinator;->channelManagerSessionFactory:Lio/olvid/engine/channel/datatypes/ChannelManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/channel/datatypes/ChannelManagerSessionFactory;->getSession()Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    iget-object v1, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 35
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->getHeader()Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;

    move-result-object v1

    invoke-static {v0, v1}, Lio/olvid/engine/channel/databases/ObliviousChannel;->unwrapMessageKey(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;)Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "The message can be decrypted through an ObliviousChannel."

    .line 37
    invoke-static {v2}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, v0, p1, v1}, Lio/olvid/engine/channel/coordinators/ChannelCoordinator;->decryptAndProcess(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;)V

    .line 40
    iget-object v1, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 61
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    .line 45
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->getHeader()Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;

    move-result-object v1

    invoke-static {v0, v1}, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;->unwrapMessageKey(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;)Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "The message can be decrypted through an AsymmetricChannel."

    .line 47
    invoke-static {v2}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, v0, p1, v1}, Lio/olvid/engine/channel/coordinators/ChannelCoordinator;->decryptAndProcess(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;)V

    .line 49
    iget-object v1, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    .line 61
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-void

    .line 54
    :cond_3
    :try_start_5
    iget-object v1, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    if-eqz v1, :cond_4

    const-string v1, "The message cannot be decrypted."

    .line 55
    invoke-static {v1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 56
    iget-object v1, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    iget-object v2, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/NetworkFetchDelegate;->deleteMessageAndAttachments(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V

    .line 57
    iget-object v1, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    goto :goto_0

    :cond_4
    const-string v1, "Unable to delete a networkReceivedMessage because the NetworkFetchDelegate is not set yet."

    .line 59
    invoke-static {v1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    if-eqz v0, :cond_6

    .line 61
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 32
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_5

    .line 61
    :try_start_8
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v2
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_0

    .line 62
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to decryptAndProcess networkReceivedMessage with uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
