.class public Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GroupListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/GroupListFragment;
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

.field final synthetic this$0:Lio/olvid/messenger/fragments/GroupListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/GroupListFragment;Landroid/content/Context;)V
    .locals 2

    .line 154
    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->this$0:Lio/olvid/messenger/fragments/GroupListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 155
    invoke-virtual {p1}, Lio/olvid/messenger/fragments/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 156
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->dividerHeight:I

    const/high16 v1, 0x42880000    # 68.0f

    .line 157
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->marginLeft:I

    const/high16 v1, 0x41400000    # 12.0f

    .line 158
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->marginRight:I

    const p1, 0x7f06001d

    .line 159
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->backgroundColor:I

    const p1, 0x7f060072

    .line 160
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->foregroundColor:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 186
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 187
    iget-object p3, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->this$0:Lio/olvid/messenger/fragments/GroupListFragment;

    invoke-static {p3}, Lio/olvid/messenger/fragments/GroupListFragment;->access$100(Lio/olvid/messenger/fragments/GroupListFragment;)Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    move-result-object p3

    invoke-static {p3}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->access$200(Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;

    iget-object p3, p3, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->group:Lio/olvid/messenger/databases/entity/Group;

    iget-object p3, p3, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-eqz p3, :cond_0

    iget-object p3, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->this$0:Lio/olvid/messenger/fragments/GroupListFragment;

    invoke-static {p3}, Lio/olvid/messenger/fragments/GroupListFragment;->access$100(Lio/olvid/messenger/fragments/GroupListFragment;)Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    move-result-object p3

    invoke-static {p3}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->access$200(Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;)Ljava/util/List;

    move-result-object p3

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;

    iget-object p2, p2, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->group:Lio/olvid/messenger/databases/entity/Group;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-nez p2, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget p2, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->dividerHeight:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 165
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 167
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 168
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    iget-object v3, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->this$0:Lio/olvid/messenger/fragments/GroupListFragment;

    invoke-static {v3}, Lio/olvid/messenger/fragments/GroupListFragment;->access$100(Lio/olvid/messenger/fragments/GroupListFragment;)Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    move-result-object v3

    invoke-static {v3}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->access$200(Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;

    iget-object v3, v3, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->this$0:Lio/olvid/messenger/fragments/GroupListFragment;

    invoke-static {v3}, Lio/olvid/messenger/fragments/GroupListFragment;->access$100(Lio/olvid/messenger/fragments/GroupListFragment;)Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    move-result-object v3

    invoke-static {v3}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->access$200(Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;)Ljava/util/List;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;

    iget-object v2, v2, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-nez v2, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 173
    invoke-virtual {p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 175
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->dividerHeight:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 176
    iget v1, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->backgroundColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 177
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->marginLeft:I

    add-int/2addr v1, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->marginRight:I

    sub-int/2addr v4, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->dividerHeight:I

    add-int/2addr v2, v5

    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 178
    iget v1, p0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;->foregroundColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
