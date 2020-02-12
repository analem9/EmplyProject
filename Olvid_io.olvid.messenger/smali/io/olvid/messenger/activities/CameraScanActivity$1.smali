.class Lio/olvid/messenger/activities/CameraScanActivity$1;
.super Ljava/lang/Object;
.source "CameraScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/CameraScanActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/CameraScanActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/CameraScanActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lio/olvid/messenger/activities/CameraScanActivity$1;->this$0:Lio/olvid/messenger/activities/CameraScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 137
    iget-object v0, p0, Lio/olvid/messenger/activities/CameraScanActivity$1;->this$0:Lio/olvid/messenger/activities/CameraScanActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/CameraScanActivity;->access$000(Lio/olvid/messenger/activities/CameraScanActivity;)Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    return-void
.end method
