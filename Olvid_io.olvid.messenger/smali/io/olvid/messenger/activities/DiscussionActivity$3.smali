.class Lio/olvid/messenger/activities/DiscussionActivity$3;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;

.field final synthetic val$sizingView:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroid/view/View;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$3;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$3;->val$sizingView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 369
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$3;->val$sizingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 370
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$3;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$200(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$3;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v2}, Lio/olvid/messenger/activities/DiscussionActivity;->access$200(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setPadding(IIII)V

    return-void
.end method
