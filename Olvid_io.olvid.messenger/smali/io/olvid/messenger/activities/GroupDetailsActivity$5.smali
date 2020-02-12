.class Lio/olvid/messenger/activities/GroupDetailsActivity$5;
.super Ljava/lang/Object;
.source "GroupDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity;->displayGroupDetails(Lio/olvid/messenger/databases/entity/Group;)V
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

    .line 357
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$5;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$5;->val$group:Lio/olvid/messenger/databases/entity/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 360
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$5;->val$group:Lio/olvid/messenger/databases/entity/Group;

    iget v0, v0, Lio/olvid/messenger/databases/entity/Group;->newPublishedDetails:I

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$5;->val$group:Lio/olvid/messenger/databases/entity/Group;

    const/4 v1, 0x0

    iput v1, v0, Lio/olvid/messenger/databases/entity/Group;->newPublishedDetails:I

    .line 362
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$5;->val$group:Lio/olvid/messenger/databases/entity/Group;

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/GroupDao;->update(Lio/olvid/messenger/databases/entity/Group;)V

    :cond_0
    return-void
.end method
