.class Lio/olvid/messenger/fragments/DiscussionListFragment$6;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    .line 320
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$6;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    iput-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$6;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 323
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 325
    new-instance v0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment$6;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
