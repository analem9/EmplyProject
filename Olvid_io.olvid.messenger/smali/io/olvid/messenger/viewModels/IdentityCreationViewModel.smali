.class public Lio/olvid/messenger/viewModels/IdentityCreationViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "IdentityCreationViewModel.java"


# instance fields
.field private apiKey:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private forceDisabled:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private identityDetails:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/olvid/engine/engine/types/JsonIdentityDetails;",
            ">;"
        }
    .end annotation
.end field

.field private identityReady:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private server:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->server:Landroidx/lifecycle/MutableLiveData;

    .line 14
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->apiKey:Landroidx/lifecycle/MutableLiveData;

    .line 15
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityDetails:Landroidx/lifecycle/MutableLiveData;

    .line 16
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityReady:Landroidx/lifecycle/MutableLiveData;

    .line 17
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->forceDisabled:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private checkReady()V
    .locals 4

    .line 96
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->forceDisabled:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->forceDisabled:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityDetails:Landroidx/lifecycle/MutableLiveData;

    .line 97
    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityDetails:Landroidx/lifecycle/MutableLiveData;

    .line 98
    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 100
    :goto_0
    iget-object v3, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityReady:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityReady:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    xor-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 101
    iget-object v1, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityReady:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getApiKey()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->apiKey:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getForceDisabled()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->forceDisabled:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->forceDisabled:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIdentityDetails()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/olvid/engine/engine/types/JsonIdentityDetails;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityDetails:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getIdentityReady()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityReady:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getServer()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->server:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->apiKey:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 26
    invoke-direct {p0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->checkReady()V

    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityDetails:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-direct {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetails;-><init>()V

    .line 54
    :cond_0
    invoke-virtual {v0, p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->setCompany(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityDetails:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 56
    invoke-direct {p0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->checkReady()V

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityDetails:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-direct {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetails;-><init>()V

    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->setFirstName(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityDetails:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 36
    invoke-direct {p0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->checkReady()V

    return-void
.end method

.method public setForceDisabled(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->forceDisabled:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 72
    invoke-direct {p0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->checkReady()V

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityDetails:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-direct {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetails;-><init>()V

    .line 44
    :cond_0
    invoke-virtual {v0, p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->setLastName(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityDetails:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 46
    invoke-direct {p0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->checkReady()V

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityDetails:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-direct {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetails;-><init>()V

    .line 64
    :cond_0
    invoke-virtual {v0, p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->setPosition(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->identityDetails:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->checkReady()V

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->server:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 21
    invoke-direct {p0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->checkReady()V

    return-void
.end method
