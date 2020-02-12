.class Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;
.super Ljava/lang/Object;
.source "MessageDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MessageDetailsActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

.field final synthetic val$attachmentCount:I

.field final synthetic val$replyMessage:Lio/olvid/messenger/databases/entity/Message;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MessageDetailsActivity$2;Lio/olvid/messenger/databases/entity/Message;I)V
    .locals 0

    .line 346
    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iput-object p2, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->val$replyMessage:Lio/olvid/messenger/databases/entity/Message;

    iput p3, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->val$attachmentCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 349
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->val$replyMessage:Lio/olvid/messenger/databases/entity/Message;

    const/high16 v1, 0x41600000    # 14.0f

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 351
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 352
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 353
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyAttachmentCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 356
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v2, v2, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    const v3, 0x7f1001dc

    invoke-virtual {v2, v3}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 358
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 360
    :cond_0
    iget v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->val$attachmentCount:I

    if-lez v0, :cond_1

    .line 361
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyAttachmentCount:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyAttachmentCount:Landroid/widget/TextView;

    iget-object v5, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v5, v5, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    invoke-virtual {v5}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f000c

    iget v7, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->val$attachmentCount:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyAttachmentCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    :goto_0
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->val$replyMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->val$replyMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 369
    :cond_2
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    iget-object v2, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->val$replyMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->val$replyMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lio/olvid/messenger/App;->isShortEmojiString(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v1, v1, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    invoke-virtual {v1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 373
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v1, v1, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    invoke-virtual {v1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 374
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_2

    .line 376
    :cond_3
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 377
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 378
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_2

    .line 367
    :cond_4
    :goto_1
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$2$1;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$2;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity;->messageReplyBody:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method
