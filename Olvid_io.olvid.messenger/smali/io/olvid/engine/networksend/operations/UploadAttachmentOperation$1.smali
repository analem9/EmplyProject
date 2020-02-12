.class Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;
.super Ljava/lang/Object;
.source "UploadAttachmentOperation.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->doExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field chunkLength:J

.field final synthetic this$0:Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;

.field totalLength:J

.field userInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;


# direct methods
.method constructor <init>(Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;Lio/olvid/engine/networksend/datatypes/SendManagerSession;)V
    .locals 1

    .line 125
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->this$0:Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;

    iput-object p2, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->val$sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->userInfo:Ljava/util/HashMap;

    .line 130
    iget-object p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->userInfo:Ljava/util/HashMap;

    iget-object p2, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->this$0:Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;

    invoke-static {p2}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->access$000(Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "attachmentNumber"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->userInfo:Ljava/util/HashMap;

    iget-object p2, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->this$0:Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;

    invoke-static {p2}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->access$100(Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;)Lio/olvid/engine/datatypes/UID;

    move-result-object p2

    const-string v0, "messageUid"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->this$0:Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;

    invoke-static {p1}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->access$200(Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;)Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getCiphertextLength()J

    move-result-wide p1

    iput-wide p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->totalLength:J

    .line 133
    iget-object p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->this$0:Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;

    invoke-static {p1}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->access$200(Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;)Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getCiphertextChunkLength()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->chunkLength:J

    return-void
.end method


# virtual methods
.method public onProgress(J)V
    .locals 4

    .line 138
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->this$0:Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;

    invoke-static {v0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->access$200(Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;)Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getAcknowledgedChunkCount()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->chunkLength:J

    mul-long v0, v0, v2

    add-long/2addr v0, p1

    long-to-float p1, v0

    iget-wide v0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->totalLength:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    .line 139
    iget-object p2, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->userInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "progress"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->val$sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object p1, p1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    iget-object p2, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;->userInfo:Ljava/util/HashMap;

    const-string v0, "network_send_notification_attachment_upload_progress"

    invoke-interface {p1, v0, p2}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
