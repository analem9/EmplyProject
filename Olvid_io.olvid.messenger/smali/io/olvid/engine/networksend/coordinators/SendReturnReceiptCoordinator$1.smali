.class Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator$1;
.super Ljava/lang/Object;
.source "SendReturnReceiptCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;->scheduleNewSendReturnReceiptOperation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;

.field final synthetic val$returnReceiptId:J


# direct methods
.method constructor <init>(Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;J)V
    .locals 0

    .line 76
    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator$1;->this$0:Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;

    iput-wide p2, p0, Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator$1;->val$returnReceiptId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 76
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator$1;->this$0:Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;

    iget-wide v1, p0, Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator$1;->val$returnReceiptId:J

    invoke-static {v0, v1, v2}, Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;->access$000(Lio/olvid/engine/networksend/coordinators/SendReturnReceiptCoordinator;J)V

    return-void
.end method
