.class Lio/olvid/messenger/EngineNotificationProcessor$3;
.super Ljava/lang/Object;
.source "EngineNotificationProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/EngineNotificationProcessor;->callback(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/EngineNotificationProcessor;

.field final synthetic val$userInfo:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lio/olvid/messenger/EngineNotificationProcessor;Ljava/util/HashMap;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lio/olvid/messenger/EngineNotificationProcessor$3;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    iput-object p2, p0, Lio/olvid/messenger/EngineNotificationProcessor$3;->val$userInfo:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 494
    iget-object v0, p0, Lio/olvid/messenger/EngineNotificationProcessor$3;->val$userInfo:Ljava/util/HashMap;

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 495
    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$3;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v1}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->invitationDao()Lio/olvid/messenger/databases/dao/InvitationDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/InvitationDao;->getByDialogUuid(Ljava/util/UUID;)Lio/olvid/messenger/databases/entity/Invitation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$3;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v1}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->invitationDao()Lio/olvid/messenger/databases/dao/InvitationDao;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lio/olvid/messenger/databases/entity/Invitation;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lio/olvid/messenger/databases/dao/InvitationDao;->delete([Lio/olvid/messenger/databases/entity/Invitation;)V

    :cond_0
    return-void
.end method
