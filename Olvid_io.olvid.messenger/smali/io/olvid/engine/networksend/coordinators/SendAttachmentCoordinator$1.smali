.class Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$1;
.super Ljava/lang/Object;
.source "SendAttachmentCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->scheduleNewSendAttachmentCompositeOperationQueueing(Lio/olvid/engine/datatypes/UID;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

.field final synthetic val$attachmentNumber:I

.field final synthetic val$initialPriority:J

.field final synthetic val$messageUid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method constructor <init>(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IJ)V
    .locals 0

    .line 120
    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$1;->this$0:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    iput-object p2, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$1;->val$messageUid:Lio/olvid/engine/datatypes/UID;

    iput p3, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$1;->val$attachmentNumber:I

    iput-wide p4, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$1;->val$initialPriority:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 120
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$1;->this$0:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$1;->val$messageUid:Lio/olvid/engine/datatypes/UID;

    iget v2, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$1;->val$attachmentNumber:I

    iget-wide v3, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$1;->val$initialPriority:J

    invoke-static {v0, v1, v2, v3, v4}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->access$000(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IJ)V

    return-void
.end method
