.class Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator$1;
.super Ljava/lang/Object;
.source "CancelAttachmentUploadCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->scheduleNewCancelAttachmentUploadCompositeOperationQueueing(Lio/olvid/engine/datatypes/UID;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;

.field final synthetic val$attachmentNumber:I

.field final synthetic val$messageUid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method constructor <init>(Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;Lio/olvid/engine/datatypes/UID;I)V
    .locals 0

    .line 79
    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator$1;->this$0:Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;

    iput-object p2, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator$1;->val$messageUid:Lio/olvid/engine/datatypes/UID;

    iput p3, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator$1;->val$attachmentNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator$1;->this$0:Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator$1;->val$messageUid:Lio/olvid/engine/datatypes/UID;

    iget v2, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator$1;->val$attachmentNumber:I

    invoke-static {v0, v1, v2}, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->access$000(Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;Lio/olvid/engine/datatypes/UID;I)V

    return-void
.end method
