.class Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment$2;
.super Ljava/lang/Object;
.source "GroupCreationActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/Contact;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment$2;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 379
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment$2;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment$2;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/activities/GroupCreationActivity;

    if-eqz v0, :cond_0

    .line 384
    invoke-static {v0}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$100(Lio/olvid/messenger/activities/GroupCreationActivity;)Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/olvid/messenger/viewModels/GroupCreationViewModel;->setSelectedContacts(Ljava/util/List;)V

    :cond_0
    return-void
.end method
