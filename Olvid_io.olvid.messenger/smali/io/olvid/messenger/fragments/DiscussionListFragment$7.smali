.class Lio/olvid/messenger/fragments/DiscussionListFragment$7;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

.field final synthetic val$builder:Landroidx/appcompat/app/AlertDialog$Builder;

.field final synthetic val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment;Landroidx/appcompat/app/AlertDialog$Builder;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    iput-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7;->val$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    iput-object p3, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 355
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$200(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v2}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$200(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    move-result-object v2

    iget-object v2, v2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/GroupDao;->get([B[B)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    iget-object v1, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-nez v1, :cond_1

    .line 362
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$200(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v2}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$200(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    move-result-object v2

    iget-object v2, v2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    invoke-static {v0, v1, v2}, Lio/olvid/messenger/App;->openGroupDetailsActivityForEditDetails(Landroid/content/Context;[B[B)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7;->val$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f1000a3

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100042

    const/4 v3, 0x0

    .line 366
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 368
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment$7;Lio/olvid/messenger/databases/entity/Group;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
