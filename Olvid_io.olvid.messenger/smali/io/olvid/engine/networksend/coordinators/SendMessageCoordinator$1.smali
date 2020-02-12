.class Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator$1;
.super Ljava/lang/Object;
.source "SendMessageCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->scheduleNewSendMessageCompositeOperationQueueing(Lio/olvid/engine/datatypes/UID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;

.field final synthetic val$messageUid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method constructor <init>(Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator$1;->this$0:Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;

    iput-object p2, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator$1;->val$messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator$1;->this$0:Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator$1;->val$messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v1}, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->access$000(Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method
