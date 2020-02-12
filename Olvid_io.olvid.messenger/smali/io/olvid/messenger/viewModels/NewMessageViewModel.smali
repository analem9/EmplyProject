.class public Lio/olvid/messenger/viewModels/NewMessageViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "NewMessageViewModel.java"


# instance fields
.field private newMessageText:Ljava/lang/CharSequence;

.field private recipients:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 15
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/NewMessageViewModel;->recipients:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public addRecipient(Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lio/olvid/messenger/viewModels/NewMessageViewModel;->recipients:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, Lio/olvid/messenger/viewModels/NewMessageViewModel;->recipients:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getNewMessageText()Ljava/lang/CharSequence;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/olvid/messenger/viewModels/NewMessageViewModel;->newMessageText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRecipients()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lio/olvid/messenger/viewModels/NewMessageViewModel;->recipients:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public hasRecipents()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lio/olvid/messenger/viewModels/NewMessageViewModel;->recipients:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/olvid/messenger/viewModels/NewMessageViewModel;->recipients:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeRecipient(Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lio/olvid/messenger/viewModels/NewMessageViewModel;->recipients:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lio/olvid/messenger/viewModels/NewMessageViewModel;->recipients:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setNewMessageText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lio/olvid/messenger/viewModels/NewMessageViewModel;->newMessageText:Ljava/lang/CharSequence;

    return-void
.end method
