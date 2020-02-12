.class public Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "CancelAttachmentUploadCompositeOperation.java"


# static fields
.field public static final RFC_ATTACHMENT_NOT_FOUND_IN_DATABASE:I = 0x1


# instance fields
.field private final attachmentNumber:I

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final suboperations:[Lio/olvid/engine/datatypes/Operation;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 1

    .line 21
    invoke-static {p2, p3}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->computeUniqueUid(Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 22
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 23
    iput p3, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->attachmentNumber:I

    const/4 p4, 0x2

    new-array p4, p4, [Lio/olvid/engine/datatypes/Operation;

    .line 24
    iput-object p4, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    .line 26
    iget-object p4, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    new-instance p5, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;

    invoke-direct {p5, p1, p2, p3}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;I)V

    const/4 p3, 0x0

    aput-object p5, p4, p3

    .line 27
    iget-object p4, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    new-instance p5, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;

    invoke-direct {p5, p1, p2}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;)V

    const/4 p1, 0x1

    aput-object p5, p4, p1

    .line 29
    :goto_0
    iget-object p2, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    array-length p4, p2

    sub-int/2addr p4, p1

    if-ge p3, p4, :cond_0

    add-int/lit8 p4, p3, 0x1

    .line 30
    aget-object p5, p2, p4

    aget-object p2, p2, p3

    invoke-virtual {p5, p2}, Lio/olvid/engine/datatypes/Operation;->addDependency(Lio/olvid/engine/datatypes/Operation;)V

    move p3, p4

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 5

    .line 45
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 46
    invoke-virtual {v3, v4}, Lio/olvid/engine/datatypes/Operation;->cancel(Ljava/lang/Integer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public doExecute()V
    .locals 7

    const/4 v0, 0x0

    .line 54
    :try_start_0
    new-instance v1, Lio/olvid/engine/datatypes/OperationQueue;

    invoke-direct {v1}, Lio/olvid/engine/datatypes/OperationQueue;-><init>()V

    .line 55
    iget-object v2, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 56
    invoke-virtual {v1, v6}, Lio/olvid/engine/datatypes/OperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 58
    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/OperationQueue;->execute(I)V

    .line 59
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/OperationQueue;->join()V

    .line 61
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->cancelWasRequested()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p0, v0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->cancel(Ljava/lang/Integer;)V

    .line 79
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->processCancel()V

    return-void

    .line 65
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    array-length v2, v1

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v3, v1, v4

    .line 66
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Operation;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-virtual {p0, v0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->cancel(Ljava/lang/Integer;)V

    .line 79
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->processCancel()V

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->setFinished()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 73
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-virtual {p0, v0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->cancel(Ljava/lang/Integer;)V

    .line 79
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->processCancel()V

    :goto_2
    return-void

    .line 78
    :goto_3
    invoke-virtual {p0, v0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->cancel(Ljava/lang/Integer;)V

    .line 79
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->processCancel()V

    .line 81
    throw v1
.end method

.method public getAttachmentNumber()I
    .locals 1

    .line 39
    iget v0, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->attachmentNumber:I

    return v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method
