.class public Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DiscussionListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiscussionListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;",
        ">;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOCKED_VIEWTYPE:I = 0x1

.field private static final NORMAL_VIEWTYPE:I


# instance fields
.field private discussionsAndLastMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 426
    invoke-virtual {p1}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x1

    .line 427
    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$300(Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;)Ljava/util/List;
    .locals 0

    .line 418
    iget-object p0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->discussionsAndLastMessages:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 565
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->discussionsAndLastMessages:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 432
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->discussionsAndLastMessages:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 433
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    iget-object p1, p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-wide v0, p1, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 440
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->discussionsAndLastMessages:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    .line 442
    iget-object p1, p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Discussion;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 418
    check-cast p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->onBindViewHolder(Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;I)V
    .locals 10

    .line 470
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->discussionsAndLastMessages:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 471
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    .line 472
    iget-object v0, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->message:Lio/olvid/messenger/databases/entity/Message;

    iget-wide v0, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    iput-wide v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->messageId:J

    .line 473
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->nameTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->message:Lio/olvid/messenger/databases/entity/Message;

    iget v0, v0, Lio/olvid/messenger/databases/entity/Message;->messageType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/16 v3, 0x21

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 528
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->lastMessageContentTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->message:Lio/olvid/messenger/databases/entity/Message;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 521
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    const v5, 0x7f1001c9

    invoke-virtual {v1, v5}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 522
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 523
    iget-object v1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->lastMessageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 515
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    const v5, 0x7f1001d0

    invoke-virtual {v1, v5}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 516
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 517
    iget-object v1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->lastMessageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 497
    :cond_2
    iget-wide v5, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->messageId:J

    .line 498
    iget-object v0, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->message:Lio/olvid/messenger/databases/entity/Message;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    invoke-static {v0}, Lio/olvid/messenger/AppSingleton;->getContactCustomDisplayName([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 500
    new-instance v7, Landroid/text/SpannableString;

    iget-object v8, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    const v9, 0x7f1001d5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v8, v9, v1}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 501
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 502
    iget-wide v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->messageId:J

    cmp-long v3, v0, v5

    if-nez v3, :cond_7

    .line 503
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->lastMessageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 506
    :cond_3
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    const v7, 0x7f1001e3

    invoke-virtual {v1, v7}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 507
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 508
    iget-wide v3, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->messageId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    .line 509
    iget-object v1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->lastMessageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 479
    :cond_4
    iget-wide v5, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->messageId:J

    .line 480
    iget-object v0, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->message:Lio/olvid/messenger/databases/entity/Message;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    invoke-static {v0}, Lio/olvid/messenger/AppSingleton;->getContactCustomDisplayName([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 482
    new-instance v7, Landroid/text/SpannableString;

    iget-object v8, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    const v9, 0x7f1001d3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v8, v9, v1}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 483
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 484
    iget-wide v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->messageId:J

    cmp-long v3, v0, v5

    if-nez v3, :cond_7

    .line 485
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->lastMessageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 488
    :cond_5
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    const v7, 0x7f1001e2

    invoke-virtual {v1, v7}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 489
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 490
    iget-wide v3, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->messageId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    .line 491
    iget-object v1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->lastMessageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 476
    :cond_6
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->lastMessageContentTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    const v4, 0x7f1001dd

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->message:Lio/olvid/messenger/databases/entity/Message;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/entity/Message;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :cond_7
    :goto_0
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->dateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-virtual {v1}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->message:Lio/olvid/messenger/databases/entity/Message;

    iget-wide v3, v3, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    invoke-static {v1, v3, v4}, Lio/olvid/messenger/App;->getLongNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-boolean v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->locked:Z

    if-nez v0, :cond_9

    .line 534
    iget-object v0, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    if-eqz v0, :cond_8

    .line 535
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v1, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    goto :goto_1

    .line 536
    :cond_8
    iget-object v0, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    if-eqz v0, :cond_9

    .line 537
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v1, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    iget-object v3, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    invoke-static {v3}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 541
    :cond_9
    :goto_1
    iget v0, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->unreadCount:I

    if-lez v0, :cond_a

    .line 542
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->lastMessageUnreadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 543
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->unreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->unreadMessageCountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->unreadCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 546
    :cond_a
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->lastMessageUnreadImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    iget-object v0, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->unreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    :goto_2
    iget-object v0, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussionCustomization:Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    const v1, 0xffffff

    if-eqz v0, :cond_c

    .line 551
    iget-object p2, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussionCustomization:Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    invoke-virtual {p2}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->getColorJson()Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 553
    iget-object p1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->customColorView:Landroid/view/View;

    invoke-virtual {p2}, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->getColor()I

    move-result p2

    const/high16 v0, -0x1000000

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 555
    :cond_b
    iget-object p1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->customColorView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 558
    :cond_c
    iget-object p1, p1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->customColorView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_d
    :goto_3
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 418
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;",
            ">;)V"
        }
    .end annotation

    .line 573
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->discussionsAndLastMessages:Ljava/util/List;

    .line 574
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 418
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    .line 462
    iget-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0056

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 463
    new-instance p2, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;

    invoke-direct {p2, p0, p1, v1}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;Landroid/view/View;Z)V

    return-object p2

    .line 457
    :cond_0
    iget-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0057

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 458
    new-instance p2, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;

    invoke-direct {p2, p0, p1, v0}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;Landroid/view/View;Z)V

    return-object p2
.end method
