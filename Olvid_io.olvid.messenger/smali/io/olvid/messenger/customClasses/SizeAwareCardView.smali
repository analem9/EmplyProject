.class public Lio/olvid/messenger/customClasses/SizeAwareCardView;
.super Landroidx/cardview/widget/CardView;
.source "SizeAwareCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;
    }
.end annotation


# instance fields
.field private sizeChangeListener:Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lio/olvid/messenger/customClasses/SizeAwareCardView;->sizeChangeListener:Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lio/olvid/messenger/customClasses/SizeAwareCardView;->sizeChangeListener:Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lio/olvid/messenger/customClasses/SizeAwareCardView;->sizeChangeListener:Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->onSizeChanged(IIII)V

    .line 30
    iget-object v0, p0, Lio/olvid/messenger/customClasses/SizeAwareCardView;->sizeChangeListener:Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p1, p2, p3, p4}, Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;->onSizeChange(IIII)V

    :cond_0
    return-void
.end method

.method public removeSizeChangeListener()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lio/olvid/messenger/customClasses/SizeAwareCardView;->sizeChangeListener:Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;

    return-void
.end method

.method public setSizeChangeListener(Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lio/olvid/messenger/customClasses/SizeAwareCardView;->sizeChangeListener:Lio/olvid/messenger/customClasses/SizeAwareCardView$SizeChangeListener;

    return-void
.end method
