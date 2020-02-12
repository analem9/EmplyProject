.class Lio/olvid/engine/engine/Engine$NotificationWorker;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/engine/Engine;


# direct methods
.method private constructor <init>(Lio/olvid/engine/engine/Engine;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lio/olvid/engine/engine/Engine$NotificationWorker;->this$0:Lio/olvid/engine/engine/Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/olvid/engine/engine/Engine;Lio/olvid/engine/engine/Engine$1;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lio/olvid/engine/engine/Engine$NotificationWorker;-><init>(Lio/olvid/engine/engine/Engine;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 241
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/engine/Engine$NotificationWorker;->this$0:Lio/olvid/engine/engine/Engine;

    invoke-static {v1}, Lio/olvid/engine/engine/Engine;->access$200(Lio/olvid/engine/engine/Engine;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/Engine$EngineNotification;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    if-nez v0, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    iget-object v1, p0, Lio/olvid/engine/engine/Engine$NotificationWorker;->this$0:Lio/olvid/engine/engine/Engine;

    invoke-static {v1}, Lio/olvid/engine/engine/Engine;->access$300(Lio/olvid/engine/engine/Engine;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 250
    iget-object v1, p0, Lio/olvid/engine/engine/Engine$NotificationWorker;->this$0:Lio/olvid/engine/engine/Engine;

    invoke-static {v1}, Lio/olvid/engine/engine/Engine;->access$400(Lio/olvid/engine/engine/Engine;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lio/olvid/engine/engine/Engine$EngineNotification;->notificationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 252
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 253
    iget-object v1, p0, Lio/olvid/engine/engine/Engine$NotificationWorker;->this$0:Lio/olvid/engine/engine/Engine;

    invoke-static {v1}, Lio/olvid/engine/engine/Engine;->access$300(Lio/olvid/engine/engine/Engine;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 254
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/engine/types/EngineNotificationListener;

    if-nez v3, :cond_2

    .line 257
    iget-object v3, p0, Lio/olvid/engine/engine/Engine$NotificationWorker;->this$0:Lio/olvid/engine/engine/Engine;

    iget-object v4, v0, Lio/olvid/engine/engine/Engine$EngineNotification;->notificationName:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lio/olvid/engine/engine/Engine;->access$500(Lio/olvid/engine/engine/Engine;Ljava/lang/String;J)V

    goto :goto_2

    .line 259
    :cond_2
    iget-object v2, v0, Lio/olvid/engine/engine/Engine$EngineNotification;->notificationName:Ljava/lang/String;

    iget-object v4, v0, Lio/olvid/engine/engine/Engine$EngineNotification;->userInfo:Ljava/util/HashMap;

    invoke-interface {v3, v2, v4}, Lio/olvid/engine/engine/types/EngineNotificationListener;->callback(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_2

    .line 263
    :cond_3
    iget-object v0, p0, Lio/olvid/engine/engine/Engine$NotificationWorker;->this$0:Lio/olvid/engine/engine/Engine;

    invoke-static {v0}, Lio/olvid/engine/engine/Engine;->access$300(Lio/olvid/engine/engine/Engine;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method
