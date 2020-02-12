.class Lio/olvid/messenger/activities/ShareActivity$2;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ShareActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lio/olvid/messenger/activities/ShareActivity;

.field final synthetic val$contactNameFilter:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ShareActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lio/olvid/messenger/activities/ShareActivity$2;->this$0:Lio/olvid/messenger/activities/ShareActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/ShareActivity$2;->val$contactNameFilter:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 4

    if-nez p1, :cond_0

    .line 116
    iget-object p1, p0, Lio/olvid/messenger/activities/ShareActivity$2;->this$0:Lio/olvid/messenger/activities/ShareActivity;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/ShareActivity;->finish()V

    return-void

    .line 119
    :cond_0
    new-instance v0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    invoke-direct {v0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;-><init>()V

    .line 120
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    iget-object v2, p0, Lio/olvid/messenger/activities/ShareActivity$2;->this$0:Lio/olvid/messenger/activities/ShareActivity;

    const v3, 0x7f1001ca

    invoke-virtual {v2, v3}, Lio/olvid/messenger/activities/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getAllActiveWithContactNamesOrderedByActivity([BLjava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->setUnfilteredDiscussions(Landroidx/lifecycle/LiveData;)V

    .line 121
    iget-object p1, p0, Lio/olvid/messenger/activities/ShareActivity$2;->val$contactNameFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->setDiscussionFilterEditText(Landroid/widget/EditText;)V

    .line 122
    new-instance p1, Lio/olvid/messenger/activities/ShareActivity$2$1;

    invoke-direct {p1, p0}, Lio/olvid/messenger/activities/ShareActivity$2$1;-><init>(Lio/olvid/messenger/activities/ShareActivity$2;)V

    invoke-virtual {v0, p1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->setOnClickDelegate(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;)V

    .line 129
    iget-object p1, p0, Lio/olvid/messenger/activities/ShareActivity$2;->this$0:Lio/olvid/messenger/activities/ShareActivity;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/ShareActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f090144

    .line 130
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 131
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ShareActivity$2;->onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method
