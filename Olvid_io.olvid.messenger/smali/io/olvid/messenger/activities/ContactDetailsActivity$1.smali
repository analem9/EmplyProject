.class Lio/olvid/messenger/activities/ContactDetailsActivity$1;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ContactDetailsActivity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$1;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public discussionClicked(Landroid/view/View;Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;)V
    .locals 2

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-wide v0, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->discussionId:J

    invoke-static {p1, v0, v1}, Lio/olvid/messenger/App;->openDiscussionActivity(Landroid/content/Context;J)V

    return-void
.end method
