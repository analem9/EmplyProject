.class Lio/olvid/messenger/fragments/DiscussionListFragment$1;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 2

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment$1;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/DiscussionListFragment$1;->onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method
