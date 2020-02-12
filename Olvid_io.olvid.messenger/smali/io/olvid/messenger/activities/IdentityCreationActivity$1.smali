.class Lio/olvid/messenger/activities/IdentityCreationActivity$1;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "IdentityCreationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/IdentityCreationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/IdentityCreationActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 93
    :cond_0
    new-instance p1, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

    invoke-direct {p1}, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;-><init>()V

    return-object p1

    .line 91
    :cond_1
    new-instance p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    invoke-direct {p1}, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;-><init>()V

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 102
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    .line 114
    :cond_0
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    iget-object p2, p2, Lio/olvid/messenger/activities/IdentityCreationActivity;->displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

    if-eqz p2, :cond_1

    .line 115
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivity;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getIdentityReady()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity;->displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 117
    :cond_1
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    move-object v0, p1

    check-cast v0, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

    iput-object v0, p2, Lio/olvid/messenger/activities/IdentityCreationActivity;->displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

    .line 118
    iget-object p2, p2, Lio/olvid/messenger/activities/IdentityCreationActivity;->displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivity;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getIdentityDetails()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {p2, v0}, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;->setIdentityDetails(Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    .line 119
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivity;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getIdentityReady()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity;->displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    iget-object v1, v1, Lio/olvid/messenger/activities/IdentityCreationActivity;->displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

    iget-object v1, v1, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;->identityReadyObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    iget-object p2, p2, Lio/olvid/messenger/activities/IdentityCreationActivity;->serverAndApiKeyFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    if-eqz p2, :cond_3

    .line 106
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivity;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getServer()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity;->serverAndApiKeyFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 107
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivity;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getApiKey()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity;->serverAndApiKeyFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 109
    :cond_3
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    move-object v0, p1

    check-cast v0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iput-object v0, p2, Lio/olvid/messenger/activities/IdentityCreationActivity;->serverAndApiKeyFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    .line 110
    invoke-static {p2}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivity;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getServer()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity;->serverAndApiKeyFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    iget-object v1, v1, Lio/olvid/messenger/activities/IdentityCreationActivity;->serverAndApiKeyFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object v1, v1, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->serverObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 111
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivity;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getApiKey()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity;->serverAndApiKeyFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    iget-object v1, v1, Lio/olvid/messenger/activities/IdentityCreationActivity;->serverAndApiKeyFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object v1, v1, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->apiKeyObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_0
    return-object p1
.end method
