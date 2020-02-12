.class Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;
.super Ljava/lang/Object;
.source "GroupDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$10;

.field final synthetic val$newName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity$10;Ljava/lang/String;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$10;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;->val$newName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 724
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;->val$newName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;->val$newName:Ljava/lang/String;

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$10;

    iget-object v1, v1, Lio/olvid/messenger/activities/GroupDetailsActivity$10;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    new-instance v0, Lio/olvid/messenger/databases/tasks/UpdateGroupCustomNameTask;

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$10;

    iget-object v1, v1, Lio/olvid/messenger/activities/GroupDetailsActivity$10;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$10;

    iget-object v2, v2, Lio/olvid/messenger/activities/GroupDetailsActivity$10;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;->val$newName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/olvid/messenger/databases/tasks/UpdateGroupCustomNameTask;-><init>([B[BLjava/lang/String;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 725
    :cond_1
    :goto_0
    new-instance v0, Lio/olvid/messenger/databases/tasks/UpdateGroupCustomNameTask;

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$10;

    iget-object v1, v1, Lio/olvid/messenger/activities/GroupDetailsActivity$10;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$10;

    iget-object v2, v2, Lio/olvid/messenger/activities/GroupDetailsActivity$10;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/olvid/messenger/databases/tasks/UpdateGroupCustomNameTask;-><init>([B[BLjava/lang/String;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
