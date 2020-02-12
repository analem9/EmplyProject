.class Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$2;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "FilteredContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->onBindViewHolder(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

.field final synthetic val$animated:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$2;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$2;->val$animated:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 496
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$2$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$2$1;-><init>(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
