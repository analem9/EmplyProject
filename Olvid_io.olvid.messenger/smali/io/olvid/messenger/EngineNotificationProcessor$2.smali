.class Lio/olvid/messenger/EngineNotificationProcessor$2;
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

.field final synthetic val$contact:Lio/olvid/messenger/databases/entity/Contact;


# direct methods
.method constructor <init>(Lio/olvid/messenger/EngineNotificationProcessor;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lio/olvid/messenger/EngineNotificationProcessor$2;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    iput-object p2, p0, Lio/olvid/messenger/EngineNotificationProcessor$2;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 442
    iget-object v0, p0, Lio/olvid/messenger/EngineNotificationProcessor$2;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v0}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$2;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v2, p0, Lio/olvid/messenger/EngineNotificationProcessor$2;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v0, v1, v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByContact([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$2;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v1}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/entity/Discussion;->lockWithMessage(Lio/olvid/messenger/databases/AppDatabase;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/EngineNotificationProcessor$2;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v0}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$2;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->delete(Lio/olvid/messenger/databases/entity/Contact;)V

    return-void
.end method
