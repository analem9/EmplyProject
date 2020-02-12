.class Lio/olvid/messenger/activities/DiscussionActivity$16$1;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/DiscussionActivity$16;

.field final synthetic val$attachmentCount:I

.field final synthetic val$replyMessage:Lio/olvid/messenger/databases/entity/Message;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$16;Lio/olvid/messenger/databases/entity/Message;I)V
    .locals 0

    .line 1387
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$16;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->val$replyMessage:Lio/olvid/messenger/databases/entity/Message;

    iput p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->val$attachmentCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1390
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->val$replyMessage:Lio/olvid/messenger/databases/entity/Message;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1391
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$16;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2200(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1393
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1394
    new-instance v1, Landroid/text/SpannableString;

    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$16;

    iget-object v3, v3, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const v4, 0x7f1001dc

    invoke-virtual {v3, v4}, Lio/olvid/messenger/activities/DiscussionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1395
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1396
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$16;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2300(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1398
    :cond_0
    iget v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->val$attachmentCount:I

    if-lez v0, :cond_1

    .line 1399
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$16;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2200(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1400
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$16;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2200(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$16;

    iget-object v3, v3, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v3}, Lio/olvid/messenger/activities/DiscussionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f000c

    iget v5, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->val$attachmentCount:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1402
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$16;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2200(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1404
    :goto_0
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->val$replyMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->val$replyMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1407
    :cond_2
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$16;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2300(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1408
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$16;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2300(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->val$replyMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1405
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$16;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2300(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method
