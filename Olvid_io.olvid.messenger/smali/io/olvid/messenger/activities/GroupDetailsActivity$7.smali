.class Lio/olvid/messenger/activities/GroupDetailsActivity$7;
.super Ljava/lang/Object;
.source "GroupDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity;->callback(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

.field final synthetic val$group:Lio/olvid/messenger/databases/entity/Group;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Group;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$7;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$7;->val$group:Lio/olvid/messenger/databases/entity/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 555
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$7;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$7;->val$group:Lio/olvid/messenger/databases/entity/Group;

    invoke-static {v0, v1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$100(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Group;)V

    return-void
.end method
