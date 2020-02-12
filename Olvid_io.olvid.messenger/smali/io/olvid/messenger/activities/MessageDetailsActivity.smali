.class public Lio/olvid/messenger/activities/MessageDetailsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MessageDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;,
        Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;
    }
.end annotation


# static fields
.field public static final HAS_ATTACHMENT_INTENT_EXTRA:Ljava/lang/String; = "has_attachments"

.field public static final MESSAGE_ID_INTENT_EXTRA:Ljava/lang/String; = "message_id"


# instance fields
.field attachmentAdapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

.field attachmentsCard:Landroidx/cardview/widget/CardView;

.field attachmentsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field defaultConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field discussionBackground:Landroid/widget/ImageView;

.field hasAttachments:Z

.field messageBottomTimestampTextView:Landroid/widget/TextView;

.field messageCardView:Lio/olvid/messenger/customClasses/SizeAwareCardView;

.field messageContentTextView:Landroid/widget/TextView;

.field messageDetailsActivityRoot:Landroid/view/View;

.field messageDetailsViewModel:Lio/olvid/messenger/viewModels/MessageDetailsViewModel;

.field messageReplyAttachmentCount:Landroid/widget/TextView;

.field messageReplyBody:Landroid/widget/TextView;

.field messageReplyGroup:Landroid/view/ViewGroup;

.field messageReplySenderName:Landroid/widget/TextView;

.field messageRootConstrainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field messageScrollView:Landroid/view/View;

.field messageStatusImageView:Landroid/widget/ImageView;

.field messageTopTimestamp:Landroid/widget/TextView;

.field noAttachmentConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field recipientInfosAdapter:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

.field recipientInfosRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

.field rotateAnimation:Landroid/view/animation/RotateAnimation;

.field statusWidth:F

.field timestampSpacer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private displayMessage(Lio/olvid/messenger/databases/entity/Message;)V
    .locals 9

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 259
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageTopTimestamp:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageCardView:Lio/olvid/messenger/customClasses/SizeAwareCardView;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/SizeAwareCardView;->setVisibility(I)V

    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageTopTimestamp:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageCardView:Lio/olvid/messenger/customClasses/SizeAwareCardView;

    invoke-virtual {v1, v2}, Lio/olvid/messenger/customClasses/SizeAwareCardView;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageTopTimestamp:Landroid/widget/TextView;

    iget-wide v3, p1, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    invoke-static {p0, v3, v4}, Lio/olvid/messenger/App;->getDayOfDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageBottomTimestampTextView:Landroid/widget/TextView;

    iget-wide v3, p1, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    invoke-static {p0, v3, v4}, Lio/olvid/messenger/App;->getLongNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget v1, p1, Lio/olvid/messenger/databases/entity/Message;->status:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v4, 0x6

    if-eq v1, v4, :cond_2

    const/4 v4, 0x7

    if-eq v1, v4, :cond_1

    .line 287
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageStatusImageView:Landroid/widget/ImageView;

    const v4, 0x7f0800e2

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageStatusImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageStatusImageView:Landroid/widget/ImageView;

    const v4, 0x7f0800af

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageStatusImageView:Landroid/widget/ImageView;

    const v4, 0x7f0800b0

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0

    .line 272
    :cond_3
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageStatusImageView:Landroid/widget/ImageView;

    const v4, 0x7f0800cb

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 292
    :goto_0
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Message;->getJsonMessage()Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    move-result-object v1

    .line 293
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 295
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x3

    .line 297
    invoke-static {v4, v5}, Lio/olvid/messenger/App;->isShortEmojiString(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 298
    iget-object v3, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v3, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070160

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 300
    iget-object v3, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff4000000000000L    # 1.25

    mul-double v5, v5, v7

    double-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 301
    iget-object v3, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 302
    iget-object v3, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 304
    :cond_5
    iget-object v5, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v5, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 306
    iget-object v5, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 307
    iget-object v5, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 308
    iget-object v3, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 296
    :cond_6
    :goto_1
    iget-object v3, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    :goto_2
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getJsonReply()Lio/olvid/messenger/databases/entity/Message$JsonReply;

    move-result-object v3

    if-nez v3, :cond_7

    .line 312
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 315
    :cond_7
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 317
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getJsonReply()Lio/olvid/messenger/databases/entity/Message$JsonReply;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->getSenderIdentifier()[B

    move-result-object v0

    invoke-static {v0}, Lio/olvid/messenger/AppSingleton;->getContactCustomDisplayName([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 319
    iget-object v2, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplySenderName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 321
    :cond_8
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplySenderName:Landroid/widget/TextView;

    const v2, 0x7f1001cc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 323
    :goto_3
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getJsonReply()Lio/olvid/messenger/databases/entity/Message$JsonReply;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->getSenderIdentifier()[B

    move-result-object v0

    invoke-static {v0}, Lio/olvid/messenger/customClasses/InitialView;->getTextColor([B)I

    move-result v0

    .line 324
    iget-object v2, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplySenderName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080071

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 327
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_9

    .line 328
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const v4, 0x7f090242

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 329
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 330
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 331
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 334
    :cond_9
    new-instance v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    invoke-direct {v0, p0, v1, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity$2;-><init>(Lio/olvid/messenger/activities/MessageDetailsActivity;Lio/olvid/messenger/databases/entity/Message$JsonMessage;Lio/olvid/messenger/databases/entity/Message;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :goto_4
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "message_id"

    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, -0x1

    .line 236
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 237
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageDetailsViewModel:Lio/olvid/messenger/viewModels/MessageDetailsViewModel;

    invoke-virtual {p1, v0, v1}, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->setMessageId(J)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$m1D1XmhYoOJveAMVJUhqb1XJmWE(Lio/olvid/messenger/activities/MessageDetailsActivity;Lio/olvid/messenger/databases/entity/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->displayMessage(Lio/olvid/messenger/databases/entity/Message;)V

    return-void
.end method

.method private recomputeMessageLayout()V
    .locals 3

    .line 390
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 392
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$5CmUAUSivI9ZrMJb40BqCBscVVQ;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$5CmUAUSivI9ZrMJb40BqCBscVVQ;-><init>(Lio/olvid/messenger/activities/MessageDetailsActivity;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$MessageDetailsActivity(IIII)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lio/olvid/messenger/activities/MessageDetailsActivity;->recomputeMessageLayout()V

    return-void
.end method

.method public synthetic lambda$recomputeMessageLayout$1$MessageDetailsActivity(Landroid/graphics/Rect;)V
    .locals 5

    .line 393
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageBottomTimestampTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    .line 398
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineMax(I)F

    move-result v1

    iget v4, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->statusWidth:F

    add-float/2addr v1, v4

    add-int/lit8 v2, v2, -0x1

    .line 399
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    .line 400
    invoke-virtual {v0, v2, p1}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 401
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p1

    .line 402
    invoke-virtual {v0}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object p1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, v0}, Landroid/text/Layout$Alignment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    int-to-float p1, v2

    sub-float/2addr p1, v4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr v4, p1

    :cond_0
    add-float/2addr v1, v4

    int-to-float p1, v2

    cmpg-float p1, v1, p1

    if-gez p1, :cond_1

    .line 406
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->timestampSpacer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->timestampSpacer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 243
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MessageDetailsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 107
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageDetailsViewModel:Lio/olvid/messenger/viewModels/MessageDetailsViewModel;

    .line 110
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "has_attachments"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->hasAttachments:Z

    .line 112
    iget-boolean p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->hasAttachments:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0c0028

    .line 113
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0027

    .line 115
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->setContentView(I)V

    :goto_0
    const p1, 0x7f0901cb

    .line 117
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageDetailsActivityRoot:Landroid/view/View;

    .line 119
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const p1, 0x7f0901d0

    .line 125
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageRootConstrainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f0901d1

    .line 127
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageScrollView:Landroid/view/View;

    const p1, 0x7f09010f

    .line 128
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->discussionBackground:Landroid/widget/ImageView;

    const p1, 0x7f0901d6

    .line 129
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageTopTimestamp:Landroid/widget/TextView;

    const p1, 0x7f0901c4

    .line 130
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/SizeAwareCardView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageCardView:Lio/olvid/messenger/customClasses/SizeAwareCardView;

    const p1, 0x7f0901ca

    .line 131
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageContentTextView:Landroid/widget/TextView;

    const p1, 0x7f0901d5

    .line 132
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageBottomTimestampTextView:Landroid/widget/TextView;

    const p1, 0x7f0902ae

    .line 133
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->timestampSpacer:Landroid/view/View;

    const p1, 0x7f0901d4

    .line 134
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageStatusImageView:Landroid/widget/ImageView;

    .line 135
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 136
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 138
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const p1, 0x7f0901c8

    .line 142
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyGroup:Landroid/view/ViewGroup;

    const p1, 0x7f0901c9

    .line 143
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplySenderName:Landroid/widget/TextView;

    const p1, 0x7f0901c7

    .line 144
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    const p1, 0x7f0901c6

    .line 145
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyAttachmentCount:Landroid/widget/TextView;

    .line 148
    iget-boolean p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->hasAttachments:Z

    if-eqz p1, :cond_2

    const p1, 0x7f090076

    .line 149
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->attachmentsCard:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090077

    .line 150
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->attachmentsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 151
    new-instance p1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-direct {p1, p0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->attachmentAdapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    .line 152
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->attachmentAdapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->setAttachmentLongClickListener(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentLongClickListener;)V

    .line 154
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->attachmentAdapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-virtual {v1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->getColumnCount()I

    move-result v1

    invoke-direct {p1, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 155
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setOrientation(I)V

    .line 156
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->attachmentAdapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-virtual {v1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 158
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->attachmentsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 159
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->attachmentsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->attachmentAdapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 160
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->attachmentsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->attachmentAdapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-virtual {v1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->getItemDecoration()Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 163
    :cond_2
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v1, 0x41d00000    # 26.0f

    .line 164
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->statusWidth:F

    .line 165
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageCardView:Lio/olvid/messenger/customClasses/SizeAwareCardView;

    new-instance v0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$EMADF5rSApVFITAxHQsGqRhESh8;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$EMADF5rSApVFITAxHQsGqRhESh8;-><init>(Lio/olvid/messenger/activities/MessageDetailsActivity;)V

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/SizeAwareCardView;->setSizeChangeListener(Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;)V

    const p1, 0x7f09023e

    .line 168
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    .line 169
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/MessageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 170
    new-instance p1, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    invoke-direct {p1, p0, p0}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;-><init>(Lio/olvid/messenger/activities/MessageDetailsActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosAdapter:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    .line 172
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosAdapter:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 173
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 174
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    new-instance v0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;-><init>(Lio/olvid/messenger/activities/MessageDetailsActivity;)V

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 177
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageDetailsViewModel:Lio/olvid/messenger/viewModels/MessageDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->getMessageRecipientInfos()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosAdapter:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 179
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageDetailsViewModel:Lio/olvid/messenger/viewModels/MessageDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->getDiscussionCustomization()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/activities/MessageDetailsActivity$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/MessageDetailsActivity$1;-><init>(Lio/olvid/messenger/activities/MessageDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 225
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageDetailsViewModel:Lio/olvid/messenger/viewModels/MessageDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->getMessage()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$m1D1XmhYoOJveAMVJUhqb1XJmWE;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$m1D1XmhYoOJveAMVJUhqb1XJmWE;-><init>(Lio/olvid/messenger/activities/MessageDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 227
    iget-boolean p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->hasAttachments:Z

    if-eqz p1, :cond_3

    .line 228
    iget-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageDetailsViewModel:Lio/olvid/messenger/viewModels/MessageDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->getAttachmentFyles()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity;->attachmentAdapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 231
    :cond_3
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 248
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 254
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 250
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MessageDetailsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
