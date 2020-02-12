.class Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$1;
.super Ljava/lang/Object;
.source "DeleteMessageAndAttachmentsCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->scheduleNewDeleteMessageAndAttachmentsFromServerOperationQueueing(Lio/olvid/engine/datatypes/UID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;

.field final synthetic val$messageUid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;

    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$1;->val$messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$1;->val$messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v1}, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->access$000(Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method
