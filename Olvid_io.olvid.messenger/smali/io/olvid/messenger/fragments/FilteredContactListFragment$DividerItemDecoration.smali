.class public Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FilteredContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/FilteredContactListFragment;
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

.field final synthetic this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/FilteredContactListFragment;Landroid/content/Context;)V
    .locals 2

    .line 130
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 131
    invoke-virtual {p1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 132
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->dividerHeight:I

    const/high16 v1, 0x42880000    # 68.0f

    .line 133
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->marginLeft:I

    const/high16 v1, 0x41400000    # 12.0f

    .line 134
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->marginRight:I

    const p1, 0x7f06001d

    .line 135
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->backgroundColor:I

    const p1, 0x7f060072

    .line 136
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->foregroundColor:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 168
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 169
    iget-object p3, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-static {p3}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->access$000(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    iget-object p2, p2, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->hasFilter()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->dividerHeight:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .line 141
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 143
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 144
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v3, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-static {v3}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->access$000(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    iget-object v2, v2, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {v2}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->hasFilter()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 149
    invoke-virtual {p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 150
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 151
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 154
    iget v3, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->backgroundColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v3, v1

    .line 155
    iget v5, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->foregroundColor:I

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 157
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->dividerHeight:I

    add-int/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 158
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 159
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->marginLeft:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->marginRight:I

    sub-int/2addr v5, v6

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;->dividerHeight:I

    add-int/2addr v2, v6

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 160
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method
