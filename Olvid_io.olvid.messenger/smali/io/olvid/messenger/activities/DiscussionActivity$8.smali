.class Lio/olvid/messenger/activities/DiscussionActivity$8;
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
        "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$DiscussionActivity$8(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 598
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1000(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic lambda$onChanged$1$DiscussionActivity$8(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 4

    .line 589
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 591
    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    iget-object v2, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    const/4 v3, 0x1

    .line 592
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 593
    invoke-static {v0, v1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating ExifInterface for file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 598
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$8$tPdir-n4WwUHPjBy1L8IUnoWSWg;

    invoke-direct {v1, p0, v0}, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$8$tPdir-n4WwUHPjBy1L8IUnoWSWg;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$8;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$onChanged$2$DiscussionActivity$8(Lio/olvid/messenger/databases/entity/Discussion;)V
    .locals 5

    .line 627
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1200(Lio/olvid/messenger/activities/DiscussionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 629
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/olvid/messenger/databases/dao/MessageDao;->get(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 631
    invoke-virtual {v1, p1, v2}, Lio/olvid/messenger/databases/entity/Message;->sendReturnReceipt(Lio/olvid/messenger/databases/entity/Discussion;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onChanged(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 3

    const v0, 0x7f06001d

    if-eqz p1, :cond_2

    .line 587
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 588
    new-instance v0, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$8$VOQGYpn4c889ZsHIuAz99svWjDE;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$8$VOQGYpn4c889ZsHIuAz99svWjDE;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$8;Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    .line 600
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1000(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1000(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->getColorJson()Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 605
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->getColor()I

    move-result v0

    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    .line 606
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1000(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 608
    :cond_1
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1000(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 612
    :cond_2
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1000(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_0
    if-eqz p1, :cond_3

    .line 617
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 618
    iget-object p1, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    .line 620
    :cond_3
    invoke-static {}, Lio/olvid/messenger/activities/SettingsActivity;->getDefaultSendReturnReceipt()Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_4

    .line 622
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1100(Lio/olvid/messenger/activities/DiscussionActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 624
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1102(Lio/olvid/messenger/activities/DiscussionActivity;Z)Z

    .line 625
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$300(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/viewModels/DiscussionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussion()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Discussion;

    .line 626
    new-instance v0, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$8$uwgTmtWqToebt5EHhwPfGU2T5dI;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$8$uwgTmtWqToebt5EHhwPfGU2T5dI;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$8;Lio/olvid/messenger/databases/entity/Discussion;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 637
    :cond_4
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$8;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0, p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1102(Lio/olvid/messenger/activities/DiscussionActivity;Z)Z

    :goto_2
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 582
    check-cast p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$8;->onChanged(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    return-void
.end method
