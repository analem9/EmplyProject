.class Lio/olvid/messenger/activities/DiscussionActivity$7;
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
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/Contact;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;

.field final synthetic val$toolBar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$7;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$7;->val$toolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 519
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$7;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$7;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$300(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/viewModels/DiscussionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussion()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Discussion;

    if-eqz v0, :cond_6

    .line 525
    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$7;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const v5, 0x7f1001ca

    invoke-virtual {v4, v5}, Lio/olvid/messenger/activities/DiscussionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 529
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/messenger/databases/entity/Contact;

    if-nez v6, :cond_0

    .line 531
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_0
    invoke-virtual {v7}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    goto :goto_0

    .line 536
    :cond_1
    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$7;->val$toolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 538
    :cond_2
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$7;->val$toolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 542
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Contact;

    .line 543
    iget v0, v0, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    if-lez v0, :cond_3

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 549
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$7;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$800(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 550
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$7;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$900(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 552
    :cond_5
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$7;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$800(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 553
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080096

    invoke-static {p1, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 555
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$7$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$7$1;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$7;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    invoke-virtual {p1, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 566
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$7;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$900(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    invoke-virtual {p1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    :cond_6
    :goto_3
    return-void
.end method
