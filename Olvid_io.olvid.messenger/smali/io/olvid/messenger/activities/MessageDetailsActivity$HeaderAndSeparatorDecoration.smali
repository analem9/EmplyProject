.class public Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MessageDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/MessageDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderAndSeparatorDecoration"
.end annotation


# instance fields
.field private final bitmapCache:[Landroid/graphics/Bitmap;

.field private final headerHeight:I

.field private final itemRect:Landroid/graphics/Rect;

.field private final separatorHeight:I

.field final synthetic this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MessageDetailsActivity;)V
    .locals 2

    .line 512
    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 513
    invoke-virtual {p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41e00000    # 28.0f

    .line 514
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->headerHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 515
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->separatorHeight:I

    .line 516
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->itemRect:Landroid/graphics/Rect;

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/graphics/Bitmap;

    .line 517
    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->bitmapCache:[Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 574
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 575
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 579
    iget-object p3, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object p3, p3, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosAdapter:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    invoke-static {p3}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->access$200(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-virtual {p3}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->status()I

    move-result p3

    iget-object p4, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object p4, p4, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosAdapter:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    invoke-static {p4}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->access$200(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;)Ljava/util/List;

    move-result-object p4

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-virtual {p2}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->status()I

    move-result p2

    if-eq p3, p2, :cond_1

    goto :goto_0

    .line 582
    :cond_1
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p3, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->separatorHeight:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 580
    :cond_2
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p3, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->headerHeight:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    .line 522
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_8

    .line 524
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 525
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v3, :cond_1

    .line 529
    iget-object v4, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v4, v4, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosAdapter:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    invoke-static {v4}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->access$200(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->status()I

    move-result v4

    iget-object v5, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v5, v5, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosAdapter:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    invoke-static {v5}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->access$200(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;)Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->status()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 530
    :cond_1
    iget-object v4, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v4, v4, Lio/olvid/messenger/activities/MessageDetailsActivity;->recipientInfosAdapter:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    invoke-static {v4}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->access$200(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->status()I

    move-result v3

    .line 532
    iget-object v4, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->bitmapCache:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v3

    if-nez v4, :cond_6

    .line 533
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c00ad

    invoke-virtual {v4, v5, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f09017e

    .line 534
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f09017d

    .line 535
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    const/4 v7, 0x1

    if-eq v3, v7, :cond_4

    const/4 v7, 0x2

    if-eq v3, v7, :cond_3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_2

    goto :goto_1

    :cond_2
    const v7, 0x7f1001df

    .line 550
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0800af

    .line 551
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const v7, 0x7f1001cd

    .line 546
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0800b0

    .line 547
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    const v7, 0x7f1001e0

    .line 542
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0800cb

    .line 543
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const v7, 0x7f1001de

    .line 538
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0800e2

    .line 539
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 554
    :goto_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v7, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->headerHeight:I

    .line 555
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 554
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 556
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->headerHeight:I

    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 557
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->headerHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 558
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 559
    invoke-virtual {v4, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 560
    iget-object v4, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->bitmapCache:[Landroid/graphics/Bitmap;

    aput-object v5, v4, v3

    .line 562
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 563
    iget-object v4, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->itemRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 564
    iget-object v4, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->itemRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 565
    iget-object v4, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->itemRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v5, v2

    float-to-int v2, v5

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 566
    iget-object v2, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->bitmapCache:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v3

    iget-object v3, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->itemRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$HeaderAndSeparatorDecoration;->itemRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 567
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method
