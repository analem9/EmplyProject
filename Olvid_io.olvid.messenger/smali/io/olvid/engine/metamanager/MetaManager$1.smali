.class Lio/olvid/engine/metamanager/MetaManager$1;
.super Ljava/lang/Object;
.source "MetaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/metamanager/MetaManager;->initializationComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/metamanager/MetaManager;


# direct methods
.method constructor <init>(Lio/olvid/engine/metamanager/MetaManager;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lio/olvid/engine/metamanager/MetaManager$1;->this$0:Lio/olvid/engine/metamanager/MetaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 44
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    iget-object v0, p0, Lio/olvid/engine/metamanager/MetaManager$1;->this$0:Lio/olvid/engine/metamanager/MetaManager;

    invoke-static {v0}, Lio/olvid/engine/metamanager/MetaManager;->access$000(Lio/olvid/engine/metamanager/MetaManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/metamanager/ObvManager;

    .line 47
    invoke-interface {v1}, Lio/olvid/engine/metamanager/ObvManager;->initialisationComplete()V

    goto :goto_0

    :cond_0
    return-void
.end method
