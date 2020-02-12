.class Lio/olvid/messenger/activities/GroupCreationActivity$2;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "GroupCreationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupCreationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/GroupCreationActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupCreationActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$2;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

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
    .locals 0

    if-eqz p1, :cond_0

    .line 104
    new-instance p1, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

    invoke-direct {p1}, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;-><init>()V

    return-object p1

    .line 101
    :cond_0
    new-instance p1, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;

    invoke-direct {p1}, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;-><init>()V

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 113
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$2;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    move-object v0, p1

    check-cast v0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

    iput-object v0, p2, Lio/olvid/messenger/activities/GroupCreationActivity;->groupNameFragment:Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

    .line 121
    iget-object p2, p2, Lio/olvid/messenger/activities/GroupCreationActivity;->groupNameFragment:Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$2;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$100(Lio/olvid/messenger/activities/GroupCreationActivity;)Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/GroupCreationViewModel;->getGroupName()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->setGroupName(Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$2;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    iget-object p2, p2, Lio/olvid/messenger/activities/GroupCreationActivity;->groupNameFragment:Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$2;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$100(Lio/olvid/messenger/activities/GroupCreationActivity;)Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/GroupCreationViewModel;->getGroupDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->setGroupDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$2;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    move-object v0, p1

    check-cast v0, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;

    iput-object v0, p2, Lio/olvid/messenger/activities/GroupCreationActivity;->contactsSelectionFragment:Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;

    .line 117
    iget-object p2, p2, Lio/olvid/messenger/activities/GroupCreationActivity;->contactsSelectionFragment:Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$2;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$100(Lio/olvid/messenger/activities/GroupCreationActivity;)Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/GroupCreationViewModel;->getSelectedContacts()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;->setSelectedContacts(Ljava/util/List;)V

    :goto_0
    return-object p1
.end method
