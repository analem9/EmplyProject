.class Lio/olvid/messenger/activities/DiscussionActivity$4;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private inflater:Landroid/view/MenuInflater;

.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$4;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 7

    .line 417
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x0

    const v0, 0x7f09003c

    if-eq p1, v0, :cond_0

    return p2

    .line 419
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$4;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$300(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/viewModels/DiscussionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getSelectedMessageIds()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 421
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$4;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const v3, 0x7f1100e9

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f100090

    .line 422
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$4;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    .line 423
    invoke-virtual {v2}, Lio/olvid/messenger/activities/DiscussionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0f0000

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v1, 0x7f10003d

    new-instance v2, Lio/olvid/messenger/activities/DiscussionActivity$4$1;

    invoke-direct {v2, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$4$1;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$4;Ljava/util/List;)V

    .line 424
    invoke-virtual {p2, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10002d

    const/4 v1, 0x0

    .line 431
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 432
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_1
    return v0
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 396
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$4;->inflater:Landroid/view/MenuInflater;

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 448
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$4;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$300(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/viewModels/DiscussionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->deselectAll()V

    .line 449
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$4;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$402(Lio/olvid/messenger/activities/DiscussionActivity;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 402
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$4;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$300(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/viewModels/DiscussionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getSelectedMessageIds()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 406
    :cond_0
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 407
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 408
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$4;->inflater:Landroid/view/MenuInflater;

    const v1, 0x7f0d0001

    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$4;->inflater:Landroid/view/MenuInflater;

    const/high16 v1, 0x7f0d0000

    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    return v0
.end method
