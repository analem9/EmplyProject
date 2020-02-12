.class final Lio/olvid/messenger/App$2;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/App;->setQrCodeImage(Landroid/widget/ImageView;Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imageViewWeakReference:Ljava/lang/ref/WeakReference;

.field final synthetic val$smallQrCodeBitmapSaver:Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;

.field final synthetic val$urlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;


# direct methods
.method constructor <init>(Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lio/olvid/messenger/App$2;->val$urlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    iput-object p2, p0, Lio/olvid/messenger/App$2;->val$smallQrCodeBitmapSaver:Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;

    iput-object p3, p0, Lio/olvid/messenger/App$2;->val$imageViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 439
    :try_start_0
    iget-object v0, v1, Lio/olvid/messenger/App$2;->val$urlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->getUrlRepresentation()Ljava/lang/String;

    move-result-object v3

    .line 440
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 441
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-static {}, Lio/olvid/messenger/activities/SettingsActivity;->getQrCorrectionLevel()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x48

    const/4 v6, 0x2

    const/4 v9, 0x1

    if-eq v4, v5, :cond_3

    const/16 v5, 0x51

    if-eq v4, v5, :cond_2

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_1

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "M"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const-string v4, "L"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v4, "Q"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "H"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v9, :cond_6

    if-eq v0, v6, :cond_5

    .line 455
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 451
    :cond_5
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 448
    :cond_6
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->Q:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 445
    :cond_7
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :goto_2
    new-instance v2, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v2}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v15

    .line 459
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 460
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0600cb

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    mul-int v4, v2, v15

    .line 463
    new-array v10, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v4, v2, :cond_a

    move v6, v5

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v15, :cond_9

    add-int/lit8 v7, v6, 0x1

    .line 467
    invoke-virtual {v0, v5, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_8

    move v9, v3

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    :goto_5
    aput v9, v10, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_3

    .line 470
    :cond_a
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v0

    move v12, v15

    move/from16 v16, v2

    .line 471
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 472
    iget-object v2, v1, Lio/olvid/messenger/App$2;->val$smallQrCodeBitmapSaver:Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;

    invoke-interface {v2, v0}, Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;->saveSmallQrCodeBitmap(Landroid/graphics/Bitmap;)V

    .line 473
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 474
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 475
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 476
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 477
    iget-object v3, v1, Lio/olvid/messenger/App$2;->val$imageViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_c

    .line 479
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lio/olvid/messenger/App$2$1;

    invoke-direct {v5, v1, v3, v0, v2}, Lio/olvid/messenger/App$2$1;-><init>(Lio/olvid/messenger/App$2;Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 487
    iget-object v2, v1, Lio/olvid/messenger/App$2;->val$imageViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    .line 489
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lio/olvid/messenger/App$2$2;

    invoke-direct {v4, v1, v2}, Lio/olvid/messenger/App$2$2;-><init>(Lio/olvid/messenger/App$2;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_6
    return-void
.end method
