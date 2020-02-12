.class Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator$1;
.super Ljava/lang/Object;
.source "CreateServerSessionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->scheduleNewCreateServerSessionCompositeOperationQueueing(Lio/olvid/engine/datatypes/Identity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

.field final synthetic val$identity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator$1;->val$identity:Lio/olvid/engine/datatypes/Identity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator$1;->val$identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1}, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->access$000(Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;Lio/olvid/engine/datatypes/Identity;)V

    return-void
.end method
