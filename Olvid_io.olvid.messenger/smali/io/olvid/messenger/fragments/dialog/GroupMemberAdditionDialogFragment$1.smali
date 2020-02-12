.class Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$1;
.super Ljava/lang/Object;
.source "GroupMemberAdditionDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->dismiss()V

    return-void
.end method
