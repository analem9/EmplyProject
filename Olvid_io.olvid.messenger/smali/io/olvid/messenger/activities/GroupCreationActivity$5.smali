.class Lio/olvid/messenger/activities/GroupCreationActivity$5;
.super Ljava/lang/Object;
.source "GroupCreationActivity.java"

# interfaces
.implements Lio/olvid/engine/engine/types/EngineNotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupCreationActivity;->initiateGroupCreationProtocol()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private _this:Lio/olvid/engine/engine/types/EngineNotificationListener;

.field private registrationNumber:J

.field final synthetic this$0:Lio/olvid/messenger/activities/GroupCreationActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupCreationActivity;)V
    .locals 1

    .line 314
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5;->_this:Lio/olvid/engine/engine/types/EngineNotificationListener;

    .line 318
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lio/olvid/messenger/activities/GroupCreationActivity$5$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/GroupCreationActivity$5$1;-><init>(Lio/olvid/messenger/activities/GroupCreationActivity$5;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 328
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$500(Lio/olvid/messenger/activities/GroupCreationActivity$5;)Lio/olvid/engine/engine/types/EngineNotificationListener;
    .locals 0

    .line 314
    iget-object p0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5;->_this:Lio/olvid/engine/engine/types/EngineNotificationListener;

    return-object p0
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 333
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    const-string v0, "engine_notification_group_created"

    invoke-virtual {p1, v0, p0}, Lio/olvid/engine/engine/Engine;->removeNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V

    const-string p1, "group"

    .line 334
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/engine/types/identities/ObvGroup;

    if-eqz p1, :cond_0

    .line 336
    iget-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    new-instance v0, Lio/olvid/messenger/activities/GroupCreationActivity$5$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/activities/GroupCreationActivity$5$2;-><init>(Lio/olvid/messenger/activities/GroupCreationActivity$5;Lio/olvid/engine/engine/types/identities/ObvGroup;)V

    invoke-virtual {p2, v0}, Lio/olvid/messenger/activities/GroupCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getEngineNotificationListenerRegistrationNumber()J
    .locals 2

    .line 353
    iget-wide v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5;->registrationNumber:J

    return-wide v0
.end method

.method public setEngineNotificationListenerRegistrationNumber(J)V
    .locals 0

    .line 348
    iput-wide p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$5;->registrationNumber:J

    return-void
.end method
