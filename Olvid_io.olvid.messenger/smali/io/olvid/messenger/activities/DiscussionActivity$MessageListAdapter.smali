.class public Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DiscussionActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/DiscussionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;",
        ">;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/Message;",
        ">;>;"
    }
.end annotation


# static fields
.field static final ATTACHMENT_COUNT_CHANGE_MASK:I = 0x40

.field static final COMPACT_MESSAGE_LINE_COUNT:I = 0x12

.field private static final DISCLAIMER_VIEWTYPE:I = 0x0

.field private static final INBOUND_ATTACHMENT_VIEWTYPE:I = 0x2

.field private static final INBOUND_VIEWTYPE:I = 0x1

.field private static final INFO_VIEWTYPE:I = 0x5

.field static final MESSAGE_EXPAND_CHANGE_MASK:I = 0x20

.field private static final OUTBOUND_ATTACHMENT_VIEWTYPE:I = 0x4

.field private static final OUTBOUND_VIEWTYPE:I = 0x3

.field static final SELECTED_CHANGE_MASK:I = 0x2

.field static final SHOW_TOP_HEADER_CHANGE_MASK:I = 0x8

.field static final STATUS_CHANGE_MASK:I = 0x1


# instance fields
.field private final attachmentFileHeight:I

.field private final attachmentRecyclerViewWidth:I

.field private final attachmentSpace:I

.field private highlightOnBindMessageId:J

.field private final inflater:Landroid/view/LayoutInflater;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end field

.field private requestedScrollFlash:Z

.field private requestedScrollToMessageId:J

.field private requestedScrollToWithOffset:Z

.field private final rotateAnimation:Landroid/view/animation/RotateAnimation;

.field private selectedMessageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final selectedMessageIdsObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectingForDeletion:Z

.field private showInboundSenderName:Z

.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroid/content/Context;)V
    .locals 9

    .line 1705
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1706
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    .line 1707
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->setHasStableIds(Z)V

    .line 1708
    new-instance v8, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 1709
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1710
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 1711
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, 0x0

    .line 1712
    iput-boolean v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->selectingForDeletion:Z

    .line 1713
    new-instance v2, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;

    invoke-direct {v2, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$1;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Lio/olvid/messenger/activities/DiscussionActivity;)V

    iput-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->selectedMessageIdsObserver:Landroidx/lifecycle/Observer;

    const-wide/16 v2, -0x1

    .line 1745
    iput-wide v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestedScrollToMessageId:J

    .line 1746
    iput-boolean v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->showInboundSenderName:Z

    .line 1748
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v1, 0x40000000    # 2.0f

    .line 1749
    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentSpace:I

    .line 1750
    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {v0, v2, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    sub-int/2addr v1, p2

    iput v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentRecyclerViewWidth:I

    .line 1751
    invoke-virtual {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070053

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentFileHeight:I

    return-void
.end method

.method static synthetic access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;
    .locals 0

    .line 1670
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2800(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;
    .locals 0

    .line 1670
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->selectedMessageIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2802(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1670
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->selectedMessageIds:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Z
    .locals 0

    .line 1670
    iget-boolean p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->selectingForDeletion:Z

    return p0
.end method

.method static synthetic access$2902(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Z)Z
    .locals 0

    .line 1670
    iput-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->selectingForDeletion:Z

    return p1
.end method

.method static synthetic access$3500(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1670
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->highlightView(Landroid/view/View;)V

    return-void
.end method

.method private doScrollToMessageId()V
    .locals 9

    .line 1764
    iget-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestedScrollToMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1767
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1768
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 1769
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v0, v0, -0x1

    .line 1771
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/messenger/databases/entity/Message;

    .line 1772
    iget-wide v4, v4, Lio/olvid/messenger/databases/entity/Message;->id:J

    iget-wide v6, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestedScrollToMessageId:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 1773
    iget-boolean v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestedScrollToWithOffset:Z

    if-eqz v1, :cond_3

    .line 1774
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$200(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 1775
    instance-of v4, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v4, :cond_2

    .line 1776
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v4}, Lio/olvid/messenger/activities/DiscussionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070148

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 1778
    :cond_2
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$200(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 1781
    :cond_3
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$200(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->smoothScrollToPosition(I)V

    .line 1782
    iget-boolean v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestedScrollFlash:Z

    if-eqz v1, :cond_5

    .line 1783
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2500(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1785
    invoke-direct {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->highlightView(Landroid/view/View;)V

    goto :goto_0

    .line 1787
    :cond_4
    iget-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestedScrollToMessageId:J

    iput-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->highlightOnBindMessageId:J

    .line 1794
    :cond_5
    :goto_0
    iput-wide v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestedScrollToMessageId:J

    return-void
.end method

.method private highlightView(Landroid/view/View;)V
    .locals 4

    .line 1798
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1799
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1800
    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 1801
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1802
    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 1803
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$2;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$2;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Landroid/graphics/drawable/RippleDrawable;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const-wide/16 v0, -0x1

    .line 1811
    iput-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->highlightOnBindMessageId:J

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2379
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2380
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 2387
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 2388
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v0, p1, Lio/olvid/messenger/databases/entity/Message;->id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1921
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 1925
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Message;

    .line 1926
    iget v0, p1, Lio/olvid/messenger/databases/entity/Message;->messageType:I

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    return p1

    .line 1928
    :cond_1
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Message;->hasAttachments()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const/4 p1, 0x3

    return p1

    .line 1934
    :cond_3
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Message;->hasAttachments()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    return p1

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onBindViewHolder$0$DiscussionActivity$MessageListAdapter(Lio/olvid/messenger/databases/entity/Message;)V
    .locals 2

    .line 2187
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$300(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/viewModels/DiscussionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussion()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Discussion;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lio/olvid/messenger/databases/entity/Message;->sendReturnReceipt(Lio/olvid/messenger/databases/entity/Discussion;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1670
    check-cast p1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->onBindViewHolder(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 1670
    check-cast p1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->onBindViewHolder(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;I)V
    .locals 0

    const-string p1, "The no-payload onBindViewHolder should never get called!"

    .line 1998
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;ILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2004
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    if-eqz v0, :cond_2d

    if-eqz p2, :cond_2d

    const/4 v0, -0x1

    add-int/2addr p2, v0

    .line 2008
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_1

    .line 2011
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2012
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 2013
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    .line 2018
    :cond_2
    :goto_1
    iget-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/olvid/messenger/databases/entity/Message;

    .line 2019
    iget-wide v3, p3, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-static {p1, v3, v4}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3302(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;J)J

    .line 2021
    iget-boolean v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->selectingForDeletion:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    .line 2022
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3600(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2023
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3700(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2024
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3700(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2027
    :cond_3
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3600(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2028
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3700(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2029
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3700(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    and-int/lit8 v3, v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_6

    .line 2034
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->selectedMessageIds:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-wide v7, p3, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2035
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3400(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/View;

    move-result-object v3

    iget-object v7, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const v8, 0x7f0600c9

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2036
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3600(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 2038
    :cond_5
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3400(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2039
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3600(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_6
    :goto_3
    and-int/lit8 v3, v1, 0x8

    const v7, 0x7f1001cc

    if-eqz v3, :cond_f

    .line 2043
    iget v3, p3, Lio/olvid/messenger/databases/entity/Message;->messageType:I

    if-nez v3, :cond_f

    .line 2047
    iget-boolean v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->showInboundSenderName:Z

    if-nez v3, :cond_8

    :cond_7
    const/4 p2, 0x0

    goto :goto_5

    :cond_8
    if-nez p2, :cond_9

    :goto_4
    const/4 p2, 0x1

    goto :goto_5

    .line 2051
    :cond_9
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iget-wide v8, p3, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    iget-object v10, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    sub-int/2addr p2, v6

    invoke-interface {v10, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v10, v10, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    invoke-virtual {v3, v8, v9, v10, v11}, Lio/olvid/messenger/activities/DiscussionActivity;->notTheSameDay(JJ)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_4

    .line 2053
    :cond_a
    iget-object v3, p3, Lio/olvid/messenger/databases/entity/Message;->senderThreadIdentifier:Ljava/util/UUID;

    iget-object v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    invoke-interface {v8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/olvid/messenger/databases/entity/Message;

    iget-object v8, v8, Lio/olvid/messenger/databases/entity/Message;->senderThreadIdentifier:Ljava/util/UUID;

    invoke-virtual {v3, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_4

    .line 2055
    :cond_b
    invoke-virtual {p3}, Lio/olvid/messenger/databases/entity/Message;->isTextOnly()Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_4

    .line 2057
    :cond_c
    iget v3, p3, Lio/olvid/messenger/databases/entity/Message;->status:I

    iget-object v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    invoke-interface {v8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/entity/Message;

    iget p2, p2, Lio/olvid/messenger/databases/entity/Message;->status:I

    if-eq v3, p2, :cond_7

    goto :goto_4

    :goto_5
    if-eqz p2, :cond_e

    .line 2064
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/DiscussionActivity;->access$3800(Lio/olvid/messenger/activities/DiscussionActivity;)Ljava/util/HashMap;

    move-result-object p2

    new-instance v3, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v8, p3, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    invoke-direct {v3, v8}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2065
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_d

    .line 2067
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 2069
    :cond_d
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2073
    :goto_6
    iget-object p2, p3, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    invoke-static {p2}, Lio/olvid/messenger/customClasses/InitialView;->getTextColor([B)I

    move-result p2

    .line 2074
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2075
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    goto :goto_7

    .line 2077
    :cond_e
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3900(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2081
    :cond_f
    :goto_7
    iget p2, p3, Lio/olvid/messenger/databases/entity/Message;->messageType:I

    const/4 v3, 0x2

    if-eqz p2, :cond_10

    iget p2, p3, Lio/olvid/messenger/databases/entity/Message;->messageType:I

    if-ne p2, v6, :cond_1c

    :cond_10
    and-int/lit8 p2, v1, 0x1

    if-eqz p2, :cond_14

    .line 2107
    iget p2, p3, Lio/olvid/messenger/databases/entity/Message;->messageType:I

    if-ne p2, v6, :cond_14

    .line 2108
    iget p2, p3, Lio/olvid/messenger/databases/entity/Message;->status:I

    if-eq p2, v3, :cond_13

    const/4 v8, 0x6

    if-eq p2, v8, :cond_12

    const/4 v8, 0x7

    if-eq p2, v8, :cond_11

    .line 2128
    invoke-static {p1, v6}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3102(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Z)Z

    .line 2129
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const v9, 0x7f0800e2

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 2122
    :cond_11
    invoke-static {p1, v2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3102(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Z)Z

    .line 2123
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const v9, 0x7f0800af

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2124
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_8

    .line 2116
    :cond_12
    invoke-static {p1, v2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3102(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Z)Z

    .line 2117
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const v9, 0x7f0800b0

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2118
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_8

    .line 2110
    :cond_13
    invoke-static {p1, v2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3102(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Z)Z

    .line 2111
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const v9, 0x7f0800cb

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2112
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_14
    :goto_8
    and-int/lit8 p2, v1, 0x20

    if-eqz p2, :cond_16

    .line 2137
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4000(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 2138
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const v8, 0x7fffffff

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2139
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2140
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 2141
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    .line 2144
    :cond_15
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const/16 v8, 0x12

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2145
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2146
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 2147
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_16
    :goto_9
    and-int/lit8 p2, v1, 0x40

    if-eqz p2, :cond_1c

    .line 2153
    invoke-virtual {p3}, Lio/olvid/messenger/databases/entity/Message;->hasAttachments()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 2157
    iget p2, p3, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    if-ne p2, v6, :cond_17

    .line 2159
    iget p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentRecyclerViewWidth:I

    :goto_a
    add-int/2addr p2, v2

    goto :goto_b

    .line 2160
    :cond_17
    iget p2, p3, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    if-ne p2, v3, :cond_18

    .line 2161
    iget p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentRecyclerViewWidth:I

    iget v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentSpace:I

    add-int/2addr p2, v8

    goto :goto_a

    .line 2162
    :cond_18
    iget p2, p3, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    if-le p2, v3, :cond_1a

    .line 2163
    iget p2, p3, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    and-int/2addr p2, v6

    if-eqz p2, :cond_19

    .line 2164
    iget p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentRecyclerViewWidth:I

    iget v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentSpace:I

    add-int/2addr p2, v8

    div-int/2addr p2, v3

    iget v8, p3, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    div-int/2addr v8, v3

    mul-int p2, p2, v8

    add-int/2addr p2, v2

    .line 2165
    iget v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentRecyclerViewWidth:I

    div-int/2addr v8, v3

    add-int/2addr p2, v8

    goto :goto_b

    .line 2167
    :cond_19
    iget p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentRecyclerViewWidth:I

    iget v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentSpace:I

    add-int/2addr p2, v8

    div-int/2addr p2, v3

    iget v8, p3, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    div-int/2addr v8, v3

    mul-int p2, p2, v8

    add-int/2addr p2, v2

    .line 2168
    iget v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentSpace:I

    sub-int/2addr p2, v8

    goto :goto_b

    :cond_1a
    const/4 p2, 0x0

    .line 2173
    :goto_b
    iget v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentFileHeight:I

    iget v9, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentSpace:I

    add-int/2addr v8, v9

    iget v9, p3, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    iget v10, p3, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    sub-int/2addr v9, v10

    mul-int v8, v8, v9

    add-int/2addr p2, v8

    .line 2174
    iget v8, p3, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    if-nez v8, :cond_1b

    .line 2175
    iget v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->attachmentSpace:I

    sub-int/2addr p2, v8

    .line 2178
    :cond_1b
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4400(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroidx/recyclerview/widget/RecyclerView;->setMinimumHeight(I)V

    :cond_1c
    if-ne v1, v0, :cond_2d

    .line 2185
    iget p2, p3, Lio/olvid/messenger/databases/entity/Message;->status:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1e

    .line 2186
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1100(Lio/olvid/messenger/activities/DiscussionActivity;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 2187
    new-instance p2, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$MessageListAdapter$o_2RETZIozx12tEBvYuAzH-gA5o;

    invoke-direct {p2, p0, p3}, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$MessageListAdapter$o_2RETZIozx12tEBvYuAzH-gA5o;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Lio/olvid/messenger/databases/entity/Message;)V

    invoke-static {p2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    .line 2189
    :cond_1d
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1200(Lio/olvid/messenger/activities/DiscussionActivity;)Ljava/util/List;

    move-result-object p2

    iget-wide v8, p3, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2191
    :cond_1e
    iget p2, p3, Lio/olvid/messenger/databases/entity/Message;->messageType:I

    const/4 v1, 0x4

    if-eqz p2, :cond_25

    if-eq p2, v6, :cond_25

    if-eq p2, v3, :cond_23

    if-eq p2, v0, :cond_21

    if-eq p2, v1, :cond_20

    const/4 p3, 0x5

    if-eq p2, p3, :cond_1f

    goto/16 :goto_10

    .line 2369
    :cond_1f
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f1001c9

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_10

    .line 2365
    :cond_20
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f1001d0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_10

    .line 2356
    :cond_21
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/DiscussionActivity;->access$3800(Lio/olvid/messenger/activities/DiscussionActivity;)Ljava/util/HashMap;

    move-result-object p2

    new-instance v0, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object p3, p3, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    invoke-direct {v0, p3}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_22

    .line 2358
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const v0, 0x7f1001d5

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p3, v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 2360
    :cond_22
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f1001e3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_10

    .line 2347
    :cond_23
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/DiscussionActivity;->access$3800(Lio/olvid/messenger/activities/DiscussionActivity;)Ljava/util/HashMap;

    move-result-object p2

    new-instance v0, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object p3, p3, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    invoke-direct {v0, p3}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_24

    .line 2349
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const v0, 0x7f1001d3

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p3, v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 2351
    :cond_24
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f1001e2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_10

    .line 2194
    :cond_25
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4500(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v6, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v6}, Lio/olvid/messenger/activities/DiscussionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-wide v8, p3, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    invoke-static {v6, v8, v9}, Lio/olvid/messenger/App;->getLongNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2195
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4500(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2196
    invoke-virtual {p3}, Lio/olvid/messenger/databases/entity/Message;->getJsonMessage()Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    move-result-object p2

    .line 2197
    invoke-virtual {p2}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getBody()Ljava/lang/String;

    move-result-object v6

    .line 2199
    invoke-virtual {p2}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getJsonReply()Lio/olvid/messenger/databases/entity/Message$JsonReply;

    move-result-object v8

    if-nez v8, :cond_26

    .line 2200
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4600(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2201
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4700(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 2203
    :cond_26
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4600(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2204
    new-instance v8, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$5;

    invoke-direct {v8, p0, p2, p3, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$5;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Lio/olvid/messenger/databases/entity/Message$JsonMessage;Lio/olvid/messenger/databases/entity/Message;Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V

    invoke-static {v8}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    .line 2262
    iget-object v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v8}, Lio/olvid/messenger/activities/DiscussionActivity;->access$3800(Lio/olvid/messenger/activities/DiscussionActivity;)Ljava/util/HashMap;

    move-result-object v8

    new-instance v9, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {p2}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getJsonReply()Lio/olvid/messenger/databases/entity/Message$JsonReply;

    move-result-object v10

    invoke-virtual {v10}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->getSenderIdentifier()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_27

    .line 2264
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5000(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 2266
    :cond_27
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5000(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2268
    :goto_c
    invoke-virtual {p2}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getJsonReply()Lio/olvid/messenger/databases/entity/Message$JsonReply;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->getSenderIdentifier()[B

    move-result-object p2

    invoke-static {p2}, Lio/olvid/messenger/customClasses/InitialView;->getTextColor([B)I

    move-result p2

    .line 2269
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5000(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2271
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080071

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2277
    instance-of v8, v7, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_28

    .line 2278
    move-object v8, v7

    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    const v9, 0x7f090242

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 2279
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, p2, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2280
    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 2281
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4600(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_28
    :goto_d
    if-eqz v6, :cond_2b

    .line 2284
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_29

    goto/16 :goto_e

    .line 2286
    :cond_29
    invoke-static {v6, v0}, Lio/olvid/messenger/App;->isShortEmojiString(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 2287
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2288
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070160

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2289
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double v2, v2, v4

    double-to-int v0, v2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2290
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 2291
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 2293
    :cond_2a
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2294
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2295
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2296
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 2297
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2298
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2299
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$6;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$6;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_f

    .line 2285
    :cond_2b
    :goto_e
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2337
    :goto_f
    invoke-virtual {p3}, Lio/olvid/messenger/databases/entity/Message;->hasAttachments()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 2338
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    if-eqz p2, :cond_2c

    .line 2339
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2341
    :cond_2c
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object p2

    iget-wide v0, p3, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {p2, v0, v1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getFylesAndStatusForMessage(J)Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-static {p1, p2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5102(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    .line 2342
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_2d
    :goto_10
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1670
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;)V"
        }
    .end annotation

    .line 1822
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2500(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1823
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1827
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1828
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    .line 1904
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    .line 1905
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 1907
    :cond_3
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    .line 1908
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->notifyDataSetChanged()V

    .line 1910
    :goto_1
    iget-wide v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestedScrollToMessageId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1911
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$200(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->scrollToPosition(I)V

    .line 1912
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->doScrollToMessageId()V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 1914
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$200(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->scrollToPosition(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1670
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    .line 1970
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c005e

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1971
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Landroid/view/View;I)V

    return-object v0

    .line 1974
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0060

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1975
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Landroid/view/View;I)V

    return-object v0

    .line 1961
    :cond_1
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0062

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1962
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Landroid/view/View;I)V

    return-object v0

    .line 1957
    :cond_2
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0061

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1958
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Landroid/view/View;I)V

    return-object v0

    .line 1965
    :cond_3
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c005f

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1966
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Landroid/view/View;I)V

    return-object v0

    .line 1953
    :cond_4
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c005d

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1954
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1670
    check-cast p1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->onViewAttachedToWindow(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V
    .locals 5

    .line 1982
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1983
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3200(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1986
    :cond_0
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$3300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->highlightOnBindMessageId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1987
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$4;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$4;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1670
    check-cast p1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->onViewRecycled(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V
    .locals 3

    .line 2395
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    .line 2396
    invoke-static {p1, v0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4002(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Z)Z

    .line 2397
    invoke-static {p1, v0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4202(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;Z)Z

    .line 2398
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5400(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Lio/olvid/messenger/customClasses/SizeAwareCardView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2399
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4700(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2400
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2401
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2402
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$5500(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2404
    :cond_0
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4400(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2405
    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4400(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setMinimumHeight(I)V

    :cond_1
    return-void
.end method

.method requestScrollToMessageId(JZZ)V
    .locals 0

    .line 1755
    iput-wide p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestedScrollToMessageId:J

    .line 1756
    iput-boolean p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestedScrollToWithOffset:Z

    .line 1757
    iput-boolean p4, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestedScrollFlash:Z

    .line 1758
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->messages:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 1759
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->doScrollToMessageId()V

    :cond_0
    return-void
.end method

.method setShowInboundSenderName()V
    .locals 1

    const/4 v0, 0x1

    .line 1815
    iput-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->showInboundSenderName:Z

    .line 1816
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->notifyDataSetChanged()V

    return-void
.end method
