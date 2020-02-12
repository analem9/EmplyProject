.class Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment$1;
.super Ljava/lang/Object;
.source "DiscussionSearchDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 59
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;->dismiss()V

    return-void
.end method
