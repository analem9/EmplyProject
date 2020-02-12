.class Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;->this$2:Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 331
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;->this$2:Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;

    iget-object v1, v1, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$6;

    iget-object v1, v1, Lio/olvid/messenger/fragments/DiscussionListFragment$6;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$200(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;->this$2:Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;

    iget-object v2, v2, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$6;

    iget-object v2, v2, Lio/olvid/messenger/fragments/DiscussionListFragment$6;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v2}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$200(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    move-result-object v2

    iget-object v2, v2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1$1;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1$1;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;Lio/olvid/messenger/databases/entity/Contact;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
