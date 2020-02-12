.class Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;
.super Ljava/lang/Object;
.source "GroupMemberSuppressionDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 96
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->dismiss()V

    .line 98
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    invoke-static {p1}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->access$000(Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    invoke-static {p1}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->access$000(Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 102
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    invoke-static {p1}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->access$000(Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [[B

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->access$000(Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/messenger/databases/entity/Contact;

    if-eqz v3, :cond_1

    .line 108
    iget-object v5, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    const v6, 0x7f1001ca

    invoke-virtual {v5, v6}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_1
    invoke-virtual {v4}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v4, v4, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_2
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    invoke-virtual {v3}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1100e9

    invoke-direct {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f1000a0

    .line 117
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    .line 118
    invoke-virtual {v3}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    iget-object v5, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    invoke-static {v5}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->access$000(Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    invoke-static {v7}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->access$000(Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v2, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    invoke-static {v2}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->access$300(Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10003d

    new-instance v2, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2$1;

    invoke-direct {v2, p0, p1}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2$1;-><init>(Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment$2;[[B)V

    .line 119
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10002d

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method
