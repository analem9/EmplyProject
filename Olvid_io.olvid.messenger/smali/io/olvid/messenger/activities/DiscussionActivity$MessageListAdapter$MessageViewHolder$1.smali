.class Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder$1;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

.field final synthetic val$this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)V
    .locals 0

    .line 2466
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder$1;->this$2:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder$1;->val$this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChange(IIII)V
    .locals 0

    .line 2469
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder$1;->this$2:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5800(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V

    return-void
.end method
