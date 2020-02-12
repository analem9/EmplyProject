.class Lio/olvid/messenger/activities/GroupCreationActivity$5$1;
.super Ljava/lang/Object;
.source "GroupCreationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/GroupCreationActivity$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/GroupCreationActivity$5;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupCreationActivity$5;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5$1;->this$1:Lio/olvid/messenger/activities/GroupCreationActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0xbb8

    .line 322
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Group creation listener timer interrupted"

    .line 324
    invoke-static {v0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 326
    :goto_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5$1;->this$1:Lio/olvid/messenger/activities/GroupCreationActivity$5;

    invoke-static {v1}, Lio/olvid/messenger/activities/GroupCreationActivity$5;->access$500(Lio/olvid/messenger/activities/GroupCreationActivity$5;)Lio/olvid/engine/engine/types/EngineNotificationListener;

    move-result-object v1

    const-string v2, "engine_notification_group_created"

    invoke-virtual {v0, v2, v1}, Lio/olvid/engine/engine/Engine;->removeNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V

    return-void
.end method
