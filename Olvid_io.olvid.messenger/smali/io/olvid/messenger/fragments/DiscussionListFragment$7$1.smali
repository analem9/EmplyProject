.class Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$7;

.field final synthetic val$group:Lio/olvid/messenger/databases/entity/Group;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment$7;Lio/olvid/messenger/databases/entity/Group;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$7;

    iput-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;->val$group:Lio/olvid/messenger/databases/entity/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 371
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$7;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$7;->val$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 372
    new-instance v1, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 387
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
