.class public final Lcom/google/zxing/client/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x2a3

.field private static final MAX_FRAME_WIDTH:I = 0x4b0

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

.field private camera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

.field public final configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

.field private previewing:Z

.field private requestedCameraId:I

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedCameraId:I

    .line 66
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    .line 68
    new-instance p1, Lcom/google/zxing/client/android/camera/PreviewCallback;

    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {p1, v0}, Lcom/google/zxing/client/android/camera/PreviewCallback;-><init>(Lcom/google/zxing/client/android/camera/CameraConfigurationManager;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    return-void
.end method

.method private static findDesiredDimensionInRange(III)I
    .locals 0

    mul-int/lit8 p0, p0, 0x5

    .line 235
    div-int/lit8 p0, p0, 0x8

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10

    .line 328
    new-instance v9, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v9
.end method

.method public declared-synchronized closeDriver()V
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    .line 136
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 137
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Lcom/google/zxing/client/android/camera/open/OpenCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    if-nez v0, :cond_1

    .line 80
    iget v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedCameraId:I

    invoke-static {v0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->open(I)Lcom/google/zxing/client/android/camera/open/OpenCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    goto :goto_0

    .line 82
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Camera.open() failed to return object from driver"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 88
    iput-boolean v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    .line 89
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->initFromCameraParameters(Lcom/google/zxing/client/android/camera/open/OpenCamera;)V

    .line 97
    :cond_2
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Lcom/google/zxing/client/android/camera/open/OpenCamera;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 104
    :catch_0
    :try_start_2
    sget-object v4, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v5, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v4, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resetting to saved camera params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    .line 108
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 109
    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :try_start_3
    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 112
    iget-object v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v3, v0, v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Lcom/google/zxing/client/android/camera/open/OpenCamera;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 115
    :catch_1
    :try_start_4
    sget-object v0, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v2, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_4
    :goto_2
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_0

    .line 199
    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcom/google/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 201
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object p1

    iget-object p2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setManualCameraId(I)V
    .locals 0

    monitor-enter p0

    .line 281
    :try_start_0
    iput p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTorch(Z)V
    .locals 4

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_2

    .line 175
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getTorchState(Landroid/hardware/Camera;)Z

    move-result v1

    if-eq p1, v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 178
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stop()V

    const/4 v2, 0x0

    .line 179
    iput-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setTorch(Landroid/hardware/Camera;Z)V

    if-eqz v1, :cond_2

    .line 183
    new-instance p1, Lcom/google/zxing/client/android/camera/AutoFocusManager;

    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 184
    iget-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_0

    .line 146
    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    const/4 v1, 0x1

    .line 148
    iput-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    .line 149
    new-instance v1, Lcom/google/zxing/client/android/camera/AutoFocusManager;

    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stop()V

    .line 159
    iput-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Lcom/google/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 163
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 164
    iput-boolean v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
