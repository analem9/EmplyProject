.class public Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MessageAttachmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttachmentSpaceItemDecoration"
.end annotation


# static fields
.field public static final attachmentDpSpace:I = 0x2


# instance fields
.field final space:I

.field final synthetic this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;


# direct methods
.method public constructor <init>(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;Landroid/content/Context;)V
    .locals 1

    .line 688
    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 689
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x40000000    # 2.0f

    .line 690
    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 695
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 696
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 698
    iget-object p3, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-static {p3}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$000(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)I

    move-result p3

    const/4 p4, 0x2

    if-lt p2, p3, :cond_1

    if-lez p2, :cond_0

    .line 700
    iget p2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;->space:I

    mul-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void

    .line 705
    :cond_1
    iget-object p3, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-static {p3}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$000(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    return-void

    .line 709
    :cond_2
    iget-object p3, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-static {p3}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$000(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)I

    move-result p3

    if-eq p3, p4, :cond_6

    iget-object p3, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-static {p3}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$000(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)I

    move-result p3

    sub-int/2addr p3, v0

    if-ne p2, p3, :cond_3

    iget-object p3, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-static {p3}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$000(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)I

    move-result p3

    and-int/2addr p3, v0

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_4

    .line 716
    iget p3, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;->space:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 718
    :cond_4
    iget p3, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;->space:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    if-le p2, v0, :cond_5

    .line 721
    iget p2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;->space:I

    mul-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_5
    return-void

    :cond_6
    :goto_1
    if-lez p2, :cond_7

    .line 711
    iget p2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;->space:I

    mul-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_7
    return-void
.end method
