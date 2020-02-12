.class public Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DiscussionActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/DiscussionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewMessagesItemDecoration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "Landroidx/lifecycle/Observer<",
        "Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private firstLoad:Z

.field private firstUnreadMessageId:J

.field private firstUnreadMessagePosition:I

.field private headerBitmap:Landroid/graphics/Bitmap;

.field private final headerHeight:I

.field private final itemRect:Landroid/graphics/Rect;

.field private shift:I

.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;

.field private unreadCount:I


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 3

    .line 678
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 679
    invoke-virtual {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41f00000    # 30.0f

    .line 680
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->headerHeight:I

    const-wide/16 v1, -0x1

    .line 681
    iput-wide v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstUnreadMessageId:J

    .line 682
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->itemRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 683
    iput p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->shift:I

    .line 684
    iput-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstLoad:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 726
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 727
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    .line 732
    iget-wide v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstUnreadMessageId:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    .line 733
    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v1, v1, Lio/olvid/messenger/databases/entity/Message;->id:J

    iget-wide v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstUnreadMessageId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 734
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->headerHeight:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 735
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 736
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1400(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 737
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->shift:I

    .line 738
    iput v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstUnreadMessagePosition:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onChanged(Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 748
    :cond_0
    iget v0, p1, Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;->unreadCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-wide/16 v2, -0x1

    .line 749
    iput-wide v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstUnreadMessageId:J

    const/16 p1, -0x7f

    .line 750
    iput p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstUnreadMessagePosition:I

    goto :goto_0

    .line 752
    :cond_1
    iget-wide v2, p1, Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;->messageId:J

    iput-wide v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstUnreadMessageId:J

    .line 753
    iget p1, p1, Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;->unreadCount:I

    iput p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->unreadCount:I

    const/4 p1, 0x0

    .line 754
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->headerBitmap:Landroid/graphics/Bitmap;

    .line 756
    iget-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstLoad:Z

    if-eqz p1, :cond_2

    .line 757
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object p1

    iget-wide v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstUnreadMessageId:J

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v3, v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestScrollToMessageId(JZZ)V

    .line 760
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstLoad:Z

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 668
    check-cast p1, Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->onChanged(Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    .line 689
    iget-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstUnreadMessageId:J

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    return-void

    .line 692
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 694
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 695
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 700
    iget v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->firstUnreadMessagePosition:I

    if-eq v3, v4, :cond_2

    goto/16 :goto_1

    .line 703
    :cond_2
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->headerBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    .line 704
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c00b1

    invoke-virtual {v3, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901cf

    .line 705
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 706
    iget-object v5, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v5}, Lio/olvid/messenger/activities/DiscussionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f000d

    iget v7, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->unreadCount:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 707
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v6, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->headerHeight:I

    .line 709
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 708
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 710
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->headerHeight:I

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 711
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->headerHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->headerBitmap:Landroid/graphics/Bitmap;

    .line 712
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->headerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 713
    invoke-virtual {v3, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 715
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 716
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->itemRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 717
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 718
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 719
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->headerBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;->shift:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 720
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
