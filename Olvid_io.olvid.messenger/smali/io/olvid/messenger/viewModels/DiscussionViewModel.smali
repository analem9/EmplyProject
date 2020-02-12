.class public Lio/olvid/messenger/viewModels/DiscussionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "DiscussionViewModel.java"


# instance fields
.field private db:Lio/olvid/messenger/databases/AppDatabase;

.field private final discussionContacts:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final discussionCustomization:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
            ">;"
        }
    .end annotation
.end field

.field private final discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final discussionLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;"
        }
    .end annotation
.end field

.field private final draftMessage:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final draftMessageFyles:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messages:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private newMessageText:Ljava/lang/CharSequence;

.field private final selectedMessageIds:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectingForDeletion:Z

.field private final unreadCountAndFirstMessage:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 43
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->db:Lio/olvid/messenger/databases/AppDatabase;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectingForDeletion:Z

    .line 45
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectedMessageIds:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 48
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lio/olvid/messenger/viewModels/DiscussionViewModel$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/DiscussionViewModel$1;-><init>(Lio/olvid/messenger/viewModels/DiscussionViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->messages:Landroidx/lifecycle/LiveData;

    .line 58
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lio/olvid/messenger/viewModels/DiscussionViewModel$2;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/DiscussionViewModel$2;-><init>(Lio/olvid/messenger/viewModels/DiscussionViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->draftMessageFyles:Landroidx/lifecycle/LiveData;

    .line 68
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lio/olvid/messenger/viewModels/DiscussionViewModel$3;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/DiscussionViewModel$3;-><init>(Lio/olvid/messenger/viewModels/DiscussionViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->draftMessage:Landroidx/lifecycle/LiveData;

    .line 78
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lio/olvid/messenger/viewModels/DiscussionViewModel$4;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/DiscussionViewModel$4;-><init>(Lio/olvid/messenger/viewModels/DiscussionViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionLiveData:Landroidx/lifecycle/LiveData;

    .line 88
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionLiveData:Landroidx/lifecycle/LiveData;

    new-instance v1, Lio/olvid/messenger/viewModels/DiscussionViewModel$5;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/DiscussionViewModel$5;-><init>(Lio/olvid/messenger/viewModels/DiscussionViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionContacts:Landroidx/lifecycle/LiveData;

    .line 104
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lio/olvid/messenger/viewModels/DiscussionViewModel$6;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/DiscussionViewModel$6;-><init>(Lio/olvid/messenger/viewModels/DiscussionViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->unreadCountAndFirstMessage:Landroidx/lifecycle/LiveData;

    .line 114
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lio/olvid/messenger/viewModels/DiscussionViewModel$7;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/DiscussionViewModel$7;-><init>(Lio/olvid/messenger/viewModels/DiscussionViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionCustomization:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/viewModels/DiscussionViewModel;)Lio/olvid/messenger/databases/AppDatabase;
    .locals 0

    .line 27
    iget-object p0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->db:Lio/olvid/messenger/databases/AppDatabase;

    return-object p0
.end method


# virtual methods
.method public deselectAll()V
    .locals 2

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectingForDeletion:Z

    .line 184
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectedMessageIds:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getDiscussion()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getDiscussionContacts()Landroidx/lifecycle/LiveData;
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

    .line 142
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionContacts:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getDiscussionCustomization()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionCustomization:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getDiscussionId()Ljava/lang/Long;
    .locals 1

    .line 130
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getDraftMessage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->draftMessage:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getDraftMessageFyles()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;>;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->draftMessageFyles:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getMessages()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->messages:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getRawNewMessageText()Ljava/lang/CharSequence;
    .locals 1

    .line 194
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->newMessageText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSelectedMessageIds()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectedMessageIds:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrimmedNewMessageText()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->newMessageText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 199
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->newMessageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnreadCountAndFirstMessage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->unreadCountAndFirstMessage:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public hasAttachments()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->draftMessageFyles:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->draftMessageFyles:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectingForDeletion()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectingForDeletion:Z

    return v0
.end method

.method public selectMessageId(J)V
    .locals 2

    .line 160
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectedMessageIds:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectedMessageIds:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    iget-object v1, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectedMessageIds:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectingForDeletion:Z

    goto :goto_1

    .line 172
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectingForDeletion:Z

    .line 175
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectedMessageIds:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setDiscussionId(Ljava/lang/Long;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setNewMessageText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel;->newMessageText:Ljava/lang/CharSequence;

    return-void
.end method
