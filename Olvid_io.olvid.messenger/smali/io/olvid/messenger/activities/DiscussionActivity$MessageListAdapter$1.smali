.class Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

.field final synthetic val$this$0:Lio/olvid/messenger/activities/DiscussionActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 0

    .line 1713
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->val$this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1713
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1716
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$2800(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v0

    .line 1717
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$2900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Z

    move-result v1

    .line 1718
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {v2, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$2802(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 1719
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v3, v2, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v3}, Lio/olvid/messenger/activities/DiscussionActivity;->access$300(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/viewModels/DiscussionViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->isSelectingForDeletion()Z

    move-result v3

    invoke-static {v2, v3}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$2902(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Z)Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1720
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {v3}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$2900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1722
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$400(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$400(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 1725
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v1, v1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v3, v3, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v3}, Lio/olvid/messenger/activities/DiscussionActivity;->access$3000(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/appcompat/view/ActionMode$Callback;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/olvid/messenger/activities/DiscussionActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v1

    invoke-static {v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$402(Lio/olvid/messenger/activities/DiscussionActivity;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 1726
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$2900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1728
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$400(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1729
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$400(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1733
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 1734
    :cond_4
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$400(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1735
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$400(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 1739
    :cond_5
    :goto_0
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->notifyDataSetChanged()V

    .line 1740
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$400(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 1741
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$400(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v1, v1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const v3, 0x7f10001b

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v1, v3, v2}, Lio/olvid/messenger/activities/DiscussionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method
