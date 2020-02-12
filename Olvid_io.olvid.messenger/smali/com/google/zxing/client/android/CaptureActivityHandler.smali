.class public final Lcom/google/zxing/client/android/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lio/olvid/messenger/activities/CameraScanActivity;

.field private final cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private final decodeThread:Lcom/google/zxing/client/android/DecodeThread;

.field private state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/olvid/messenger/activities/CameraScanActivity;Lcom/google/zxing/client/android/camera/CameraManager;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lio/olvid/messenger/activities/CameraScanActivity;

    .line 55
    new-instance v0, Lcom/google/zxing/client/android/DecodeThread;

    invoke-direct {v0, p1}, Lcom/google/zxing/client/android/DecodeThread;-><init>(Lio/olvid/messenger/activities/CameraScanActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    .line 56
    iget-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/DecodeThread;->start()V

    .line 57
    sget-object p1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 60
    iput-object p2, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 61
    invoke-virtual {p2}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    .line 62
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/zxing/client/android/CaptureActivityHandler;Lcom/google/zxing/client/android/CaptureActivityHandler$State;)Lcom/google/zxing/client/android/CaptureActivityHandler$State;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/zxing/client/android/CaptureActivityHandler;)Lcom/google/zxing/client/android/DecodeThread;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/zxing/client/android/CaptureActivityHandler;)Lcom/google/zxing/client/android/camera/CameraManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    return-object p0
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 115
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 116
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0900fa

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 73
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lio/olvid/messenger/activities/CameraScanActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/CameraScanActivity;->handleDecode(Lcom/google/zxing/Result;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 74
    new-instance p1, Lcom/google/zxing/client/android/CaptureActivityHandler$1;

    invoke-direct {p1, p0}, Lcom/google/zxing/client/android/CaptureActivityHandler$1;-><init>(Lcom/google/zxing/client/android/CaptureActivityHandler;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 90
    :pswitch_1
    sget-object p1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 91
    iget-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f0900fa

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900fb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public quitSynchronously()V
    .locals 3

    .line 97
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 98
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 99
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f09023a

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const v0, 0x7f0900fc

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    const v0, 0x7f0900fb

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    return-void
.end method
