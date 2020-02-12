.class Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$1;
.super Ljava/lang/Object;
.source "ServerQueryCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->scheduleNewServerQueryOperation(Lio/olvid/engine/datatypes/UID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;

.field final synthetic val$serverQueryUid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;

    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$1;->val$serverQueryUid:Lio/olvid/engine/datatypes/UID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 138
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$1;->val$serverQueryUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0, v1}, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->queueNewServerQueryOperation(Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method
