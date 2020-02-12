.class public Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DiscussionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DividerItemDecoration"
.end annotation


# instance fields
.field private final dividerHeight:I

.field private final foregroundColor:I

.field private final marginLeft:I

.field private final marginRight:I

.field final synthetic this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment;Landroid/content/Context;)V
    .locals 2

    .line 207
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 208
    invoke-virtual {p1}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 209
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;->dividerHeight:I

    const/high16 v1, 0x42a80000    # 84.0f

    .line 210
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;->marginLeft:I

    const/high16 v1, 0x41400000    # 12.0f

    .line 211
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;->marginRight:I

    const p1, 0x7f060072

    .line 212
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;->foregroundColor:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 238
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 217
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 219
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 220
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 225
    invoke-virtual {p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 226
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 227
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 229
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;->marginLeft:I

    add-int/2addr v1, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;->marginRight:I

    sub-int/2addr v4, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;->dividerHeight:I

    add-int/2addr v2, v5

    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 230
    iget v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;->foregroundColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
