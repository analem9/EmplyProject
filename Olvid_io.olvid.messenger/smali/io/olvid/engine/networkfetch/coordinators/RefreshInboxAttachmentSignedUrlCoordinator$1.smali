.class Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator$1;
.super Ljava/lang/Object;
.source "RefreshInboxAttachmentSignedUrlCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;->scheduleNewRefreshInboxAttachmentSignedUrlOperationQueueing(Lio/olvid/engine/datatypes/UID;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;

.field final synthetic val$attachmentNumber:I

.field final synthetic val$messageUid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;Lio/olvid/engine/datatypes/UID;I)V
    .locals 0

    .line 63
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;

    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator$1;->val$messageUid:Lio/olvid/engine/datatypes/UID;

    iput p3, p0, Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator$1;->val$attachmentNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator$1;->val$messageUid:Lio/olvid/engine/datatypes/UID;

    iget v2, p0, Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator$1;->val$attachmentNumber:I

    invoke-static {v0, v1, v2}, Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;->access$000(Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;Lio/olvid/engine/datatypes/UID;I)V

    return-void
.end method
