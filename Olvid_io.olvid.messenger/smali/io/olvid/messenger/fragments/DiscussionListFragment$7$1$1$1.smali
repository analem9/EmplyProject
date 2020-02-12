.class Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1$1;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1$1;->this$3:Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 380
    iget-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1$1;->this$3:Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;

    iget-object p1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;->this$2:Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;

    iget-object p1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$7;

    iget-object p1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$7;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1$1;->this$3:Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;->this$2:Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1$1;->this$3:Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;

    iget-object p1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;->this$2:Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;

    iget-object p1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$7;

    iget-object p1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$7;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1$1;->this$3:Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;->this$2:Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setSelection(II)V

    return-void
.end method
