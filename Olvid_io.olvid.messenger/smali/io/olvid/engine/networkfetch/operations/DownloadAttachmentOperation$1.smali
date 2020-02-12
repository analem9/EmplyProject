.class Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;
.super Ljava/lang/Object;
.source "DownloadAttachmentOperation.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->doExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;

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

.field final synthetic val$fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)V
    .locals 1

    .line 126
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;->this$0:Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;

    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;->val$fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;->userInfo:Ljava/util/HashMap;

    .line 130
    iget-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;->userInfo:Ljava/util/HashMap;

    iget-object p2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;->this$0:Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;

    invoke-static {p2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->access$000(Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "attachmentNumber"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;->userInfo:Ljava/util/HashMap;

    iget-object p2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;->this$0:Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;

    invoke-static {p2}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->access$100(Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;)Lio/olvid/engine/datatypes/UID;

    move-result-object p2

    const-string v0, "messageUid"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onProgress(J)V
    .locals 2

    .line 136
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;->this$0:Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getReceivedLength()J

    move-result-wide v0

    add-long/2addr v0, p1

    long-to-float p1, v0

    iget-object p2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;->this$0:Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;

    iget-object p2, p2, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->attachment:Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-virtual {p2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getExpectedLength()J

    move-result-wide v0

    long-to-float p2, v0

    div-float/2addr p1, p2

    .line 137
    iget-object p2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;->userInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "progress"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;->val$fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object p1, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    iget-object p2, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation$1;->userInfo:Ljava/util/HashMap;

    const-string v0, "network_fetch_notification_attachment_download_progress"

    invoke-interface {p1, v0, p2}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
