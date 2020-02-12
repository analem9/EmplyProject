.class Lio/olvid/messenger/activities/GroupDetailsActivity$2;
.super Ljava/lang/Object;
.source "GroupDetailsActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lio/olvid/messenger/databases/entity/Group;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lio/olvid/messenger/databases/entity/Group;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 283
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$000(Lio/olvid/messenger/activities/GroupDetailsActivity;)Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;

    move-result-object v0

    iget-object v1, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->showCrown([B)V

    .line 284
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-static {v0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$100(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Group;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 279
    check-cast p1, Lio/olvid/messenger/databases/entity/Group;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$2;->onChanged(Lio/olvid/messenger/databases/entity/Group;)V

    return-void
.end method
