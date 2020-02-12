.class public final Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;
.super Ljava/lang/Object;
.source "OpenCameraInterface.java"


# static fields
.field public static final NO_REQUESTED_CAMERA:I = -0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(I)Lcom/google/zxing/client/android/camera/open/OpenCamera;
    .locals 8

    .line 46
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    sget-object p0, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    const-string v0, "No cameras!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v2, 0x0

    if-ltz p0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 58
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 59
    invoke-static {p0, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    move-object v5, v4

    move v4, p0

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_4

    .line 63
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 64
    invoke-static {v4, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 65
    invoke-static {}, Lcom/google/zxing/client/android/camera/open/CameraFacing;->values()[Lcom/google/zxing/client/android/camera/open/CameraFacing;

    move-result-object v6

    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    aget-object v6, v6, v7

    .line 66
    sget-object v7, Lcom/google/zxing/client/android/camera/open/CameraFacing;->BACK:Lcom/google/zxing/client/android/camera/open/CameraFacing;

    if-ne v6, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v5, v1

    :goto_2
    if-ge v4, v0, :cond_5

    .line 76
    sget-object p0, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening camera #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    .line 80
    sget-object v0, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested camera does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    goto :goto_3

    .line 83
    :cond_6
    sget-object p0, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No camera facing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/zxing/client/android/camera/open/CameraFacing;->BACK:Lcom/google/zxing/client/android/camera/open/CameraFacing;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; returning camera #0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0

    .line 85
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 86
    invoke-static {v2, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    :goto_3
    if-nez p0, :cond_7

    return-object v1

    .line 93
    :cond_7
    new-instance v0, Lcom/google/zxing/client/android/camera/open/OpenCamera;

    .line 95
    invoke-static {}, Lcom/google/zxing/client/android/camera/open/CameraFacing;->values()[Lcom/google/zxing/client/android/camera/open/CameraFacing;

    move-result-object v1

    iget v2, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    aget-object v1, v1, v2

    iget v2, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-direct {v0, v4, p0, v1, v2}, Lcom/google/zxing/client/android/camera/open/OpenCamera;-><init>(ILandroid/hardware/Camera;Lcom/google/zxing/client/android/camera/open/CameraFacing;I)V

    return-object v0
.end method
