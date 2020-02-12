.class public Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FilteredDiscussionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DividerItemDecoration"
.end annotation


# instance fields
.field private final backgroundColor:I

.field private final dividerHeight:I

.field private final foregroundColor:I

.field private final marginLeft:I

.field private final marginRight:I

.field final synthetic this$0:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;Landroid/content/Context;)V
    .locals 2

    .line 100
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->this$0:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 101
    invoke-virtual {p1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 102
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->dividerHeight:I

    const/high16 v1, 0x42880000    # 68.0f

    .line 103
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->marginLeft:I

    const/high16 v1, 0x41400000    # 12.0f

    .line 104
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->marginRight:I

    const p1, 0x7f06001d

    .line 105
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->backgroundColor:I

    const p1, 0x7f060072

    .line 106
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->foregroundColor:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 132
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 136
    :cond_0
    iget p2, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->dividerHeight:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 111
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 113
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 114
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 119
    invoke-virtual {p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->dividerHeight:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 122
    iget v1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->backgroundColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 123
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->marginLeft:I

    add-int/2addr v1, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->marginRight:I

    sub-int/2addr v4, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->dividerHeight:I

    add-int/2addr v2, v5

    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 124
    iget v1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;->foregroundColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
