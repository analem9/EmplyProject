.class public Lio/olvid/messenger/activities/DiscussionActivity$MessageListScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DiscussionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/DiscussionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageListScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;


# direct methods
.method public constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 0

    .line 1631
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListScrollListener;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1634
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListScrollListener;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListScrollListener;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2500(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListScrollListener;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object p2

    invoke-static {p2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 1636
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListScrollListener;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2600(Lio/olvid/messenger/activities/DiscussionActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 1637
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListScrollListener;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2600(Lio/olvid/messenger/activities/DiscussionActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    goto :goto_2

    .line 1640
    :cond_2
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListScrollListener;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2600(Lio/olvid/messenger/activities/DiscussionActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 1641
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListScrollListener;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2600(Lio/olvid/messenger/activities/DiscussionActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    :cond_3
    :goto_2
    return-void
.end method
