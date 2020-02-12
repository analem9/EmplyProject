.class Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "FilteredContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->onChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;",
            ">;"
        }
    .end annotation
.end field

.field oldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

.field final synthetic val$contacts:Ljava/util/List;

.field final synthetic val$newShowMyId:Z

.field final synthetic val$oldShowMyId:Z


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;Ljava/util/List;ZZ)V
    .locals 0

    .line 297
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->val$contacts:Ljava/util/List;

    iput-boolean p3, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->val$oldShowMyId:Z

    iput-boolean p4, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->val$newShowMyId:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 298
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    invoke-static {p1}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->access$100(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->oldList:Ljava/util/List;

    .line 299
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->val$contacts:Ljava/util/List;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->newList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->val$oldShowMyId:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 324
    :cond_0
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->val$newShowMyId:Z

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    const/4 v0, 0x0

    if-gez p1, :cond_3

    if-gez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    if-gez p2, :cond_4

    return v0

    .line 334
    :cond_4
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;

    iget-object p1, p1, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;

    iget-object p2, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 3

    .line 345
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->val$oldShowMyId:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 348
    :cond_0
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->val$newShowMyId:Z

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    if-gez p1, :cond_2

    if-gez p2, :cond_2

    const/4 p1, -0x1

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 355
    :cond_2
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;

    .line 356
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;

    const/4 v0, 0x0

    .line 359
    iget-object v1, p1, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 362
    :cond_3
    iget-object v1, p1, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget v1, v1, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    if-lez v1, :cond_4

    iget-object v1, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget v1, v1, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget v1, v1, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    if-lez v1, :cond_6

    iget-object v1, p1, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget v1, v1, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    if-nez v1, :cond_6

    :cond_5
    or-int/lit8 v0, v0, 0x2

    .line 366
    :cond_6
    iget-boolean v1, p1, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->selected:Z

    iget-boolean v2, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->selected:Z

    xor-int/2addr v1, v2

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x4

    .line 372
    :cond_7
    iget-object p1, p1, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget p1, p1, Lio/olvid/messenger/databases/entity/Contact;->newPublishedDetails:I

    iget-object p2, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget p2, p2, Lio/olvid/messenger/databases/entity/Contact;->newPublishedDetails:I

    if-eq p1, p2, :cond_8

    or-int/lit8 v0, v0, 0x10

    .line 375
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 312
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->val$newShowMyId:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->newList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 315
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->newList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 303
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->val$oldShowMyId:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->oldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 306
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;->oldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
