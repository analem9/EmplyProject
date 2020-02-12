.class Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$1;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "IdentityCreationActivityNoAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 92
    :cond_0
    new-instance p1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    invoke-direct {p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;-><init>()V

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 101
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    iget-object p2, p2, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    if-eqz p2, :cond_1

    .line 114
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    invoke-static {p2}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getIdentityReady()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 116
    :cond_1
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    move-object v0, p1

    check-cast v0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    iput-object v0, p2, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    .line 117
    iget-object p2, p2, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    invoke-static {v0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getIdentityDetails()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {p2, v0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->setIdentityDetails(Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    .line 118
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    invoke-static {p2}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getIdentityReady()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    iget-object v1, v1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    iget-object v1, v1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->identityReadyObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_0
    return-object p1
.end method
