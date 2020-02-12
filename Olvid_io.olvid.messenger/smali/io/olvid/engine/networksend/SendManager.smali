.class public Lio/olvid/engine/networksend/SendManager;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Lio/olvid/engine/metamanager/NetworkSendDelegate;
.implements Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;
.implements Lio/olvid/engine/metamanager/ObvManager;


# instance fields
.field private final cancelAttachmentUploadCoordinator:Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;

.field private createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

.field private final metaManager:Lio/olvid/engine/metamanager/MetaManager;

.field private notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field private final prng:Lio/olvid/engine/crypto/PRNGService;

.field private final refreshOutboxAttachmentSignedUrlCoordinator:Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;

.field private final sendAttachmentCoordinator:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

.field private final sendMessageCoordinator:Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;

.field private final sendReturnReceiptCoordinator:Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;


# direct methods
.method public constructor <init>(Lio/olvid/engine/metamanager/MetaManager;Lio/olvid/engine/crypto/PRNGService;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/olvid/engine/networksend/SendManager;->metaManager:Lio/olvid/engine/metamanager/MetaManager;

    .line 45
    iput-object p2, p0, Lio/olvid/engine/networksend/SendManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    .line 46
    new-instance v0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;

    invoke-direct {v0, p0}, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;)V

    iput-object v0, p0, Lio/olvid/engine/networksend/SendManager;->sendMessageCoordinator:Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;

    .line 47
    new-instance v0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;

    invoke-direct {v0, p0}, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;)V

    iput-object v0, p0, Lio/olvid/engine/networksend/SendManager;->refreshOutboxAttachmentSignedUrlCoordinator:Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;

    .line 48
    new-instance v0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networksend/SendManager;->refreshOutboxAttachmentSignedUrlCoordinator:Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;

    invoke-direct {v0, p0, v1}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;)V

    iput-object v0, p0, Lio/olvid/engine/networksend/SendManager;->sendAttachmentCoordinator:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    .line 49
    new-instance v0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;

    invoke-direct {v0, p0}, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;)V

    iput-object v0, p0, Lio/olvid/engine/networksend/SendManager;->cancelAttachmentUploadCoordinator:Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;

    .line 50
    new-instance v0, Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;

    invoke-direct {v0, p0, p2}, Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/crypto/PRNGService;)V

    iput-object v0, p0, Lio/olvid/engine/networksend/SendManager;->sendReturnReceiptCoordinator:Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;

    .line 52
    const-class p2, Lio/olvid/engine/metamanager/CreateSessionDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 53
    const-class p2, Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 54
    const-class p2, Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {p1, p0}, Lio/olvid/engine/metamanager/MetaManager;->registerImplementedDelegates(Ljava/lang/Object;)V

    return-void
.end method

.method public static upgradeTables(Lio/olvid/engine/datatypes/Session;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 82
    invoke-static {p0, p1, p2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 83
    invoke-static {p0, p1, p2}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 84
    invoke-static {p0, p1, p2}, Lio/olvid/engine/networksend/databases/MessageHeader;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 85
    invoke-static {p0, p1, p2}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    return-void
.end method

.method private wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networksend/datatypes/SendManagerSession;
    .locals 8

    .line 168
    new-instance v7, Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v2, p0, Lio/olvid/engine/networksend/SendManager;->sendMessageCoordinator:Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;

    iget-object v3, p0, Lio/olvid/engine/networksend/SendManager;->sendAttachmentCoordinator:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    iget-object v4, p0, Lio/olvid/engine/networksend/SendManager;->cancelAttachmentUploadCoordinator:Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;

    iget-object v5, p0, Lio/olvid/engine/networksend/SendManager;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    iget-object v6, p0, Lio/olvid/engine/networksend/SendManager;->sendReturnReceiptCoordinator:Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/networksend/databases/OutboxMessage$NewOutboxMessageListener;Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCanBeSentListener;Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCancelRequestedListener;Lio/olvid/engine/metamanager/NotificationPostingDelegate;Lio/olvid/engine/networksend/databases/ReturnReceipt$NewReturnReceiptListener;)V

    return-object v7
.end method


# virtual methods
.method public cancelAttachmentUpload(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lio/olvid/engine/networksend/SendManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->setCancelExternallyRequested()V

    return-void
.end method

.method public getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lio/olvid/engine/networksend/SendManager;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    if-eqz v0, :cond_0

    .line 164
    new-instance v8, Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    invoke-interface {v0}, Lio/olvid/engine/metamanager/CreateSessionDelegate;->getSession()Lio/olvid/engine/datatypes/Session;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/networksend/SendManager;->sendMessageCoordinator:Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;

    iget-object v4, p0, Lio/olvid/engine/networksend/SendManager;->sendAttachmentCoordinator:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    iget-object v5, p0, Lio/olvid/engine/networksend/SendManager;->cancelAttachmentUploadCoordinator:Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;

    iget-object v6, p0, Lio/olvid/engine/networksend/SendManager;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    iget-object v7, p0, Lio/olvid/engine/networksend/SendManager;->sendReturnReceiptCoordinator:Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/networksend/databases/OutboxMessage$NewOutboxMessageListener;Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCanBeSentListener;Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCancelRequestedListener;Lio/olvid/engine/metamanager/NotificationPostingDelegate;Lio/olvid/engine/networksend/databases/ReturnReceipt$NewReturnReceiptListener;)V

    return-object v8

    .line 162
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "No CreateSessionDelegate was set in SendManager."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialisationComplete()V
    .locals 1

    .line 60
    iget-object v0, p0, Lio/olvid/engine/networksend/SendManager;->sendMessageCoordinator:Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->initialQueueing()V

    .line 61
    iget-object v0, p0, Lio/olvid/engine/networksend/SendManager;->sendAttachmentCoordinator:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->initialQueueing()V

    .line 62
    iget-object v0, p0, Lio/olvid/engine/networksend/SendManager;->cancelAttachmentUploadCoordinator:Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->initialQueueing()V

    .line 63
    iget-object v0, p0, Lio/olvid/engine/networksend/SendManager;->sendReturnReceiptCoordinator:Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;->initialQueueing()V

    return-void
.end method

.method public isOutboxAttachmentSent(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1}, Lio/olvid/engine/networksend/SendManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->isAcknowledged()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isOutboxMessageSent(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Lio/olvid/engine/networksend/SendManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networksend/databases/OutboxMessage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p1}, Lio/olvid/engine/networksend/databases/OutboxMessage;->isAcknowledged()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/MessageToSend;)V
    .locals 12

    .line 100
    invoke-direct {p0, p1}, Lio/olvid/engine/networksend/SendManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object p1

    .line 103
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/MessageToSend;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 104
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/MessageToSend;->getServer()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/MessageToSend;->getEncryptedContent()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v2

    .line 106
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/MessageToSend;->isApplicationMessageWithUserContent()Z

    move-result v3

    .line 102
    invoke-static {p1, v0, v1, v2, v3}, Lio/olvid/engine/networksend/databases/OutboxMessage;->create(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;Ljava/lang/String;Lio/olvid/engine/datatypes/EncryptedBytes;Z)Lio/olvid/engine/networksend/databases/OutboxMessage;

    .line 109
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/MessageToSend;->getHeaders()[Lio/olvid/engine/datatypes/containers/MessageToSend$Header;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/MessageToSend;->getHeaders()[Lio/olvid/engine/datatypes/containers/MessageToSend$Header;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 112
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/MessageToSend;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v5

    .line 113
    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v6

    .line 114
    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    .line 115
    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;->getWrappedMessageKey()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v4

    .line 111
    invoke-static {p1, v5, v6, v7, v4}, Lio/olvid/engine/networksend/databases/MessageHeader;->create(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/networksend/databases/MessageHeader;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/MessageToSend;->getAttachments()[Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/MessageToSend;->getAttachments()[Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v0, v8, v10

    .line 123
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/MessageToSend;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;->isDeleteAfterSend()Z

    move-result v4

    .line 127
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;->getAttachmentLength()J

    move-result-wide v5

    .line 128
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;->getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v7

    move-object v0, p1

    move v2, v11

    .line 122
    invoke-static/range {v0 .. v7}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->create(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;ILjava/lang/String;ZJLio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)Lio/olvid/engine/networksend/databases/OutboxAttachment;

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public sendReturnReceipt(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;I[BLio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V
    .locals 7

    .line 154
    invoke-direct {p0, p1}, Lio/olvid/engine/networksend/SendManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->create(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;I[BLio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)Lio/olvid/engine/networksend/databases/ReturnReceipt;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/CreateSessionDelegate;)V
    .locals 2

    .line 67
    iput-object p1, p0, Lio/olvid/engine/networksend/SendManager;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/networksend/SendManager;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v0, p1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/networksend/databases/OutboxMessage;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 71
    iget-object v0, p1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 72
    iget-object v0, p1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/networksend/databases/MessageHeader;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 73
    iget-object v0, p1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 74
    iget-object v0, p1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 75
    :try_start_2
    invoke-virtual {p1}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 69
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 75
    :try_start_4
    invoke-virtual {p1}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 77
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create network fetch databases"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lio/olvid/engine/networksend/SendManager;->sendAttachmentCoordinator:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V
    .locals 1

    .line 89
    iput-object p1, p0, Lio/olvid/engine/networksend/SendManager;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    .line 90
    iget-object v0, p0, Lio/olvid/engine/networksend/SendManager;->refreshOutboxAttachmentSignedUrlCoordinator:Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->setNotificationPostingDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V

    return-void
.end method
