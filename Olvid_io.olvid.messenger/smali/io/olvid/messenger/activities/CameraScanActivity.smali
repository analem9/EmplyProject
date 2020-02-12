.class public Lio/olvid/messenger/activities/CameraScanActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CameraScanActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final PATTERN_EXTRA:Ljava/lang/String; = "pattern"

.field public static final PATTERN_MISMATCH_MESSAGE_EXTRA:Ljava/lang/String; = "pattern_mismatch_message"


# instance fields
.field private cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

.field private hasSurface:Z

.field private pattern:Ljava/util/regex/Pattern;

.field private patternMismatchMessage:Ljava/lang/String;

.field private surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/activities/CameraScanActivity;)Lcom/google/zxing/client/android/camera/CameraManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    return-object p0
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 6

    const-string v0, ":"

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/activities/CameraScanActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 99
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/olvid/messenger/activities/CameraScanActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 101
    iget-object p1, p0, Lio/olvid/messenger/activities/CameraScanActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez p1, :cond_2

    .line 102
    new-instance p1, Lcom/google/zxing/client/android/CaptureActivityHandler;

    iget-object v1, p0, Lio/olvid/messenger/activities/CameraScanActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-direct {p1, p0, v1}, Lcom/google/zxing/client/android/CaptureActivityHandler;-><init>(Lio/olvid/messenger/activities/CameraScanActivity;Lcom/google/zxing/client/android/camera/CameraManager;)V

    iput-object p1, p0, Lio/olvid/messenger/activities/CameraScanActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Unexpected error initializing camera"

    .line 107
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p1, "Zxing openDriver error."

    .line 105
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 112
    :cond_2
    :goto_0
    :try_start_1
    iget-object p1, p0, Lio/olvid/messenger/activities/CameraScanActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 113
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 114
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 116
    iget-object v2, p0, Lio/olvid/messenger/activities/CameraScanActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v2, v2, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    if-le v4, v5, :cond_3

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    :cond_3
    iget-object v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getId()I

    move-result v0

    invoke-virtual {v1, v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setDimensionRatio(ILjava/lang/String;)V

    .line 122
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    return-object v0
.end method

.method public getHandler()Lcom/google/zxing/client/android/CaptureActivityHandler;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;)Z
    .locals 3

    .line 149
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "vibrator"

    .line 150
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/CameraScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x64

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 154
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->pattern:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lio/olvid/messenger/activities/CameraScanActivity;->finish()V

    .line 156
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lio/olvid/messenger/App;->processLink(Landroid/content/Context;Landroid/net/Uri;)V

    return v1

    .line 159
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lio/olvid/messenger/activities/CameraScanActivity;->finish()V

    .line 162
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lio/olvid/messenger/App;->processLink(Landroid/content/Context;Landroid/net/Uri;)V

    return v1

    .line 165
    :cond_2
    iget-object p1, p0, Lio/olvid/messenger/activities/CameraScanActivity;->patternMismatchMessage:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/16 v0, 0x11

    .line 166
    invoke-static {p1, v2, v0}, Lio/olvid/messenger/App;->toast(Ljava/lang/String;II)V

    :cond_3
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090089

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/CameraScanActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lio/olvid/messenger/activities/CameraScanActivity;->hasSurface:Z

    const p1, 0x7f0c001c

    .line 58
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/CameraScanActivity;->setContentView(I)V

    const p1, 0x7f090089

    .line 60
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/CameraScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lio/olvid/messenger/activities/CameraScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "pattern"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lio/olvid/messenger/activities/CameraScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->pattern:Ljava/util/regex/Pattern;

    const-string v0, "pattern_mismatch_message"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/CameraScanActivity;->patternMismatchMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lio/olvid/messenger/activities/CameraScanActivity;->pattern:Ljava/util/regex/Pattern;

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 130
    iget-object v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 134
    :cond_0
    new-instance v0, Lio/olvid/messenger/activities/CameraScanActivity$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/CameraScanActivity$1;-><init>(Lio/olvid/messenger/activities/CameraScanActivity;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    .line 140
    iget-boolean v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->hasSurface:Z

    if-nez v0, :cond_1

    const v0, 0x7f09009b

    .line 141
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/CameraScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 142
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 143
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 145
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 75
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/CameraScanActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    const v0, 0x7f09009b

    .line 78
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/CameraScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 79
    iget-object v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 80
    iget-boolean v1, p0, Lio/olvid/messenger/activities/CameraScanActivity;->hasSurface:Z

    if-eqz v1, :cond_0

    .line 83
    invoke-direct {p0, v0}, Lio/olvid/messenger/activities/CameraScanActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :goto_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "*** WARNING *** surfaceCreated() gave us a null surface!"

    .line 178
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-boolean v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->hasSurface:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lio/olvid/messenger/activities/CameraScanActivity;->hasSurface:Z

    .line 182
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/CameraScanActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 193
    iput-boolean p1, p0, Lio/olvid/messenger/activities/CameraScanActivity;->hasSurface:Z

    return-void
.end method
