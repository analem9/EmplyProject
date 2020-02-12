.class public Lio/olvid/messenger/viewModels/MessageDetailsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MessageDetailsViewModel.java"


# instance fields
.field private final attachmentFyles:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private db:Lio/olvid/messenger/databases/AppDatabase;

.field private final discussionCustomization:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final messageIdLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final messageRecipientInfos:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 27
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->db:Lio/olvid/messenger/databases/AppDatabase;

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->messageIdLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 29
    iget-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->messageIdLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lio/olvid/messenger/viewModels/MessageDetailsViewModel$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/MessageDetailsViewModel$1;-><init>(Lio/olvid/messenger/viewModels/MessageDetailsViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->message:Landroidx/lifecycle/LiveData;

    .line 39
    iget-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->messageIdLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lio/olvid/messenger/viewModels/MessageDetailsViewModel$2;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/MessageDetailsViewModel$2;-><init>(Lio/olvid/messenger/viewModels/MessageDetailsViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->messageRecipientInfos:Landroidx/lifecycle/LiveData;

    .line 49
    iget-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->message:Landroidx/lifecycle/LiveData;

    new-instance v1, Lio/olvid/messenger/viewModels/MessageDetailsViewModel$3;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/MessageDetailsViewModel$3;-><init>(Lio/olvid/messenger/viewModels/MessageDetailsViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->discussionCustomization:Landroidx/lifecycle/LiveData;

    .line 59
    iget-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->message:Landroidx/lifecycle/LiveData;

    new-instance v1, Lio/olvid/messenger/viewModels/MessageDetailsViewModel$4;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/MessageDetailsViewModel$4;-><init>(Lio/olvid/messenger/viewModels/MessageDetailsViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->attachmentFyles:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/viewModels/MessageDetailsViewModel;)Lio/olvid/messenger/databases/AppDatabase;
    .locals 0

    .line 16
    iget-object p0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->db:Lio/olvid/messenger/databases/AppDatabase;

    return-object p0
.end method


# virtual methods
.method public getAttachmentFyles()Landroidx/lifecycle/LiveData;
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

    .line 87
    iget-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->attachmentFyles:Landroidx/lifecycle/LiveData;

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

    .line 83
    iget-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->discussionCustomization:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getMessage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->message:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getMessageRecipientInfos()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->messageRecipientInfos:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public setMessageId(J)V
    .locals 1

    .line 71
    iget-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->messageIdLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
