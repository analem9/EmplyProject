.class Lio/olvid/messenger/activities/GroupDetailsActivity$12$1;
.super Ljava/lang/Object;
.source "GroupDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$12;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity$12;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 795
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$12;

    iget-object p2, p2, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$12;

    iget-object v0, v0, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {p1, p2, v0}, Lio/olvid/engine/engine/Engine;->disbandGroup([B[B)V

    const p1, 0x7f1001fd

    const/4 p2, 0x0

    .line 796
    invoke-static {p1, p2}, Lio/olvid/messenger/App;->toast(II)V

    .line 797
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$12$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$12;

    iget-object p1, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 799
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
