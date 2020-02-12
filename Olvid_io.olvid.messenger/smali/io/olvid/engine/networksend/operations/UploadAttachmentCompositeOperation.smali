.class public Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;
.super Lio/olvid/engine/datatypes/PriorityOperation;
.source "UploadAttachmentCompositeOperation.java"


# static fields
.field public static final RFC_ATTACHMENT_FILE_NOT_READABLE:I = 0x6

.field public static final RFC_ATTACHMENT_NOT_FOUND_IN_DATABASE:I = 0x1

.field public static final RFC_DOES_NOT_HAVE_THE_HIGHEST_PRIORITY:I = 0x7

.field public static final RFC_INVALID_SIGNED_URL:I = 0x8

.field public static final RFC_MESSAGE_HAS_NO_UID_FROM_SERVER:I = 0x4

.field public static final RFC_NETWORK_ERROR:I = 0x3


# instance fields
.field private final attachmentNumber:I

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

.field private final suboperations:[Lio/olvid/engine/datatypes/Operation;

.field private final uploadAttachmentOperation:Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;IJLio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 7

    .line 31
    invoke-static {p2, p3}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->computeUniqueUid(Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    invoke-direct {p0, v0, p7, p8}, Lio/olvid/engine/datatypes/PriorityOperation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 32
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 33
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 34
    iput p3, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->attachmentNumber:I

    const/4 p7, 0x2

    new-array p7, p7, [Lio/olvid/engine/datatypes/Operation;

    .line 35
    iput-object p7, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    .line 37
    new-instance p7, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;

    move-object v0, p7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;IJLio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;)V

    iput-object p7, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->uploadAttachmentOperation:Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;

    .line 38
    iget-object p3, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    iget-object p4, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->uploadAttachmentOperation:Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;

    const/4 p5, 0x0

    aput-object p4, p3, p5

    .line 39
    new-instance p4, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;

    invoke-direct {p4, p1, p2}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;)V

    const/4 p1, 0x1

    aput-object p4, p3, p1

    .line 41
    :goto_0
    iget-object p2, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    array-length p3, p2

    sub-int/2addr p3, p1

    if-ge p5, p3, :cond_0

    add-int/lit8 p3, p5, 0x1

    .line 42
    aget-object p4, p2, p3

    aget-object p2, p2, p5

    invoke-virtual {p4, p2}, Lio/olvid/engine/datatypes/Operation;->addDependency(Lio/olvid/engine/datatypes/Operation;)V

    move p5, p3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 5

    .line 57
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 58
    invoke-virtual {v3, v4}, Lio/olvid/engine/datatypes/Operation;->cancel(Ljava/lang/Integer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public doExecute()V
    .locals 7

    const/4 v0, 0x0

    .line 66
    :try_start_0
    new-instance v1, Lio/olvid/engine/datatypes/OperationQueue;

    invoke-direct {v1}, Lio/olvid/engine/datatypes/OperationQueue;-><init>()V

    .line 67
    iget-object v2, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 68
    invoke-virtual {v1, v6}, Lio/olvid/engine/datatypes/OperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 70
    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/OperationQueue;->execute(I)V

    .line 71
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/OperationQueue;->join()V

    .line 73
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->cancelWasRequested()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p0, v0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->cancel(Ljava/lang/Integer;)V

    .line 91
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->processCancel()V

    return-void

    .line 77
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    array-length v2, v1

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v3, v1, v4

    .line 78
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Operation;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-virtual {p0, v0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->cancel(Ljava/lang/Integer;)V

    .line 91
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->processCancel()V

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->setFinished()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 85
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    invoke-virtual {p0, v0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->cancel(Ljava/lang/Integer;)V

    .line 91
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->processCancel()V

    :goto_2
    return-void

    .line 90
    :goto_3
    invoke-virtual {p0, v0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->cancel(Ljava/lang/Integer;)V

    .line 91
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->processCancel()V

    .line 93
    throw v1
.end method

.method public getAttachmentNumber()I
    .locals 1

    .line 51
    iget v0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->attachmentNumber:I

    return v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getPriority()J
    .locals 2

    .line 98
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->uploadAttachmentOperation:Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->getPriority()J

    move-result-wide v0

    return-wide v0
.end method
