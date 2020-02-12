.class public Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ColorPickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DISCUSSION_ID_KEY:Ljava/lang/String; = "discussion_id"


# instance fields
.field private alpha:Ljava/lang/Float;

.field private alphaEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field private alphaPreview:Landroid/view/View;

.field private alphaSeekBar:Landroid/widget/SeekBar;

.field private color:Ljava/lang/Integer;

.field private colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field private discussionId:J

.field private fullPreview:Landroid/view/View;

.field private initialAlpha:Ljava/lang/Float;

.field private initialColor:Ljava/lang/Integer;

.field private initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->discussionId:J

    return-wide v0
.end method

.method static synthetic access$100(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)Ljava/lang/Integer;
    .locals 0

    .line 32
    iget-object p0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->initialColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$102(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->initialColor:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)Ljava/lang/Float;
    .locals 0

    .line 32
    iget-object p0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->initialAlpha:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$202(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->initialAlpha:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$302(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->initialized:Z

    return p1
.end method

.method static synthetic access$400(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Integer;Ljava/lang/Float;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->setColorAndAlpha(Ljava/lang/Integer;Ljava/lang/Float;)V

    return-void
.end method

.method static synthetic access$500(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->setColor(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$600(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Float;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->setAlpha(Ljava/lang/Float;)V

    return-void
.end method

.method static synthetic access$700(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alphaSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$800(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 32
    iget-object p0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alphaEditText:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method public static newInstance(J)Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;
    .locals 3

    .line 50
    new-instance v0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-direct {v0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "discussion_id"

    .line 52
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 53
    invoke-virtual {v0, v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private save()V
    .locals 3

    .line 365
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->color:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alpha:Ljava/lang/Float;

    if-nez v1, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    new-instance v1, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alpha:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v1, v0, v2}, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;-><init>(IF)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 370
    :goto_1
    new-instance v0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$5;

    invoke-direct {v0, p0, v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$5;-><init>(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setAlpha(Ljava/lang/Float;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alpha:Ljava/lang/Float;

    .line 328
    invoke-direct {p0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->update()V

    return-void
.end method

.method private setColor(Ljava/lang/Integer;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->color:Ljava/lang/Integer;

    .line 323
    invoke-direct {p0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->update()V

    return-void
.end method

.method private setColorAndAlpha(Ljava/lang/Integer;Ljava/lang/Float;)V
    .locals 4

    .line 332
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alphaEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 336
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "#%06x"

    .line 338
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez p2, :cond_2

    const p1, 0x3e4ccccd    # 0.2f

    .line 341
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 343
    :cond_2
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alphaEditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "%.2f"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private update()V
    .locals 4

    .line 349
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->color:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const v0, 0xffffff

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 354
    :goto_0
    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alpha:Ljava/lang/Float;

    if-nez v1, :cond_1

    const v1, 0x3e4ccccd    # 0.2f

    goto :goto_1

    .line 357
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 359
    :goto_1
    iget-object v2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->fullPreview:Landroid/view/View;

    const/high16 v3, -0x1000000

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 360
    iget-object v2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alphaPreview:Landroid/view/View;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090094

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    .line 291
    :pswitch_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#ffeb3b"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 275
    :pswitch_1
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#009688"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 243
    :pswitch_2
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#f44336"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 251
    :pswitch_3
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#9c27b0"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 247
    :pswitch_4
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#e91e63"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 299
    :pswitch_5
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#ff9800"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 287
    :pswitch_6
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#cddc39"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 283
    :pswitch_7
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#8bc34a"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 267
    :pswitch_8
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#03a9f4"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 259
    :pswitch_9
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#3f51b5"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :pswitch_a
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#9e9e9e"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :pswitch_b
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#4caf50"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 255
    :pswitch_c
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#673ab7"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :pswitch_d
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#ff5722"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 271
    :pswitch_e
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#00bcd4"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    :pswitch_f
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#795548"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 315
    :pswitch_10
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#607d8b"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 263
    :pswitch_11
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#2196f3"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :pswitch_12
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#000000"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 295
    :pswitch_13
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "#ffc107"

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_14
    const/4 p1, 0x0

    .line 231
    invoke-direct {p0, p1, p1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->setColorAndAlpha(Ljava/lang/Integer;Ljava/lang/Float;)V

    goto :goto_0

    .line 235
    :pswitch_15
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->dismiss()V

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->save()V

    .line 227
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->dismiss()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090089
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0900b0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0900bd
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f0900c4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->initialized:Z

    .line 61
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "discussion_id"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->discussionId:J

    .line 65
    :cond_0
    new-instance p1, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;

    invoke-direct {p1, p0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;-><init>(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 91
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c003d

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09010a

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f10009e

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0900bb

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    .line 116
    iget-object p2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->colorEditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$2;

    invoke-direct {p3, p0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$2;-><init>(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f090059

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alphaEditText:Lcom/google/android/material/textfield/TextInputEditText;

    .line 142
    iget-object p2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alphaEditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$3;

    invoke-direct {p3, p0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$3;-><init>(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f09005b

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alphaSeekBar:Landroid/widget/SeekBar;

    .line 167
    iget-object p2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alphaSeekBar:Landroid/widget/SeekBar;

    new-instance p3, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$4;

    invoke-direct {p3, p0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$4;-><init>(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f0900c3

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->fullPreview:Landroid/view/View;

    const p2, 0x7f0900c2

    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->alphaPreview:Landroid/view/View;

    const p2, 0x7f0900b1

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900c5

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900c1

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900c4

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900b7

    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900ba

    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900b2

    .line 196
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900bd

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900b5

    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900c6

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900b8

    .line 200
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900be

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900bf

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900c7

    .line 203
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900b0

    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900c0

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900b6

    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900b4

    .line 207
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900b9

    .line 208
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900b3

    .line 209
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090094

    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09008a

    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090089

    .line 213
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-boolean p2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->initialized:Z

    if-eqz p2, :cond_0

    .line 216
    iget-object p2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->initialColor:Ljava/lang/Integer;

    iget-object p3, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->initialAlpha:Ljava/lang/Float;

    invoke-direct {p0, p2, p3}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->setColorAndAlpha(Ljava/lang/Integer;Ljava/lang/Float;)V

    :cond_0
    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 101
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 102
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 104
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method
