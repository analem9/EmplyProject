.class Lio/olvid/messenger/customClasses/EmptyRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "EmptyRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/customClasses/EmptyRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/customClasses/EmptyRecyclerView;


# direct methods
.method constructor <init>(Lio/olvid/messenger/customClasses/EmptyRecyclerView;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView$1;->this$0:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 19
    iget-object v0, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView$1;->this$0:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->access$002(Lio/olvid/messenger/customClasses/EmptyRecyclerView;Z)Z

    .line 20
    iget-object v0, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView$1;->this$0:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->checkIfEmpty()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 25
    iget-object p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView$1;->this$0:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {p1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->checkIfEmpty()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 30
    iget-object p1, p0, Lio/olvid/messenger/customClasses/EmptyRecyclerView$1;->this$0:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {p1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->checkIfEmpty()V

    return-void
.end method
