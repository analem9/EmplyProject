.class Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment$2;
.super Ljava/lang/Object;
.source "DiscussionSearchDialogFragment.java"

# interfaces
.implements Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public discussionClicked(Landroid/view/View;Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;)V
    .locals 2

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-wide v0, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->discussionId:J

    invoke-static {p1, v0, v1}, Lio/olvid/messenger/App;->openDiscussionActivity(Landroid/content/Context;J)V

    .line 74
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;->dismiss()V

    return-void
.end method
