.class Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1$1;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;

.field final synthetic val$contact:Lio/olvid/messenger/databases/entity/Contact;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1$1;->this$3:Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;

    iput-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1$1;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 336
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1$1;->this$3:Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;->this$2:Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$6;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$6;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1$1;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1$1;->this$3:Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;->this$2:Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$6;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$6;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1$1;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setSelection(II)V

    return-void
.end method
