.class Lio/olvid/messenger/activities/MessageDetailsActivity$1;
.super Ljava/lang/Object;
.source "MessageDetailsActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MessageDetailsActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MessageDetailsActivity;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$1;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$MessageDetailsActivity$1(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$1;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->discussionBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic lambda$onChanged$1$MessageDetailsActivity$1(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 4

    .line 186
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    iget-object v2, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    const/4 v3, 0x1

    .line 189
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 190
    invoke-static {v0, v1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
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

    .line 195
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$1$OqegkR8UTx1L1zQP1TwtVmgICt0;

    invoke-direct {v1, p0, v0}, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$1$OqegkR8UTx1L1zQP1TwtVmgICt0;-><init>(Lio/olvid/messenger/activities/MessageDetailsActivity$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChanged(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 3

    const v0, 0x7f06001d

    if-eqz p1, :cond_2

    .line 184
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    new-instance v0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$1$BsGb_1JC3eTzD43jZGXznwN97GI;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$1$BsGb_1JC3eTzD43jZGXznwN97GI;-><init>(Lio/olvid/messenger/activities/MessageDetailsActivity$1;Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    .line 197
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$1;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object p1, p1, Lio/olvid/messenger/activities/MessageDetailsActivity;->discussionBackground:Landroid/widget/ImageView;

    const v0, 0xffffff

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$1;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v1, v1, Lio/olvid/messenger/activities/MessageDetailsActivity;->discussionBackground:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->getColorJson()Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->getColor()I

    move-result v0

    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->getAlpha()F

    move-result p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    add-int/2addr v0, p1

    .line 203
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$1;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object p1, p1, Lio/olvid/messenger/activities/MessageDetailsActivity;->discussionBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$1;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object p1, p1, Lio/olvid/messenger/activities/MessageDetailsActivity;->discussionBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$1;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$1;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object p1, p1, Lio/olvid/messenger/activities/MessageDetailsActivity;->discussionBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$1;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 179
    check-cast p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity$1;->onChanged(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    return-void
.end method
