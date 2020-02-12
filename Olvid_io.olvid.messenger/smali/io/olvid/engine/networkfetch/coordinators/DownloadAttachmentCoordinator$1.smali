.class Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;
.super Ljava/lang/Object;
.source "DownloadAttachmentCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->scheduleNewDownloadAttachmentOperationQueueing(Lio/olvid/engine/datatypes/UID;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

.field final synthetic val$attachmentNumber:I

.field final synthetic val$initialPriority:J

.field final synthetic val$messageUid:Lio/olvid/engine/datatypes/UID;

.field final synthetic val$priorityCategory:I


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IIJ)V
    .locals 0

    .line 140
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;->val$messageUid:Lio/olvid/engine/datatypes/UID;

    iput p3, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;->val$attachmentNumber:I

    iput p4, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;->val$priorityCategory:I

    iput-wide p5, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;->val$initialPriority:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 140
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;->val$messageUid:Lio/olvid/engine/datatypes/UID;

    iget v2, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;->val$attachmentNumber:I

    iget v3, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;->val$priorityCategory:I

    iget-wide v4, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;->val$initialPriority:J

    invoke-static/range {v0 .. v5}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->access$000(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IIJ)V

    return-void
.end method
