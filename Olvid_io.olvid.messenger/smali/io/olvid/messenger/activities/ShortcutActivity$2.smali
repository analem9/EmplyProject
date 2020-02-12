.class Lio/olvid/messenger/activities/ShortcutActivity$2;
.super Ljava/lang/Object;
.source "ShortcutActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ShortcutActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lio/olvid/messenger/activities/ShortcutActivity;

.field final synthetic val$contactNameFilter:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ShortcutActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lio/olvid/messenger/activities/ShortcutActivity$2;->this$0:Lio/olvid/messenger/activities/ShortcutActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/ShortcutActivity$2;->val$contactNameFilter:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 4

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Lio/olvid/messenger/activities/ShortcutActivity$2;->this$0:Lio/olvid/messenger/activities/ShortcutActivity;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/ShortcutActivity;->finish()V

    return-void

    .line 60
    :cond_0
    new-instance v0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    invoke-direct {v0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;-><init>()V

    .line 61
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    iget-object v2, p0, Lio/olvid/messenger/activities/ShortcutActivity$2;->this$0:Lio/olvid/messenger/activities/ShortcutActivity;

    const v3, 0x7f1001ca

    invoke-virtual {v2, v3}, Lio/olvid/messenger/activities/ShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getAllWithContactNames([BLjava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->setUnfilteredDiscussions(Landroidx/lifecycle/LiveData;)V

    .line 62
    iget-object p1, p0, Lio/olvid/messenger/activities/ShortcutActivity$2;->val$contactNameFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->setDiscussionFilterEditText(Landroid/widget/EditText;)V

    .line 63
    new-instance p1, Lio/olvid/messenger/activities/ShortcutActivity$2$1;

    invoke-direct {p1, p0}, Lio/olvid/messenger/activities/ShortcutActivity$2$1;-><init>(Lio/olvid/messenger/activities/ShortcutActivity$2;)V

    invoke-virtual {v0, p1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->setOnClickDelegate(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;)V

    .line 70
    iget-object p1, p0, Lio/olvid/messenger/activities/ShortcutActivity$2;->this$0:Lio/olvid/messenger/activities/ShortcutActivity;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/ShortcutActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f090144

    .line 71
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 72
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ShortcutActivity$2;->onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method
