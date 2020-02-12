.class Lio/olvid/messenger/activities/DiscussionActivity$6;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lio/olvid/messenger/databases/entity/Discussion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;

.field final synthetic val$toolBar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->val$toolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lio/olvid/messenger/databases/entity/Discussion;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 483
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->val$toolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 484
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$002(Lio/olvid/messenger/activities/DiscussionActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 485
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->finish()V

    return-void

    .line 488
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->invalidateOptionsMenu()V

    .line 489
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->val$toolBar:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p1, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 491
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    new-instance v1, Lio/olvid/messenger/activities/DiscussionActivity$6$1;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$6$1;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$6;Lio/olvid/messenger/databases/entity/Discussion;)V

    invoke-static {v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$002(Lio/olvid/messenger/activities/DiscussionActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 497
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$600(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f100145

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 498
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v0, v2}, Lio/olvid/messenger/activities/DiscussionActivity;->setLocked(Z)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    const v3, 0x7f100144

    if-eqz v1, :cond_2

    .line 500
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    new-instance v1, Lio/olvid/messenger/activities/DiscussionActivity$6$2;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$6$2;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$6;Lio/olvid/messenger/databases/entity/Discussion;)V

    invoke-static {v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$002(Lio/olvid/messenger/activities/DiscussionActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 506
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$600(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 507
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v0, v2}, Lio/olvid/messenger/activities/DiscussionActivity;->setLocked(Z)V

    goto :goto_0

    .line 509
    :cond_2
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$002(Lio/olvid/messenger/activities/DiscussionActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 510
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$600(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 511
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity;->setLocked(Z)V

    .line 513
    :goto_0
    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    if-nez p1, :cond_3

    .line 514
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->setShowInboundSenderName()V

    :cond_3
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 479
    check-cast p1, Lio/olvid/messenger/databases/entity/Discussion;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$6;->onChanged(Lio/olvid/messenger/databases/entity/Discussion;)V

    return-void
.end method
