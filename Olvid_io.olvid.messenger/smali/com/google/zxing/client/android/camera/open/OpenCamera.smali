.class public final Lcom/google/zxing/client/android/camera/open/OpenCamera;
.super Ljava/lang/Object;
.source "OpenCamera.java"


# instance fields
.field private final camera:Landroid/hardware/Camera;

.field private final facing:Lcom/google/zxing/client/android/camera/open/CameraFacing;

.field private final index:I

.field private final orientation:I


# direct methods
.method public constructor <init>(ILandroid/hardware/Camera;Lcom/google/zxing/client/android/camera/open/CameraFacing;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->index:I

    .line 34
    iput-object p2, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->camera:Landroid/hardware/Camera;

    .line 35
    iput-object p3, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->facing:Lcom/google/zxing/client/android/camera/open/CameraFacing;

    .line 36
    iput p4, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->orientation:I

    return-void
.end method


# virtual methods
.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getFacing()Lcom/google/zxing/client/android/camera/open/CameraFacing;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->facing:Lcom/google/zxing/client/android/camera/open/CameraFacing;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->orientation:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->facing:Lcom/google/zxing/client/android/camera/open/CameraFacing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/client/android/camera/open/OpenCamera;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
