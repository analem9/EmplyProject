.class public Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DraftAttachmentAdapter.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentSpaceItemDecoration;,
        Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask;,
        Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;",
        ">;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final MAX_THUMBNAILS_CACHE_SIZE:J = 0x2faf080L

.field private static final previewPixelSize:I

.field private static final thumbnailCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static thumbnailCacheSize:J


# instance fields
.field protected attachmentFyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->previewPixelSize:I

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->thumbnailCache:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 246
    sput-wide v0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->thumbnailCacheSize:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->attachmentDeleteClicked(I)V

    return-void
.end method

.method static synthetic access$100(Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->attachmentClicked(I)V

    return-void
.end method

.method static synthetic access$200(Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->getBitmapPreview(Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private attachmentClicked(I)V
    .locals 1

    .line 188
    iget-object v0, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->attachmentFyles:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 192
    invoke-static {p1}, Lio/olvid/messenger/App;->openFyle(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;)V

    return-void
.end method

.method private attachmentDeleteClicked(I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->attachmentFyles:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 200
    new-instance v0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;

    invoke-direct {v0, p1}, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;-><init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private canGetPreview(Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)Z
    .locals 3

    .line 250
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    const-string v1, "(video|image)/.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 251
    iget p1, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget p1, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    if-eqz p1, :cond_0

    iget p1, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    if-ne p1, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    return v2

    .line 257
    :cond_2
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_3

    iget-object p1, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    const-string p2, "application/pdf"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private static getBitmapPreview(Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)Landroid/graphics/Bitmap;
    .locals 8

    .line 284
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    invoke-static {v0}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->thumbnailCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    sget-object p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->thumbnailCache:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    .line 288
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 290
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->filePath:Ljava/lang/String;

    .line 292
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return-object v3

    .line 297
    :cond_2
    iget-object v2, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    const-string v4, "image/.+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 298
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 299
    iput-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 300
    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 301
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    const-string p0, "Error loading bitmap bounds from image Fyle"

    .line 303
    invoke-static {p0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    return-object v3

    .line 306
    :cond_3
    sget v2, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->previewPixelSize:I

    div-int/2addr p1, v2

    .line 307
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 308
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 309
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 310
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 312
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    .line 313
    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 314
    invoke-static {p1, v2}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating ExifInterface for file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    :cond_4
    :goto_0
    move-object v3, p1

    goto/16 :goto_8

    .line 319
    :cond_5
    iget-object v2, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    const-string v5, "video/.+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 320
    invoke-static {v1, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_8

    .line 321
    :cond_6
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    const-string v2, "application/pdf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 322
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p1, v2, :cond_a

    .line 324
    :try_start_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 325
    new-instance v1, Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {v1, p1}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 p1, 0x0

    .line 326
    :try_start_2
    invoke-virtual {v1, p1}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 327
    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-lez v5, :cond_7

    .line 329
    sget v5, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->previewPixelSize:I

    sget v6, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->previewPixelSize:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    float-to-int v2, v6

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 331
    :cond_7
    sget v5, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->previewPixelSize:I

    int-to-float v5, v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    sget v5, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->previewPixelSize:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 333
    :goto_1
    :try_start_4
    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_8

    .line 334
    :try_start_5
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v3, v2

    goto :goto_5

    .line 335
    :cond_8
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfRenderer;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v3, v2

    goto :goto_8

    :catch_1
    move-exception p1

    move-object v3, v2

    goto :goto_7

    :catchall_1
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_3

    :catchall_2
    move-exception v2

    .line 326
    :goto_3
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v4

    if-eqz p1, :cond_9

    .line 334
    :try_start_8
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    :try_start_9
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception p1

    .line 325
    :goto_5
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v2

    .line 335
    :try_start_b
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfRenderer;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v1

    :try_start_c
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception p1

    .line 337
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    :cond_a
    :goto_8
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 342
    sget-wide p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->thumbnailCacheSize:J

    const-wide/32 v1, 0x2faf080

    cmp-long v4, p0, v1

    if-lez v4, :cond_b

    .line 344
    sget-object p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->thumbnailCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    const-wide/16 p0, 0x0

    .line 345
    sput-wide p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->thumbnailCacheSize:J

    .line 347
    :cond_b
    sget-object p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->thumbnailCache:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_c

    .line 349
    sget-wide p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->thumbnailCacheSize:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p0, v0

    sput-wide p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->thumbnailCacheSize:J

    :cond_c
    return-object v3
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    return-object p0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    goto :goto_0

    :cond_2
    const/16 p1, 0xb4

    .line 278
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 279
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 280
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 181
    iget-object v0, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->attachmentFyles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 65
    iget-object v0, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->attachmentFyles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object p1, p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-wide v0, p1, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 46
    check-cast p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->onBindViewHolder(Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;I)V
    .locals 6

    .line 86
    iget-object v0, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->attachmentFyles:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 90
    iget-object v0, p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    .line 91
    iput-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    const v1, 0x7f0800b7

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_4

    .line 93
    iget-object v4, p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-object v5, p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    invoke-direct {p0, v4, v5}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->canGetPreview(Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "image/.+"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentFileName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentMimeType:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentFileName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v1, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentMimeType:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v1, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentFileName:Landroid/widget/TextView;

    iget-object v4, p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentMimeType:Landroid/widget/TextView;

    iget-object v4, p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "video/.+"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 110
    :goto_0
    new-instance v0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask;

    invoke-direct {v0, p2, p1}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask;-><init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 113
    :cond_3
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentFileName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentMimeType:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentFileName:Landroid/widget/TextView;

    iget-object v4, p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentMimeType:Landroid/widget/TextView;

    iget-object v4, p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 118
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 121
    :cond_4
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentFileName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentMimeType:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentFileName:Landroid/widget/TextView;

    iget-object v4, p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget v0, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    const/high16 v4, 0x42c80000    # 100.0f

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    .line 170
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 171
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object p1, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteSpacer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 146
    :cond_5
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 147
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    iget-object p2, p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget p2, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 148
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    const v0, 0x7f100101

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object p1, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteSpacer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 128
    :cond_6
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 129
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    iget-object p2, p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget p2, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 130
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    const v0, 0x7f100123

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object p1, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteSpacer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 162
    :cond_7
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object p1, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteSpacer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 137
    :cond_8
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 138
    iget-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    iget-object p2, p2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget p2, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 139
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    const v0, 0x7f100104

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object p1, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteSpacer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 155
    :cond_9
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 156
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object p2, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object p1, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteSpacer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->attachmentFyles:Ljava/util/List;

    .line 59
    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;
    .locals 2

    .line 74
    iget-object p2, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0051

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    new-instance p2, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;

    invoke-direct {p2, p0, p1}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;-><init>(Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 46
    check-cast p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->onViewRecycled(Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    return-void
.end method
