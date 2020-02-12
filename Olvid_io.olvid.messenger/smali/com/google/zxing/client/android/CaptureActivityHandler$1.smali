.class Lcom/google/zxing/client/android/CaptureActivityHandler$1;
.super Ljava/lang/Object;
.source "CaptureActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/client/android/CaptureActivityHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/CaptureActivityHandler;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivityHandler;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler$1;->this$0:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x3e8

    const v2, 0x7f0900fa

    .line 78
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :catch_0
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler$1;->this$0:Lcom/google/zxing/client/android/CaptureActivityHandler;

    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    invoke-static {v0, v1}, Lcom/google/zxing/client/android/CaptureActivityHandler;->access$002(Lcom/google/zxing/client/android/CaptureActivityHandler;Lcom/google/zxing/client/android/CaptureActivityHandler$State;)Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 82
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler$1;->this$0:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-static {v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->access$200(Lcom/google/zxing/client/android/CaptureActivityHandler;)Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler$1;->this$0:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-static {v1}, Lcom/google/zxing/client/android/CaptureActivityHandler;->access$100(Lcom/google/zxing/client/android/CaptureActivityHandler;)Lcom/google/zxing/client/android/DecodeThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 81
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler$1;->this$0:Lcom/google/zxing/client/android/CaptureActivityHandler;

    sget-object v3, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    invoke-static {v1, v3}, Lcom/google/zxing/client/android/CaptureActivityHandler;->access$002(Lcom/google/zxing/client/android/CaptureActivityHandler;Lcom/google/zxing/client/android/CaptureActivityHandler$State;)Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 82
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler$1;->this$0:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-static {v1}, Lcom/google/zxing/client/android/CaptureActivityHandler;->access$200(Lcom/google/zxing/client/android/CaptureActivityHandler;)Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v1

    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivityHandler$1;->this$0:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-static {v3}, Lcom/google/zxing/client/android/CaptureActivityHandler;->access$100(Lcom/google/zxing/client/android/CaptureActivityHandler;)Lcom/google/zxing/client/android/DecodeThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 83
    throw v0

    :goto_0
    return-void
.end method
