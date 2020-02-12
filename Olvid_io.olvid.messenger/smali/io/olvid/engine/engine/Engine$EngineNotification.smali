.class Lio/olvid/engine/engine/Engine$EngineNotification;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineNotification"
.end annotation


# instance fields
.field public final notificationName:Ljava/lang/String;

.field final synthetic this$0:Lio/olvid/engine/engine/Engine;

.field public final userInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/olvid/engine/engine/Engine;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
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

    .line 273
    iput-object p1, p0, Lio/olvid/engine/engine/Engine$EngineNotification;->this$0:Lio/olvid/engine/engine/Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p2, p0, Lio/olvid/engine/engine/Engine$EngineNotification;->notificationName:Ljava/lang/String;

    .line 275
    iput-object p3, p0, Lio/olvid/engine/engine/Engine$EngineNotification;->userInfo:Ljava/util/HashMap;

    return-void
.end method
