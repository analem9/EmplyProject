.class Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;
.super Ljava/lang/Object;
.source "WebsocketCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->scheduleNewWebsocketCreationQueueing(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

.field final synthetic val$server:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;->val$server:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 203
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;->val$server:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->access$400(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Ljava/lang/String;)V

    return-void
.end method
