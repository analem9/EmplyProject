.class public Lio/olvid/messenger/customClasses/ImageViewPreference;
.super Landroidx/preference/Preference;
.source "ImageViewPreference.java"


# instance fields
.field colorJson:Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

.field imagePath:Ljava/lang/String;

.field widgetImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->widgetImageView:Landroid/widget/ImageView;

    const p1, 0x7f0c00aa

    .line 46
    invoke-virtual {p0, p1}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->widgetImageView:Landroid/widget/ImageView;

    const p1, 0x7f0c00aa

    .line 41
    invoke-virtual {p0, p1}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->widgetImageView:Landroid/widget/ImageView;

    const p1, 0x7f0c00aa

    .line 36
    invoke-virtual {p0, p1}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->widgetImageView:Landroid/widget/ImageView;

    const p1, 0x7f0c00aa

    .line 31
    invoke-virtual {p0, p1}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private redraw()V
    .locals 4

    .line 69
    iget-object v0, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->widgetImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->colorJson:Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    const/16 v2, 0xff

    if-eqz v1, :cond_1

    const/high16 v3, -0x1000000

    .line 73
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->getColor()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 74
    iget-object v0, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->widgetImageView:Landroid/widget/ImageView;

    const v1, 0x7f080105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v0, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->widgetImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->colorJson:Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->getAlpha()F

    move-result v1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->imagePath:Ljava/lang/String;

    const v3, 0xffffff

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 78
    iget-object v0, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->widgetImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 79
    new-instance v0, Lio/olvid/messenger/customClasses/-$$Lambda$ImageViewPreference$6T3FlTjecii4xPeDzf5wPc_rnf4;

    invoke-direct {v0, p0}, Lio/olvid/messenger/customClasses/-$$Lambda$ImageViewPreference$6T3FlTjecii4xPeDzf5wPc_rnf4;-><init>(Lio/olvid/messenger/customClasses/ImageViewPreference;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 93
    iget-object v0, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->widgetImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 94
    iget-object v0, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->widgetImageView:Landroid/widget/ImageView;

    const v1, 0x7f080106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$ImageViewPreference(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->widgetImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic lambda$redraw$1$ImageViewPreference()V
    .locals 4

    .line 80
    iget-object v0, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    iget-object v2, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    const/4 v3, 0x1

    .line 83
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 84
    invoke-static {v0, v1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating ExifInterface for file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 89
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/olvid/messenger/customClasses/-$$Lambda$ImageViewPreference$uAVSLi3ahibE6gz0-Qkq8TiYZwc;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/customClasses/-$$Lambda$ImageViewPreference$uAVSLi3ahibE6gz0-Qkq8TiYZwc;-><init>(Lio/olvid/messenger/customClasses/ImageViewPreference;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f090196

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->widgetImageView:Landroid/widget/ImageView;

    .line 53
    invoke-direct {p0}, Lio/olvid/messenger/customClasses/ImageViewPreference;->redraw()V

    return-void
.end method

.method public setColor(Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->colorJson:Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->imagePath:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lio/olvid/messenger/customClasses/ImageViewPreference;->redraw()V

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->colorJson:Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    .line 64
    iput-object p1, p0, Lio/olvid/messenger/customClasses/ImageViewPreference;->imagePath:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lio/olvid/messenger/customClasses/ImageViewPreference;->redraw()V

    return-void
.end method
