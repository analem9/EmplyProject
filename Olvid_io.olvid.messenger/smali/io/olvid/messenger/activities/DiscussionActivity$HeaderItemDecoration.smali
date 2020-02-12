.class public Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DiscussionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/DiscussionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderItemDecoration"
.end annotation


# instance fields
.field private appearing:Z

.field private fadingHeader:Ljava/lang/String;

.field private firstLoad:Z

.field private final headerBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final headerHeight:I

.field private final headerRect:Landroid/graphics/Rect;

.field private final headerStringsToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final itemRect:Landroid/graphics/Rect;

.field private previousOpacity:I

.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;

.field private wasScrolling:Z


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 2

    .line 776
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 777
    invoke-virtual {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41f00000    # 30.0f

    .line 778
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerHeight:I

    .line 779
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerBitmaps:Ljava/util/HashMap;

    .line 780
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerStringsToRemove:Ljava/util/Set;

    .line 781
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    .line 782
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 783
    iput-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->wasScrolling:Z

    .line 784
    iput-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->firstLoad:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 917
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 918
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p2, p3

    if-eqz p2, :cond_1

    .line 923
    iget-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    .line 924
    invoke-static {p3}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object p4

    invoke-static {p4}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v0, p4, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    iget-object p4, p0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p4}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object p4

    invoke-static {p4}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object p4

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v2, p2, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    invoke-virtual {p3, v0, v1, v2, v3}, Lio/olvid/messenger/activities/DiscussionActivity;->notTheSameDay(JJ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 925
    :cond_1
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerHeight:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 789
    iget-object v3, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v3}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object v3

    invoke-static {v3}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 793
    :cond_0
    iget-object v3, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerStringsToRemove:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 794
    iget-object v3, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerStringsToRemove:Ljava/util/Set;

    iget-object v4, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerBitmaps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_14

    .line 799
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 800
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_13

    if-nez v8, :cond_1

    goto/16 :goto_9

    :cond_1
    add-int/lit8 v8, v8, -0x1

    .line 805
    iget-object v9, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v9}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object v9

    invoke-static {v9}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v9, v9, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v9, v10}, Lio/olvid/messenger/App;->getDayOfDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 807
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerBitmaps:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 808
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerStringsToRemove:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 810
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f0c00b3

    invoke-virtual {v12, v13, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0901d6

    .line 811
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 812
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    iget v15, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerHeight:I

    .line 814
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 813
    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 815
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    iget v14, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerHeight:I

    invoke-virtual {v12, v5, v5, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 816
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    iget v14, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerHeight:I

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 817
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 818
    invoke-virtual {v12, v14}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 819
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerBitmaps:Ljava/util/HashMap;

    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    :goto_1
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v12}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 823
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v14

    add-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 824
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v7

    add-float/2addr v13, v7

    float-to-int v7, v13

    iput v7, v12, Landroid/graphics/Rect;->bottom:I

    .line 825
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-gt v7, v3, :cond_11

    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-le v7, v3, :cond_11

    .line 828
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v7}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object v7

    invoke-static {v7}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v12, v8, 0x1

    const/4 v13, 0x1

    if-le v7, v12, :cond_3

    .line 829
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v7}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object v14

    invoke-static {v14}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v14, v12, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    invoke-virtual {v7, v9, v10, v14, v15}, Lio/olvid/messenger/activities/DiscussionActivity;->notTheSameDay(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 830
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerHeight:I

    sub-int/2addr v7, v12

    if-ge v7, v3, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_4

    .line 837
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerRect:Landroid/graphics/Rect;

    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget v14, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerHeight:I

    sub-int/2addr v12, v14

    iput v12, v7, Landroid/graphics/Rect;->top:I

    .line 838
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerRect:Landroid/graphics/Rect;

    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iput v12, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 840
    :cond_4
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerRect:Landroid/graphics/Rect;

    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 841
    iget v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerHeight:I

    add-int/2addr v12, v3

    iput v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 843
    :goto_3
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerRect:Landroid/graphics/Rect;

    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iput v12, v7, Landroid/graphics/Rect;->left:I

    .line 844
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerRect:Landroid/graphics/Rect;

    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iput v12, v7, Landroid/graphics/Rect;->right:I

    .line 845
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 846
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 847
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 848
    iget-boolean v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->wasScrolling:Z

    const/16 v14, 0xff

    if-nez v12, :cond_6

    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v12}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1500(Lio/olvid/messenger/activities/DiscussionActivity;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 849
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->fadingHeader:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 850
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v12}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1600(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/animation/ValueAnimator;

    move-result-object v12

    iget v15, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->previousOpacity:I

    mul-int/lit16 v15, v15, 0x12c

    div-int/2addr v15, v14

    int-to-long v14, v15

    invoke-virtual {v12, v14, v15}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 852
    :cond_5
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v12}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1600(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 853
    iput-object v11, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->fadingHeader:Ljava/lang/String;

    .line 854
    iput-boolean v13, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->appearing:Z

    .line 855
    iput-boolean v5, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->firstLoad:Z

    goto :goto_5

    .line 856
    :cond_6
    iget-boolean v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->wasScrolling:Z

    if-eqz v12, :cond_9

    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v12}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1500(Lio/olvid/messenger/activities/DiscussionActivity;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 857
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->fadingHeader:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->previousOpacity:I

    const/16 v13, 0xff

    if-eq v12, v13, :cond_8

    .line 858
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v12}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1700(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/animation/ValueAnimator;

    move-result-object v12

    iget v14, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->previousOpacity:I

    mul-int/lit16 v14, v14, 0x12c

    div-int/2addr v14, v13

    int-to-long v14, v14

    invoke-virtual {v12, v14, v15}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_4

    :cond_7
    const/16 v13, 0xff

    .line 860
    :cond_8
    iput v13, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->previousOpacity:I

    .line 862
    :goto_4
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v12}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1700(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 863
    iput-object v11, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->fadingHeader:Ljava/lang/String;

    .line 864
    iput-boolean v5, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->appearing:Z

    .line 865
    iput-boolean v5, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->firstLoad:Z

    goto :goto_6

    :cond_9
    :goto_5
    const/16 v13, 0xff

    .line 869
    :goto_6
    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-ne v12, v3, :cond_a

    if-eqz v8, :cond_10

    iget-object v12, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    .line 871
    invoke-static {v12}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object v14

    invoke-static {v14}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v14

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v14, v8, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    invoke-virtual {v12, v9, v10, v14, v15}, Lio/olvid/messenger/activities/DiscussionActivity;->notTheSameDay(JJ)Z

    move-result v8

    if-nez v8, :cond_10

    .line 872
    :cond_a
    iget-object v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->fadingHeader:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 873
    iget-boolean v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->appearing:Z

    if-eqz v8, :cond_c

    .line 874
    iget-object v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v8}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1600(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 875
    iget-object v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v8}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1600(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_7

    :cond_b
    const/16 v8, 0xff

    goto :goto_7

    .line 878
    :cond_c
    iget-object v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v8}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1700(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 879
    iget-object v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v8}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1700(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 880
    iget-object v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v8}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1700(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_7

    .line 882
    :cond_d
    iget v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->previousOpacity:I

    goto :goto_7

    :cond_e
    const/4 v8, 0x0

    .line 888
    :goto_7
    iput v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->previousOpacity:I

    move v13, v8

    goto :goto_8

    .line 889
    :cond_f
    iget-boolean v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->firstLoad:Z

    if-eqz v8, :cond_10

    const/4 v13, 0x0

    .line 893
    :cond_10
    :goto_8
    iget-object v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v8}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1500(Lio/olvid/messenger/activities/DiscussionActivity;)Z

    move-result v8

    iput-boolean v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->wasScrolling:Z

    .line 894
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 896
    iget-object v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerBitmaps:Ljava/util/HashMap;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    iget-object v9, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {v1, v8, v9, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 897
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    .line 898
    :cond_11
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v7, v3, :cond_13

    if-eqz v8, :cond_12

    .line 899
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    .line 900
    invoke-static {v7}, Lio/olvid/messenger/activities/DiscussionActivity;->access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    move-result-object v12

    invoke-static {v12}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v12

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v12, v8, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    invoke-virtual {v7, v9, v10, v12, v13}, Lio/olvid/messenger/activities/DiscussionActivity;->notTheSameDay(JJ)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 901
    :cond_12
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v9, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerHeight:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 902
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 903
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 904
    iget-object v7, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerBitmaps:Ljava/util/HashMap;

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    iget-object v8, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v9, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->itemRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 905
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 910
    :cond_14
    iget-object v1, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerStringsToRemove:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 911
    iget-object v3, v0, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;->headerBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_15
    return-void
.end method
