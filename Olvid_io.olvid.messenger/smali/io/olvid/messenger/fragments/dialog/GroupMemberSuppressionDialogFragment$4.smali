.class Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$4;
.super Ljava/lang/Object;
.source "GroupMemberSuppressionDialogFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/Contact;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$4;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 148
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$4;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$4;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    invoke-static {v0, p1}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->access$002(Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
