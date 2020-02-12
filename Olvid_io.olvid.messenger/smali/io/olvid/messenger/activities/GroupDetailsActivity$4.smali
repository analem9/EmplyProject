.class Lio/olvid/messenger/activities/GroupDetailsActivity$4;
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
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$4;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 294
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$4;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;",
            ">;)V"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$4;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-static {v0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$300(Lio/olvid/messenger/activities/GroupDetailsActivity;Ljava/util/List;)V

    return-void
.end method
