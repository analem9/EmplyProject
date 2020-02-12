.class public Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;
.super Lio/olvid/engine/datatypes/PriorityOperation;
.source "DownloadAttachmentOperation.java"


# static fields
.field public static final RFC_ATTACHMENT_CANNOT_BE_FETCHED:I = 0x6

.field public static final RFC_ATTACHMENT_CANNOT_BE_FOUND:I = 0x3

.field public static final RFC_DECRYPTION_ERROR:I = 0x5

.field public static final RFC_DOES_NOT_HAVE_THE_HIGHEST_PRIORITY:I = 0x8

.field public static final RFC_DOWNLOAD_PAUSED:I = 0xd

.field public static final RFC_FETCH_NOT_REQUESTED:I = 0xa

.field public static final RFC_INVALID_CHUNK:I = 0xb

.field public static final RFC_INVALID_SIGNED_URL:I = 0x2

.field public static final RFC_MARKED_FOR_DELETION:I = 0x9

.field public static final RFC_NETWORK_ERROR:I = 0x1

.field public static final RFC_NOT_YET_AVAILABLE_ON_SERVER:I = 0x7

.field public static final RFC_UNABLE_TO_WRITE_CHUNK_TO_FILE:I = 0xc

.field public static final RFC_UPLOAD_CANCELLED_BY_SENDER:I = 0xe


# instance fields
.field attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

.field private final attachmentNumber:I

.field private final coordinatorWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private priority:J

.field private final priorityCategory:I

.field private toIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/UID;IIJLio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 1

    .line 52
    invoke-static {p2, p3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->computeUniqueUid(Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    invoke-direct {p0, v0, p8, p9}, Lio/olvid/engine/datatypes/PriorityOperation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 53
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 54
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 55
    iput p3, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachmentNumber:I

    .line 56
    iput p4, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->priorityCategory:I

    .line 57
    iput-wide p5, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->priority:J

    .line 58
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->coordinatorWeakReference:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;)I
    .locals 0

    .line 25
    iget p0, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachmentNumber:I

    return p0
.end method

.method static synthetic access$100(Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;)Lio/olvid/engine/datatypes/UID;
    .locals 0

    .line 25
    iget-object p0, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object p0
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 10

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    .line 74
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 76
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v3, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachmentNumber:I

    invoke-static {v1, v2, v3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v2

    iput-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    .line 77
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    if-nez v2, :cond_2

    const/4 v2, 0x3

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :try_start_2
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 209
    :try_start_3
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    return-void

    .line 81
    :cond_2
    :try_start_4
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getMessage()Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iput-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 82
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->isMarkedForDeletion()Z

    move-result v2

    const/16 v3, 0x9

    if-eqz v2, :cond_5

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    :try_start_5
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_4

    .line 209
    :try_start_6
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    return-void

    .line 92
    :cond_5
    :try_start_7
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->cannotBeFetched()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x6

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 202
    :try_start_8
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_6
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_7

    .line 209
    :try_start_9
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_7
    return-void

    .line 97
    :cond_8
    :try_start_a
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->isDownloadRequested()Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0xa

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 202
    :try_start_b
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_9
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v1, :cond_a

    .line 209
    :try_start_c
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_2

    :cond_a
    return-void

    .line 102
    :cond_b
    :goto_0
    :try_start_d
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getReceivedLength()J

    move-result-wide v4

    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getExpectedLength()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_30

    .line 103
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancelWasRequested()Z

    move-result v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v2, :cond_e

    .line 202
    :try_start_e
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_c
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v1, :cond_d

    .line 209
    :try_start_f
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_2

    :cond_d
    return-void

    .line 106
    :cond_e
    :try_start_10
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->isMarkedForDeletion()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 202
    :try_start_11
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_f
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v1, :cond_10

    .line 209
    :try_start_12
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_2

    :cond_10
    return-void

    .line 110
    :cond_11
    :try_start_13
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->isDownloadRequested()Z

    move-result v2

    if-nez v2, :cond_14

    const/16 v2, 0xd

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 202
    :try_start_14
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_12
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v1, :cond_13

    .line 209
    :try_start_15
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_15
    .catch Ljava/sql/SQLException; {:try_start_15 .. :try_end_15} :catch_2

    :cond_13
    return-void

    .line 114
    :cond_14
    :try_start_16
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getChunkDownloadPrivateUrls()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v4, 0x2

    if-nez v2, :cond_17

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 202
    :try_start_17
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_15
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eqz v1, :cond_16

    .line 209
    :try_start_18
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_18
    .catch Ljava/sql/SQLException; {:try_start_18 .. :try_end_18} :catch_2

    :cond_16
    return-void

    .line 118
    :cond_17
    :try_start_19
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getChunkDownloadPrivateUrls()[Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v5}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getReceivedChunkCount()I

    move-result v5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1a

    const/16 v2, 0xe

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 202
    :try_start_1a
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_18
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-eqz v1, :cond_19

    .line 209
    :try_start_1b
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_1b
    .catch Ljava/sql/SQLException; {:try_start_1b .. :try_end_1b} :catch_2

    :cond_19
    return-void

    .line 123
    :cond_1a
    :try_start_1c
    new-instance v2, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentServerMethodForS3;

    iget-object v5, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    .line 124
    invoke-virtual {v5}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getChunkDownloadPrivateUrls()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getReceivedChunkCount()I

    move-result v6

    aget-object v5, v5, v6

    invoke-direct {v2, v5}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentServerMethodForS3;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0xc8

    .line 126
    new-instance v7, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;

    invoke-direct {v7, p0, v1}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;-><init>(Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)V

    invoke-virtual {v2, v5, v6, v7}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentServerMethodForS3;->setProgressListener(JLio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;)V

    .line 142
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentServerMethodForS3;->execute()B

    move-result v5

    .line 144
    iget-object v6, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    if-eqz v5, :cond_23

    const/4 v2, 0x1

    if-eq v5, v2, :cond_20

    if-eq v5, v4, :cond_1d

    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 202
    :try_start_1d
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_1b
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    if-eqz v1, :cond_1c

    .line 209
    :try_start_1e
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_1e
    .catch Ljava/sql/SQLException; {:try_start_1e .. :try_end_1e} :catch_2

    :cond_1c
    return-void

    .line 179
    :cond_1d
    :try_start_1f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 202
    :try_start_20
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_1e
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    if-eqz v1, :cond_1f

    .line 209
    :try_start_21
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_21
    .catch Ljava/sql/SQLException; {:try_start_21 .. :try_end_21} :catch_2

    :cond_1f
    return-void

    :cond_20
    const/4 v2, 0x7

    .line 182
    :try_start_22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 202
    :try_start_23
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_21
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    if-eqz v1, :cond_22

    .line 209
    :try_start_24
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_24
    .catch Ljava/sql/SQLException; {:try_start_24 .. :try_end_24} :catch_2

    :cond_22
    return-void

    .line 147
    :cond_23
    :try_start_25
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentServerMethodForS3;->getEncryptedChunk()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v2

    .line 149
    iget v4, v2, Lio/olvid/engine/datatypes/EncryptedBytes;->length:I

    iget-object v5, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v5}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getChunkLength()I

    move-result v5

    const/16 v6, 0xb

    if-eq v4, v5, :cond_26

    iget-object v4, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    .line 150
    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getReceivedLength()J

    move-result-wide v4

    iget v7, v2, Lio/olvid/engine/datatypes/EncryptedBytes;->length:I

    int-to-long v7, v7

    add-long/2addr v4, v7

    iget-object v7, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v7}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getExpectedLength()J

    move-result-wide v7

    cmp-long v9, v4, v7

    if-eqz v9, :cond_26

    .line 151
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 202
    :try_start_26
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_24
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    if-eqz v1, :cond_25

    .line 209
    :try_start_27
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_27
    .catch Ljava/sql/SQLException; {:try_start_27 .. :try_end_27} :catch_2

    :cond_25
    return-void

    .line 155
    :cond_26
    :try_start_28
    iget-object v4, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v4

    .line 156
    invoke-static {v4}, Lio/olvid/engine/crypto/Suite;->getAuthEnc(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v5

    .line 157
    new-instance v7, Lio/olvid/engine/encoder/Encoded;

    invoke-interface {v5, v4, v2}, Lio/olvid/engine/crypto/AuthEnc;->decrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/EncryptedBytes;)[B

    move-result-object v4

    invoke-direct {v7, v4}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    .line 158
    invoke-static {v7}, Lio/olvid/engine/datatypes/Chunk;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/Chunk;

    move-result-object v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 163
    :try_start_29
    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Chunk;->getChunkNumber()I

    move-result v5

    iget-object v7, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v7}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getReceivedChunkCount()I

    move-result v7

    if-eq v5, v7, :cond_29

    .line 164
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 202
    :try_start_2a
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_27
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    if-eqz v1, :cond_28

    .line 209
    :try_start_2b
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2b
    .catch Ljava/sql/SQLException; {:try_start_2b .. :try_end_2b} :catch_2

    :cond_28
    return-void

    .line 167
    :cond_29
    :try_start_2c
    iget-object v5, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Chunk;->getData()[B

    move-result-object v4

    iget v2, v2, Lio/olvid/engine/datatypes/EncryptedBytes;->length:I

    invoke-virtual {v5, v4, v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->writeToAttachmentFile([BI)Z

    move-result v2

    if-nez v2, :cond_2c

    const/16 v2, 0xc

    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_1
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 202
    :try_start_2d
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_2a
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    if-eqz v1, :cond_2b

    .line 209
    :try_start_2e
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2e
    .catch Ljava/sql/SQLException; {:try_start_2e .. :try_end_2e} :catch_2

    :cond_2b
    return-void

    .line 172
    :cond_2c
    :try_start_2f
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 173
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->coordinatorWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    if-eqz v2, :cond_2d

    .line 175
    iget-object v4, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v5, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachmentNumber:I

    invoke-virtual {v2, v4, v5}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->resetFailedAttemptCount(Lio/olvid/engine/datatypes/UID;I)V

    .line 190
    :cond_2d
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v4, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachmentNumber:I

    invoke-static {v1, v2, v4}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v2

    iput-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    .line 191
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getPriority()J

    move-result-wide v4

    iput-wide v4, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->priority:J

    goto/16 :goto_0

    :catch_0
    const/4 v2, 0x5

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_1
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    .line 202
    :try_start_30
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_2e
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    if-eqz v1, :cond_2f

    .line 209
    :try_start_31
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_31
    .catch Ljava/sql/SQLException; {:try_start_31 .. :try_end_31} :catch_2

    :cond_2f
    return-void

    .line 199
    :cond_30
    :try_start_32
    iget-object v0, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 200
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->setFinished()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 195
    :try_start_33
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    .line 202
    :try_start_34
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_31
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1

    :goto_1
    if-eqz v1, :cond_34

    .line 209
    :try_start_35
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_35
    .catch Ljava/sql/SQLException; {:try_start_35 .. :try_end_35} :catch_2

    goto :goto_4

    .line 202
    :goto_2
    :try_start_36
    iget-object v3, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 203
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 204
    invoke-virtual {p0, v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 206
    :cond_32
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->processCancel()V

    .line 208
    throw v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1

    :catchall_1
    move-exception v0

    .line 74
    :try_start_37
    throw v0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_33

    .line 209
    :try_start_38
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_39
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_33
    :goto_3
    throw v2
    :try_end_39
    .catch Ljava/sql/SQLException; {:try_start_39 .. :try_end_39} :catch_2

    :catch_2
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_34
    :goto_4
    return-void
.end method

.method public getAttachmentNumber()I
    .locals 1

    .line 224
    iget v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachmentNumber:I

    return v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 220
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getPriority()J
    .locals 2

    .line 216
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->priority:J

    return-wide v0
.end method

.method public getPriorityCategory()I
    .locals 1

    .line 228
    iget v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->priorityCategory:I

    return v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 232
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method
