.class Lio/olvid/messenger/activities/DiscussionActivity$17;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 0

    .line 1556
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$17;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1559
    new-instance p1, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;

    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$17;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2000(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;-><init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method
