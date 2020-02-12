.class Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DiscussionActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageViewHolder"
.end annotation


# instance fields
.field private final adapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

.field private attachmentFyles:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final attachmentsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private contentTruncated:Z

.field private expandMessage:Z

.field private final messageBottomTimestampTextView:Landroid/widget/TextView;

.field private final messageCheckboxCompensator:Landroid/view/View;

.field private final messageContentCardView:Lio/olvid/messenger/customClasses/SizeAwareCardView;

.field private final messageContentExpander:Landroid/widget/ImageView;

.field private final messageContentTextView:Landroid/widget/TextView;

.field private messageId:J

.field private final messageInfoTextView:Landroid/widget/TextView;

.field private final messageReplyAttachmentCount:Landroid/widget/TextView;

.field private final messageReplyBody:Landroid/widget/TextView;

.field private final messageReplyGroup:Landroid/view/ViewGroup;

.field private final messageReplySenderName:Landroid/widget/TextView;

.field private final messageRootView:Landroid/view/View;

.field private final messageSelectionCheckbox:Landroid/widget/CheckBox;

.field private final messageSenderTextView:Landroid/widget/TextView;

.field private final messageStatusImageView:Landroid/widget/ImageView;

.field rect:Landroid/graphics/Rect;

.field private replyMessageId:J

.field private shouldAnimateStatusImageView:Z

.field statusWidth:F

.field final synthetic this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

.field private final timestampSpacer:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Landroid/view/View;I)V
    .locals 4

    .line 2436
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    .line 2437
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2501
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 2438
    :cond_0
    iget-object v1, p1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$5700(Lio/olvid/messenger/activities/DiscussionActivity;)F

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$5600(Lio/olvid/messenger/activities/DiscussionActivity;)F

    move-result v1

    :goto_1
    iput v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->statusWidth:F

    if-eqz p3, :cond_2

    .line 2441
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2442
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2444
    :cond_2
    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageRootView:Landroid/view/View;

    const v1, 0x7f0901c4

    .line 2445
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/customClasses/SizeAwareCardView;

    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageContentCardView:Lio/olvid/messenger/customClasses/SizeAwareCardView;

    .line 2446
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageContentCardView:Lio/olvid/messenger/customClasses/SizeAwareCardView;

    if-eqz v1, :cond_3

    .line 2447
    invoke-virtual {v1, p0}, Lio/olvid/messenger/customClasses/SizeAwareCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2448
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageContentCardView:Lio/olvid/messenger/customClasses/SizeAwareCardView;

    invoke-virtual {v1, p0}, Lio/olvid/messenger/customClasses/SizeAwareCardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    const v1, 0x7f0901ca

    .line 2450
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageContentTextView:Landroid/widget/TextView;

    const v1, 0x7f0901c8

    .line 2451
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageReplyGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0901c9

    .line 2452
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageReplySenderName:Landroid/widget/TextView;

    const v1, 0x7f0901c7

    .line 2453
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageReplyBody:Landroid/widget/TextView;

    const v1, 0x7f0901c6

    .line 2454
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageReplyAttachmentCount:Landroid/widget/TextView;

    .line 2455
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageReplyGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 2456
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2457
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageReplyGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    const v1, 0x7f0901c5

    .line 2460
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageContentExpander:Landroid/widget/ImageView;

    const v1, 0x7f0901d5

    .line 2461
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageBottomTimestampTextView:Landroid/widget/TextView;

    const v1, 0x7f0902ae

    .line 2462
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->timestampSpacer:Landroid/view/View;

    const v1, 0x7f0901d4

    .line 2463
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageStatusImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 2464
    iput-boolean v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->shouldAnimateStatusImageView:Z

    .line 2465
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageContentCardView:Lio/olvid/messenger/customClasses/SizeAwareCardView;

    if-eqz v2, :cond_5

    .line 2466
    new-instance v3, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder$1;

    invoke-direct {v3, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder$1;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)V

    invoke-virtual {v2, v3}, Lio/olvid/messenger/customClasses/SizeAwareCardView;->setSizeChangeListener(Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;)V

    :cond_5
    const v2, 0x7f0901d3

    .line 2474
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageSenderTextView:Landroid/widget/TextView;

    const v2, 0x7f0901d2

    .line 2475
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageSelectionCheckbox:Landroid/widget/CheckBox;

    const v2, 0x7f0901c3

    .line 2476
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageCheckboxCompensator:Landroid/view/View;

    const v2, 0x7f090077

    .line 2477
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->attachmentsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901cc

    .line 2478
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageInfoTextView:Landroid/widget/TextView;

    .line 2480
    iput-boolean v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->expandMessage:Z

    .line 2481
    iput-boolean v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->contentTruncated:Z

    const-wide/16 v1, -0x1

    .line 2482
    iput-wide v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->replyMessageId:J

    const/4 p2, 0x2

    const/4 v1, 0x0

    if-eq p3, p2, :cond_7

    if-ne p3, v0, :cond_6

    goto :goto_2

    .line 2497
    :cond_6
    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->adapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    goto :goto_3

    .line 2486
    :cond_7
    :goto_2
    new-instance p2, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    iget-object p3, p1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p2, p3}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->adapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    .line 2487
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->adapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    iget-object p3, p1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {p2, p3}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->setAttachmentLongClickListener(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentLongClickListener;)V

    .line 2488
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p1, p1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iget-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->adapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-virtual {p3}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->getColumnCount()I

    move-result p3

    invoke-direct {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 2489
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setOrientation(I)V

    .line 2490
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->adapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-virtual {p1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 2492
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->attachmentsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2493
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->attachmentsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->adapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2494
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->attachmentsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->adapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-virtual {p2}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->getItemDecoration()Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 2495
    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->attachmentFyles:Landroidx/lifecycle/LiveData;

    :goto_3
    return-void
.end method

.method static synthetic access$3100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Z
    .locals 0

    .line 2409
    iget-boolean p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->shouldAnimateStatusImageView:Z

    return p0
.end method

.method static synthetic access$3102(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Z)Z
    .locals 0

    .line 2409
    iput-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->shouldAnimateStatusImageView:Z

    return p1
.end method

.method static synthetic access$3200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageStatusImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)J
    .locals 2

    .line 2409
    iget-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageId:J

    return-wide v0
.end method

.method static synthetic access$3302(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;J)J
    .locals 0

    .line 2409
    iput-wide p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageId:J

    return-wide p1
.end method

.method static synthetic access$3400(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/View;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3600(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageSelectionCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$3700(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/View;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageCheckboxCompensator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageSenderTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Z
    .locals 0

    .line 2409
    iget-boolean p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->expandMessage:Z

    return p0
.end method

.method static synthetic access$4002(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Z)Z
    .locals 0

    .line 2409
    iput-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->expandMessage:Z

    return p1
.end method

.method static synthetic access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageContentTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Z
    .locals 0

    .line 2409
    iget-boolean p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->contentTruncated:Z

    return p0
.end method

.method static synthetic access$4202(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Z)Z
    .locals 0

    .line 2409
    iput-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->contentTruncated:Z

    return p1
.end method

.method static synthetic access$4300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageContentExpander:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4400(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->attachmentsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$4500(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageBottomTimestampTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4600(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/ViewGroup;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageReplyGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4700(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageReplyBody:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4802(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;J)J
    .locals 0

    .line 2409
    iput-wide p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->replyMessageId:J

    return-wide p1
.end method

.method static synthetic access$4900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageReplyAttachmentCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5000(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageReplySenderName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->attachmentFyles:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method static synthetic access$5102(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 2409
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->attachmentFyles:Landroidx/lifecycle/LiveData;

    return-object p1
.end method

.method static synthetic access$5200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->adapter:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    return-object p0
.end method

.method static synthetic access$5300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageInfoTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5400(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Lio/olvid/messenger/customClasses/SizeAwareCardView;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageContentCardView:Lio/olvid/messenger/customClasses/SizeAwareCardView;

    return-object p0
.end method

.method static synthetic access$5500(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/View;
    .locals 0

    .line 2409
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->timestampSpacer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5800(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V
    .locals 0

    .line 2409
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->recomputeLayout()V

    return-void
.end method

.method private recomputeLayout()V
    .locals 2

    .line 2505
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$MessageListAdapter$MessageViewHolder$QSYUCC_yu_7HJZt4cbI8LawX3eA;

    invoke-direct {v1, p0}, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$MessageListAdapter$MessageViewHolder$QSYUCC_yu_7HJZt4cbI8LawX3eA;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$recomputeLayout$0$DiscussionActivity$MessageListAdapter$MessageViewHolder()V
    .locals 7

    .line 2506
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2507
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageBottomTimestampTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 2509
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/16 v3, 0x12

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-lt v2, v3, :cond_0

    const/16 v3, 0x11

    .line 2511
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 2513
    iput-boolean v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->contentTruncated:Z

    .line 2514
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageContentExpander:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2516
    :cond_0
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->messageContentExpander:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-eqz v1, :cond_3

    .line 2520
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineMax(I)F

    move-result v1

    iget v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->statusWidth:F

    add-float/2addr v1, v3

    sub-int/2addr v2, v4

    .line 2521
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    .line 2522
    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v4}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 2523
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    .line 2525
    invoke-virtual {v0}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v4}, Landroid/text/Layout$Alignment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-float v0, v2

    sub-float/2addr v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    :cond_1
    add-float/2addr v1, v3

    int-to-float v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    .line 2530
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->timestampSpacer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2531
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->timestampSpacer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2534
    :cond_2
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->timestampSpacer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2535
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->timestampSpacer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 2551
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901c4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901c8

    if-eq p1, v0, :cond_0

    const v0, 0x7f0901d0

    if-eq p1, v0, :cond_1

    .line 2580
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$2900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2581
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->getLayoutPosition()I

    move-result p1

    if-lez p1, :cond_3

    .line 2582
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object p1, p1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->getLayoutPosition()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v0, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-static {p1, v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$6000(Lio/olvid/messenger/activities/DiscussionActivity;J)V

    goto :goto_0

    .line 2562
    :cond_0
    iget-wide v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->replyMessageId:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    .line 2563
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object p1, p1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object p1

    iget-wide v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->replyMessageId:J

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestScrollToMessageId(JZZ)V

    goto :goto_0

    .line 2569
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$2900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2570
    iget-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->expandMessage:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->expandMessage:Z

    .line 2571
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->getLayoutPosition()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 2573
    :cond_2
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->getLayoutPosition()I

    move-result p1

    if-lez p1, :cond_3

    .line 2574
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object p1, p1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->getLayoutPosition()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v0, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-static {p1, v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$6000(Lio/olvid/messenger/activities/DiscussionActivity;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 10

    .line 2544
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->getLayoutPosition()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Message;

    .line 2545
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v3, v1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iget-wide v4, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    iget v6, v0, Lio/olvid/messenger/databases/entity/Message;->messageType:I

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message;->isWithoutText()Z

    move-result v7

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message;->hasAttachments()Z

    move-result v8

    move-object v9, p1

    invoke-static/range {v3 .. v9}, Lio/olvid/messenger/activities/DiscussionActivity;->access$5900(Lio/olvid/messenger/activities/DiscussionActivity;JIZZLandroid/view/View;)V

    return v2
.end method
