.class Lio/olvid/messenger/activities/GroupDetailsActivity$12;
.super Ljava/lang/Object;
.source "GroupDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

.field final synthetic val$group:Lio/olvid/messenger/databases/entity/Group;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Group;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->val$group:Lio/olvid/messenger/databases/entity/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 772
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$400(Lio/olvid/messenger/activities/GroupDetailsActivity;)Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$400(Lio/olvid/messenger/activities/GroupDetailsActivity;)Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    .line 773
    invoke-static {p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$400(Lio/olvid/messenger/activities/GroupDetailsActivity;)Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getPendingGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$400(Lio/olvid/messenger/activities/GroupDetailsActivity;)Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getPendingGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 784
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    const v1, 0x7f1100e9

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f100091

    .line 785
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    const v1, 0x7f100078

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->val$group:Lio/olvid/messenger/databases/entity/Group;

    .line 787
    invoke-virtual {v3}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p2

    const/4 v3, 0x1

    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    .line 788
    invoke-static {v4}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$400(Lio/olvid/messenger/activities/GroupDetailsActivity;)Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-static {v4}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$400(Lio/olvid/messenger/activities/GroupDetailsActivity;)Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    .line 789
    invoke-static {v4}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$400(Lio/olvid/messenger/activities/GroupDetailsActivity;)Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getPendingGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$400(Lio/olvid/messenger/activities/GroupDetailsActivity;)Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getPendingGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    .line 786
    invoke-virtual {v0, v1, v2}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10003d

    new-instance v0, Lio/olvid/messenger/activities/GroupDetailsActivity$12$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$12$1;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity$12;)V

    .line 790
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10002d

    const/4 v0, 0x0

    .line 803
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 804
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_3

    .line 776
    :cond_4
    :goto_2
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {p1, v0, v1}, Lio/olvid/engine/engine/Engine;->disbandGroup([B[B)V

    const p1, 0x7f1001fd

    .line 777
    invoke-static {p1, p2}, Lio/olvid/messenger/App;->toast(II)V

    .line 778
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 780
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
