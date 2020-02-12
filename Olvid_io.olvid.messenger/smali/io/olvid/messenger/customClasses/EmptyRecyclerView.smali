.class public Lio/olvid/messenger/customClasses/EmptyRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "EmptyRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/customClasses/EmptyRecyclerView$OnScrollStateChangedListener;
    }
.end annotation


# instance fields
.field private emptyThreshold:I

.field private emptyView:Landroid/view/View;

.field private hideIfEmpty:Z

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/olvid/messenger/customClasses/EmptyRecyclerView$OnScrollStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private loadingDone:Z

.field private final observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->loadingDone:Z

    .line 13
    iput p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->emptyThreshold:I

    .line 14
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->hideIfEmpty:Z

    .line 16
    new-instance p1, Lio/olvid/messenger/customClasses/EmptyRecyclerView$1;

    invoke-direct {p1, p0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView$1;-><init>(Lio/olvid/messenger/customClasses/EmptyRecyclerView;)V

    iput-object p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->loadingDone:Z

    .line 13
    iput p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->emptyThreshold:I

    .line 14
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->hideIfEmpty:Z

    .line 16
    new-instance p1, Lio/olvid/messenger/customClasses/EmptyRecyclerView$1;

    invoke-direct {p1, p0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView$1;-><init>(Lio/olvid/messenger/customClasses/EmptyRecyclerView;)V

    iput-object p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->loadingDone:Z

    .line 13
    iput p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->emptyThreshold:I

    .line 14
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->hideIfEmpty:Z

    .line 16
    new-instance p1, Lio/olvid/messenger/customClasses/EmptyRecyclerView$1;

    invoke-direct {p1, p0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView$1;-><init>(Lio/olvid/messenger/customClasses/EmptyRecyclerView;)V

    iput-object p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$002(Lio/olvid/messenger/customClasses/EmptyRecyclerView;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->loadingDone:Z

    return p1
.end method


# virtual methods
.method public addOnScrollStateChangedListener(Lio/olvid/messenger/customClasses/EmptyRecyclerView$OnScrollStateChangedListener;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method checkIfEmpty()V
    .locals 5

    .line 47
    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 48
    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->emptyThreshold:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    iget-object v1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->emptyView:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 50
    iget-boolean v4, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->loadingDone:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_2
    iget-boolean v1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->hideIfEmpty:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    .line 53
    :cond_3
    invoke-virtual {p0, v2}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 99
    iget-object v0, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/customClasses/EmptyRecyclerView$OnScrollStateChangedListener;

    .line 100
    invoke-interface {v1, p1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView$OnScrollStateChangedListener;->onScrollStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeOnScrollStateChangedListener(Lio/olvid/messenger/customClasses/EmptyRecyclerView$OnScrollStateChangedListener;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1

    .line 70
    iget-object v0, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 73
    :cond_1
    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->checkIfEmpty()V

    return-void
.end method

.method public setEmptyThreshold(I)V
    .locals 0

    .line 82
    iput p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->emptyThreshold:I

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->emptyView:Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->checkIfEmpty()V

    return-void
.end method

.method public setHideIfEmpty(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->hideIfEmpty:Z

    return-void
.end method
