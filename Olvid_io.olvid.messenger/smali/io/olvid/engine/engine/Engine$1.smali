.class Lio/olvid/engine/engine/Engine$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lio/olvid/engine/metamanager/CreateSessionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/engine/Engine;-><init>(Ljava/io/File;Lio/olvid/engine/Logger$LogOutputter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/engine/Engine;


# direct methods
.method constructor <init>(Lio/olvid/engine/engine/Engine;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lio/olvid/engine/engine/Engine$1;->this$0:Lio/olvid/engine/engine/Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSession()Lio/olvid/engine/datatypes/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lio/olvid/engine/engine/Engine$1;->this$0:Lio/olvid/engine/engine/Engine;

    invoke-static {v0}, Lio/olvid/engine/engine/Engine;->access$100(Lio/olvid/engine/engine/Engine;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Session;->getSession(Ljava/lang/String;)Lio/olvid/engine/datatypes/Session;

    move-result-object v0

    return-object v0
.end method
