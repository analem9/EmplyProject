.class final Lcom/google/zxing/client/android/DecodeThread;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# static fields
.field public static final BARCODE_BITMAP:Ljava/lang/String; = "barcode_bitmap"

.field public static final BARCODE_SCALED_FACTOR:Ljava/lang/String; = "barcode_scaled_factor"


# instance fields
.field private final activity:Lio/olvid/messenger/activities/CameraScanActivity;

.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/CameraScanActivity;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/zxing/client/android/DecodeThread;->activity:Lio/olvid/messenger/activities/CameraScanActivity;

    .line 51
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/zxing/client/android/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 53
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/google/zxing/DecodeHintType;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    .line 55
    const-class p1, Lcom/google/zxing/BarcodeFormat;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    .line 56
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    iget-object v0, p0, Lcom/google/zxing/client/android/DecodeThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 72
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 73
    new-instance v0, Lcom/google/zxing/client/android/DecodeHandler;

    iget-object v1, p0, Lcom/google/zxing/client/android/DecodeThread;->activity:Lio/olvid/messenger/activities/CameraScanActivity;

    iget-object v2, p0, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/DecodeHandler;-><init>(Lio/olvid/messenger/activities/CameraScanActivity;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/DecodeThread;->handler:Landroid/os/Handler;

    .line 74
    iget-object v0, p0, Lcom/google/zxing/client/android/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 75
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
