.class public Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "UploadMessageCompositeOperation.java"


# static fields
.field public static final RFC_BAD_POW_CHALLENGE:I = 0x9

.field public static final RFC_MESSAGE_NOT_FOUND_IN_DATABASE:I = 0x1

.field public static final RFC_NETWORK_ERROR:I = 0x3

.field public static final RFC_NO_POW_SOLUTION_AVAILABLE:I = 0x5

.field public static final RFC_POW_REJECTED_BY_SERVER:I = 0x6

.field public static final RFC_SERVER_REPORTED_QUOTA_EXCEEDED:I = 0x4


# instance fields
.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

.field private final suboperations:[Lio/olvid/engine/datatypes/Operation;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0, v0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 3

    .line 30
    invoke-direct {p0, p2, p3, p4}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 31
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 32
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    const/4 p3, 0x4

    new-array p3, p3, [Lio/olvid/engine/datatypes/Operation;

    .line 33
    iput-object p3, p0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    .line 35
    iget-object p3, p0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    new-instance p4, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;

    invoke-direct {p4, p1, p2}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;)V

    const/4 v0, 0x0

    aput-object p4, p3, v0

    .line 36
    iget-object p3, p0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    new-instance p4, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;

    invoke-direct {p4, p1, p2}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;)V

    const/4 v1, 0x1

    aput-object p4, p3, v1

    .line 37
    iget-object p3, p0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    new-instance p4, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;

    invoke-direct {p4, p1, p2}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;)V

    const/4 v2, 0x2

    aput-object p4, p3, v2

    .line 38
    iget-object p3, p0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    new-instance p4, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;

    invoke-direct {p4, p1, p2}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;)V

    const/4 p1, 0x3

    aput-object p4, p3, p1

    .line 40
    :goto_0
    iget-object p1, p0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    array-length p2, p1

    sub-int/2addr p2, v1

    if-ge v0, p2, :cond_0

    add-int/lit8 p2, v0, 0x1

    .line 41
    aget-object p3, p1, p2

    aget-object p1, p1, v0

    invoke-virtual {p3, p1}, Lio/olvid/engine/datatypes/Operation;->addDependency(Lio/olvid/engine/datatypes/Operation;)V

    move v0, p2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 5

    .line 51
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 52
    invoke-virtual {v3, v4}, Lio/olvid/engine/datatypes/Operation;->cancel(Ljava/lang/Integer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public doExecute()V
    .locals 7

    const/4 v0, 0x0

    .line 60
    :try_start_0
    new-instance v1, Lio/olvid/engine/datatypes/OperationQueue;

    invoke-direct {v1}, Lio/olvid/engine/datatypes/OperationQueue;-><init>()V

    .line 61
    iget-object v2, p0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 62
    invoke-virtual {v1, v6}, Lio/olvid/engine/datatypes/OperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 64
    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/OperationQueue;->execute(I)V

    .line 65
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/OperationQueue;->join()V

    .line 67
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->cancelWasRequested()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0, v0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->cancel(Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->processCancel()V

    return-void

    .line 71
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->suboperations:[Lio/olvid/engine/datatypes/Operation;

    array-length v2, v1

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v3, v1, v4

    .line 72
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Operation;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-virtual {p0, v0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->cancel(Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->processCancel()V

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->setFinished()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 79
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    invoke-virtual {p0, v0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->cancel(Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->processCancel()V

    :goto_2
    return-void

    .line 84
    :goto_3
    invoke-virtual {p0, v0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->cancel(Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->processCancel()V

    .line 87
    throw v1
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method
