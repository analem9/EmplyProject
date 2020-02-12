.class public Lio/olvid/messenger/activities/FullScreenQrCodeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FullScreenQrCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BYTES_IDENTITY:Ljava/lang/String; = "bytes_identity"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final INITIAL_POSITION:Ljava/lang/String; = "initial_position"

.field public static final QR_CODE_BITMAP:Ljava/lang/String; = "qr_code_bitmap"


# instance fields
.field private displayNameTextView:Landroid/widget/TextView;

.field initialPosition:Landroid/graphics/Rect;

.field private initialView:Lio/olvid/messenger/customClasses/InitialView;

.field private maskView:Landroid/view/View;

.field private qrCodeImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private finisher()V
    .locals 15

    .line 139
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 140
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 141
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 142
    invoke-virtual {p0}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-le v0, v1, :cond_0

    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    int-to-float v2, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v0, v3

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    int-to-float v0, v1

    int-to-float v1, v2

    .line 155
    :goto_0
    iget-object v2, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 157
    iget-object v3, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->maskView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    iget-object v7, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    const/4 v8, 0x0

    aput v7, v6, v8

    iget-object v7, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    const/4 v9, 0x1

    aput v7, v6, v9

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 158
    iget-object v4, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->maskView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v7, v5, [F

    iget-object v10, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v7, v8

    iget-object v10, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v7, v9

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 159
    iget-object v6, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->maskView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v10, v5, [F

    aput v2, v10, v8

    aput v2, v10, v9

    invoke-static {v6, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 160
    iget-object v7, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->maskView:Landroid/view/View;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v5, [F

    aput v2, v11, v8

    aput v2, v11, v9

    invoke-static {v7, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v10, 0x1

    .line 161
    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 162
    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 163
    invoke-virtual {v6, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 164
    invoke-virtual {v7, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 166
    iget-object v10, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->X:Landroid/util/Property;

    new-array v12, v5, [F

    aput v0, v12, v8

    iget-object v0, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    aput v0, v12, v9

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 167
    iget-object v10, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v12, v5, [F

    aput v1, v12, v8

    iget-object v1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, v12, v9

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 168
    iget-object v10, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v5, [F

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v12, v8

    aput v2, v12, v9

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 169
    iget-object v11, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v5, [F

    aput v13, v14, v8

    aput v2, v14, v9

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0xc8

    .line 170
    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 171
    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 172
    invoke-virtual {v10, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 173
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 176
    iget-object v11, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->displayNameTextView:Landroid/widget/TextView;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v11, v12, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 178
    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 180
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 181
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 182
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 184
    new-instance v0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity$1;-><init>(Lio/olvid/messenger/activities/FullScreenQrCodeActivity;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 135
    invoke-direct {p0}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->finisher()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->finisher()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001f

    .line 40
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->setContentView(I)V

    const v0, 0x7f0901c0

    .line 41
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->maskView:Landroid/view/View;

    const v0, 0x7f09007c

    .line 42
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090239

    .line 43
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    const v1, 0x7f09019a

    .line 44
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object v1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    const v1, 0x7f090124

    .line 45
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->displayNameTextView:Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->maskView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 48
    iget-object v1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->maskView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 50
    iget-object v1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 51
    iget-object v1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 54
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "qr_code_bitmap"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const-string v2, "initial_position"

    .line 58
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    const-string v3, "bytes_identity"

    .line 59
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "display_name"

    .line 60
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 64
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 65
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    invoke-virtual {p0}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070093

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    if-le v4, v5, :cond_0

    mul-int/lit8 v7, v6, 0x2

    sub-int v7, v5, v7

    int-to-float v6, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v6

    move v5, v4

    move v4, v6

    goto :goto_0

    :cond_0
    mul-int/lit8 v7, v6, 0x2

    sub-int v7, v4, v7

    sub-int/2addr v5, v4

    add-int/2addr v5, v6

    int-to-float v4, v5

    int-to-float v5, v6

    .line 79
    :goto_0
    iget-object v6, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    int-to-float v8, v7

    div-float/2addr v6, v8

    .line 81
    iget-object v8, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-static {v1, v7, v7, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    iget-object v1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    invoke-static {v0}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 83
    iget-object v1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->displayNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    .line 89
    iget-object p1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->maskView:Landroid/view/View;

    sget-object v0, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget-object v3, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v2, v9

    iget-object v3, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    const/4 v7, 0x1

    aput v3, v2, v7

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->maskView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v3, v1, [F

    iget-object v8, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    aput v8, v3, v9

    iget-object v8, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    aput v8, v3, v7

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 91
    iget-object v2, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->maskView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v1, [F

    aput v6, v8, v9

    aput v6, v8, v7

    invoke-static {v2, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->maskView:Landroid/view/View;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v1, [F

    aput v6, v10, v9

    aput v6, v10, v7

    invoke-static {v3, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v10, 0x1

    .line 93
    invoke-virtual {p1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 94
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 95
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 96
    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 98
    iget-object v8, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->X:Landroid/util/Property;

    new-array v11, v1, [F

    iget-object v12, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v11, v9

    aput v4, v11, v7

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 99
    iget-object v8, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v11, v1, [F

    iget-object v12, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v11, v9

    aput v5, v11, v7

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 100
    iget-object v8, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v11, v1, [F

    aput v6, v11, v9

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v7

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 101
    iget-object v10, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v1, [F

    aput v6, v13, v9

    aput v12, v13, v7

    invoke-static {v10, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v9, 0xc8

    .line 102
    invoke-virtual {v4, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 103
    invoke-virtual {v5, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 104
    invoke-virtual {v8, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 105
    invoke-virtual {v6, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 108
    iget-object v7, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->displayNameTextView:Landroid/widget/TextView;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v7, v11, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 112
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 113
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 115
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 116
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->initialPosition:Landroid/graphics/Rect;

    const-string v1, "initial_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
