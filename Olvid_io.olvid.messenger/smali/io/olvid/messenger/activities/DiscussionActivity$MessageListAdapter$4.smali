.class Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$4;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->onViewAttachedToWindow(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

.field final synthetic val$holder:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V
    .locals 0

    .line 1987
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$4;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$4;->val$holder:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1990
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$4;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$4;->val$holder:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3400(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$3500(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Landroid/view/View;)V

    return-void
.end method
