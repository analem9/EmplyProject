.class Lio/olvid/messenger/fragments/DiscussionListFragment$5;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

.field final synthetic val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$5;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    iput-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$5;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 300
    iget-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$5;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 301
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 302
    new-instance p2, Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;

    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$5;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$200(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    move-result-object v0

    iget-object v0, v0, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-wide v0, v0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-direct {p2, v0, v1, p1}, Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;-><init>(JLjava/lang/String;)V

    invoke-static {p2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 304
    :cond_0
    new-instance p1, Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;

    iget-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$5;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {p2}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$200(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    move-result-object p2

    iget-object p2, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;-><init>(JLjava/lang/String;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
