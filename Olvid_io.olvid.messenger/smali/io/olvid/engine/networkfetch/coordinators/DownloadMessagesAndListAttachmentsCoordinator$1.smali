.class Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$1;
.super Ljava/lang/Object;
.source "DownloadMessagesAndListAttachmentsCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->scheduleNewDownloadMessagesAndListAttachmentsOperationQueueing(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

.field final synthetic val$deviceUid:Lio/olvid/engine/datatypes/UID;

.field final synthetic val$identity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$1;->val$identity:Lio/olvid/engine/datatypes/Identity;

    iput-object p3, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$1;->val$deviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$1;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$1;->val$identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$1;->val$deviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v1, v2}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->access$000(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method
