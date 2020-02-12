.class Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;
.super Ljava/lang/Object;
.source "GroupDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$9;

.field final synthetic val$newDescription:Ljava/lang/String;

.field final synthetic val$newName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity$9;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$9;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;->val$newName:Ljava/lang/String;

    iput-object p3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;->val$newDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 694
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$9;

    iget-object v1, v1, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$9;

    iget-object v2, v2, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    new-instance v3, Lio/olvid/engine/engine/types/JsonGroupDetails;

    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;->val$newName:Ljava/lang/String;

    iget-object v5, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;->val$newDescription:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lio/olvid/engine/engine/types/JsonGroupDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/olvid/engine/engine/Engine;->updateLatestGroupDetails([B[BLio/olvid/engine/engine/types/JsonGroupDetails;)V

    .line 695
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$9;

    iget-object v0, v0, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    new-instance v1, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1$1;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;)V

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 702
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
