.class Lio/olvid/messenger/activities/GroupDetailsActivity$9$1$1;
.super Ljava/lang/Object;
.source "GroupDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1$1;->this$2:Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 698
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1$1;->this$2:Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;

    iget-object v0, v0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$9;

    iget-object v0, v0, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1$1;->this$2:Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;

    iget-object v1, v1, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$9;

    iget-object v1, v1, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->val$group:Lio/olvid/messenger/databases/entity/Group;

    invoke-static {v0, v1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$100(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Group;)V

    return-void
.end method
