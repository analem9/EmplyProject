.class Lio/olvid/messenger/activities/GroupCreationActivity$5$2;
.super Ljava/lang/Object;
.source "GroupCreationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupCreationActivity$5;->callback(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/GroupCreationActivity$5;

.field final synthetic val$group:Lio/olvid/engine/engine/types/identities/ObvGroup;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupCreationActivity$5;Lio/olvid/engine/engine/types/identities/ObvGroup;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5$2;->this$1:Lio/olvid/messenger/activities/GroupCreationActivity$5;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5$2;->val$group:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 339
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5$2;->this$1:Lio/olvid/messenger/activities/GroupCreationActivity$5;

    iget-object v0, v0, Lio/olvid/messenger/activities/GroupCreationActivity$5;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5$2;->val$group:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesOwnedIdentity()[B

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5$2;->val$group:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesGroupOwnerAndUid()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/olvid/messenger/App;->openGroupDetailsActivity(Landroid/content/Context;[B[B)V

    .line 340
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5$2;->this$1:Lio/olvid/messenger/activities/GroupCreationActivity$5;

    iget-object v0, v0, Lio/olvid/messenger/activities/GroupCreationActivity$5;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/GroupCreationActivity;->finish()V

    return-void
.end method
