.class public Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessageAttachmentAdapter.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentLongClickListener;,
        Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;,
        Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;,
        Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;",
        ">;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final MAX_THUMBNAILS_CACHE_SIZE:J = 0x2faf080L

.field static final POSITION_CHANGE_MASK:I = 0x4

.field static final PROGRESS_CHANGE_MASK:I = 0x2

.field static final STATUS_CHANGE_MASK:I = 0x1

.field private static final TYPE_ATTACHMENT:I = 0x3

.field private static final TYPE_BIG_IMAGE:I = 0x0

.field private static final TYPE_SMALL_IMAGE:I = 0x2

.field private static final TYPE_WIDE_IMAGE:I = 0x1

.field private static final filePreviewPixelSize:I

.field private static final largeImagePreviewPixelSize:I

.field private static final smallImagePreviewPixelSize:I

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
.field private attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

.field private attachmentLongClickListener:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentLongClickListener;

.field private final context:Landroid/content/Context;

.field private imageAndVideoCount:I

.field private final inflater:Landroid/view/LayoutInflater;

.field private itemDecoration:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;

.field private final spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 61
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->filePreviewPixelSize:I

    .line 62
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    sput v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->largeImagePreviewPixelSize:I

    .line 63
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, 0x42a80000    # 84.0f

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    sput v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->smallImagePreviewPixelSize:I

    .line 570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->thumbnailCache:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 571
    sput-wide v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->thumbnailCacheSize:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->imageAndVideoCount:I

    .line 81
    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->setHasStableIds(Z)V

    .line 84
    new-instance v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$1;-><init>(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)V

    iput-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 96
    new-instance v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;-><init>(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->itemDecoration:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)I
    .locals 0

    .line 52
    iget p0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->imageAndVideoCount:I

    return p0
.end method

.method static synthetic access$100(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;
    .locals 0

    .line 52
    iget-object p0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentClicked(I)V

    return-void
.end method

.method static synthetic access$300(Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)Landroid/graphics/Bitmap;
    .locals 0

    .line 52
    invoke-static {p0, p1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->getBitmapPreview(Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private attachmentClicked(I)V
    .locals 2

    .line 438
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    aget-object p1, v0, p1

    .line 442
    iget-object v0, p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget v0, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 452
    :cond_1
    invoke-static {p1}, Lio/olvid/messenger/App;->openFyle(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;)V

    goto :goto_0

    .line 447
    :cond_2
    new-instance v0, Lio/olvid/messenger/databases/tasks/StopAttachmentDownloadTask;

    iget-object p1, p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    invoke-direct {v0, p1}, Lio/olvid/messenger/databases/tasks/StopAttachmentDownloadTask;-><init>(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 444
    :cond_3
    new-instance v0, Lio/olvid/messenger/databases/tasks/StartAttachmentDownloadTask;

    iget-object p1, p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    invoke-direct {v0, p1}, Lio/olvid/messenger/databases/tasks/StartAttachmentDownloadTask;-><init>(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private canGetPreview(Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)Z
    .locals 3

    .line 575
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    const-string v1, "(video|image)/.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 576
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

    .line 582
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
    .locals 9

    .line 609
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    invoke-static {v0}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->thumbnailCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    sget-object p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->thumbnailCache:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    .line 613
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 615
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->filePath:Ljava/lang/String;

    .line 617
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return-object v3

    .line 622
    :cond_2
    iget-object v2, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    const-string v4, "image/.+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    .line 623
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 624
    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 625
    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 626
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ne p1, v4, :cond_3

    const-string p0, "Error loading bitmap bounds from image Fyle"

    .line 628
    invoke-static {p0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    return-object v3

    .line 631
    :cond_3
    sget v2, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->largeImagePreviewPixelSize:I

    div-int/2addr p1, v2

    .line 632
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 633
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 634
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 635
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 637
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    .line 638
    invoke-virtual {v2, v3, v5}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 639
    invoke-static {p1, v2}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
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

    .line 644
    :cond_5
    iget-object v2, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    const-string v6, "video/.+"

    invoke-virtual {v2, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 645
    invoke-static {v1, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_8

    .line 646
    :cond_6
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    const-string v2, "application/pdf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 647
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_a

    .line 649
    :try_start_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 650
    new-instance v1, Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {v1, p1}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 p1, 0x0

    .line 651
    :try_start_2
    invoke-virtual {v1, p1}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 652
    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_7

    .line 654
    sget v6, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->filePreviewPixelSize:I

    sget v7, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->filePreviewPixelSize:I

    int-to-float v7, v7

    div-float/2addr v7, v2

    float-to-int v2, v7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 656
    :cond_7
    sget v6, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->filePreviewPixelSize:I

    int-to-float v6, v6

    mul-float v2, v2, v6

    float-to-int v2, v2

    sget v6, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->filePreviewPixelSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 659
    :goto_1
    :try_start_4
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 660
    invoke-virtual {v6, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 661
    invoke-virtual {p1, v2, v3, v3, v5}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_8

    .line 662
    :try_start_5
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v3, v2

    goto :goto_5

    .line 663
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

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_3

    :catchall_2
    move-exception v2

    .line 651
    :goto_3
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v4

    if-eqz p1, :cond_9

    .line 662
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

    .line 650
    :goto_5
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v2

    .line 663
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

    .line 665
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 669
    :cond_a
    :goto_8
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 670
    sget-wide p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->thumbnailCacheSize:J

    const-wide/32 v1, 0x2faf080

    cmp-long v4, p0, v1

    if-lez v4, :cond_b

    .line 672
    sget-object p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->thumbnailCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    const-wide/16 p0, 0x0

    .line 673
    sput-wide p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->thumbnailCacheSize:J

    .line 675
    :cond_b
    sget-object p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->thumbnailCache:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_c

    .line 677
    sget-wide p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->thumbnailCacheSize:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p0, v0

    sput-wide p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->thumbnailCacheSize:J

    :cond_c
    return-object v3
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
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

    .line 603
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 604
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 605
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
.method protected attachmentLongClicked(ILandroid/view/View;)V
    .locals 1

    .line 458
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    aget-object p1, v0, p1

    .line 462
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentLongClickListener:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentLongClickListener;

    if-eqz v0, :cond_1

    .line 463
    invoke-interface {v0, p1, p2}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentLongClickListener;->attachmentLongClicked(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 335
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    if-eqz v0, :cond_0

    .line 336
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemDecoration()Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->itemDecoration:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentSpaceItemDecoration;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 117
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    if-eqz v0, :cond_0

    .line 118
    aget-object p1, v0, p1

    iget-object p1, p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-wide v0, p1, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 125
    iget v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->imageAndVideoCount:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    add-int/lit8 v3, v0, -0x1

    if-ne p1, v3, :cond_2

    and-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .line 104
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 52
    check-cast p1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->onBindViewHolder(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 52
    check-cast p1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->onBindViewHolder(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;I)V
    .locals 0

    const-string p1, "The no-payload onBindViewHolder should never get called!"

    .line 166
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;ILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 171
    iget-object v3, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    if-nez v3, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    .line 178
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 179
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_2

    .line 180
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    or-int/2addr v6, v7

    goto :goto_0

    .line 185
    :cond_3
    :goto_1
    iget-object v3, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    aget-object v3, v3, v2

    .line 186
    iget-object v7, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v7, v7, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    .line 187
    iput-object v3, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    and-int/lit8 v8, v6, 0x1

    const/4 v9, 0x3

    const/16 v10, 0x8

    const/4 v11, 0x1

    if-eqz v8, :cond_c

    .line 190
    iget-object v8, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget v8, v8, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    const/4 v12, 0x6

    if-eqz v8, :cond_8

    if-eq v8, v11, :cond_7

    if-eq v8, v9, :cond_6

    const/4 v13, 0x5

    if-eq v8, v13, :cond_5

    if-eq v8, v12, :cond_4

    .line 225
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 226
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 216
    :cond_4
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 217
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    const v13, 0x7f1000ff

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    const v13, 0x7f0800b5

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 204
    :cond_5
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    const v13, 0x7f100101

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 192
    :cond_6
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    const v13, 0x7f100123

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    .line 195
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 198
    :cond_7
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 199
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    const v13, 0x7f100104

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 210
    :cond_8
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 211
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    const v13, 0x7f0800b8

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    :goto_2
    iget-object v8, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget v8, v8, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    const/4 v13, 0x0

    if-ne v8, v12, :cond_9

    .line 231
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 233
    :cond_9
    iget-object v8, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-object v12, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    invoke-direct {v0, v8, v12}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->canGetPreview(Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 234
    new-instance v8, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;

    invoke-direct {v8, v3, v1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;-><init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;)V

    invoke-static {v8}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 236
    :cond_a
    iget v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->type:I

    if-eq v8, v9, :cond_b

    .line 242
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 238
    :cond_b
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    const v12, 0x7f0800b7

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    :goto_3
    and-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_d

    .line 250
    iget-object v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    iget-object v12, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget v12, v12, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float v12, v12, v13

    float-to-int v12, v12

    invoke-virtual {v8, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 251
    iget-object v8, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-object v12, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    invoke-direct {v0, v8, v12}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->canGetPreview(Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 252
    new-instance v8, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;

    invoke-direct {v8, v3, v1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;-><init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;)V

    invoke-static {v8}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :cond_d
    and-int/lit8 v8, v6, 0x4

    const/4 v12, 0x2

    if-eqz v8, :cond_1c

    .line 257
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v8, v13, :cond_1c

    .line 258
    iget v8, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->type:I

    const v13, 0x7f080063

    const v14, 0x7f080069

    if-eqz v8, :cond_1a

    const v15, 0x7f080066

    const v10, 0x7f080062

    if-eq v8, v11, :cond_17

    if-eq v8, v12, :cond_12

    if-eq v8, v9, :cond_e

    goto/16 :goto_4

    .line 292
    :cond_e
    iget-object v8, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    array-length v5, v8

    if-ne v5, v11, :cond_f

    .line 293
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_f
    if-nez v2, :cond_10

    .line 295
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v14}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 296
    :cond_10
    array-length v5, v8

    sub-int/2addr v5, v11

    if-ne v2, v5, :cond_11

    .line 297
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v15}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 299
    :cond_11
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_12
    if-nez v2, :cond_13

    .line 261
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    const v8, 0x7f080067

    invoke-static {v5, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_13
    if-ne v2, v11, :cond_14

    .line 263
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    const v8, 0x7f080068

    invoke-static {v5, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 264
    :cond_14
    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    array-length v8, v5

    sub-int/2addr v8, v11

    if-ne v2, v8, :cond_15

    .line 265
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    const v8, 0x7f080065

    invoke-static {v5, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 266
    :cond_15
    array-length v5, v5

    sub-int/2addr v5, v12

    if-ne v2, v5, :cond_16

    and-int/2addr v2, v11

    if-nez v2, :cond_16

    .line 267
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    const v8, 0x7f080064

    invoke-static {v5, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 269
    :cond_16
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_17
    if-nez v2, :cond_18

    .line 275
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v14}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 276
    :cond_18
    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    array-length v5, v5

    sub-int/2addr v5, v11

    if-ne v2, v5, :cond_19

    .line 277
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v15}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 279
    :cond_19
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 284
    :cond_1a
    iget-object v2, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    array-length v2, v2

    if-ne v2, v11, :cond_1b

    .line 285
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 287
    :cond_1b
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    iget-object v5, v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v14}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    :goto_4
    if-ne v6, v4, :cond_21

    .line 307
    iget v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->type:I

    if-eqz v2, :cond_1f

    if-eq v2, v11, :cond_1f

    if-eq v2, v12, :cond_1f

    if-eq v2, v9, :cond_1d

    goto :goto_5

    .line 309
    :cond_1d
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentFileName:Landroid/widget/TextView;

    iget-object v4, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_1e

    .line 311
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentMimeType:Landroid/widget/TextView;

    iget-object v3, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentMimeType:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 314
    :cond_1e
    iget-object v1, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentMimeType:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_1f
    const-string v2, "video/.+"

    .line 321
    invoke-virtual {v7, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 322
    iget-object v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentOverlay:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object v1, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentOverlay:Landroid/widget/ImageView;

    const v2, 0x7f080103

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 325
    :cond_20
    iget-object v1, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentOverlay:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_21
    :goto_5
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 345
    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 346
    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 348
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 349
    iput v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->imageAndVideoCount:I

    .line 351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 352
    sget-object v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->imageAndVideoPattern:Ljava/util/regex/Pattern;

    iget-object v5, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v5, v5, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    iget v4, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->imageAndVideoCount:I

    aput-object v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 354
    iput v4, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->imageAndVideoCount:I

    goto :goto_0

    .line 356
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    aput-object v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    :cond_2
    :goto_1
    div-int/lit8 p1, v2, 0x2

    if-ge v0, p1, :cond_3

    .line 361
    iget p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->imageAndVideoCount:I

    add-int v3, p1, v0

    aget-object v3, v1, v3

    add-int/2addr p1, v0

    .line 362
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aget-object v4, v1, v4

    aput-object v4, v1, p1

    .line 363
    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, v0

    aput-object v3, v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    :cond_3
    iget-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    if-eqz p1, :cond_4

    .line 367
    new-instance v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;

    invoke-direct {v0, p0, v1, p1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;-><init>(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    .line 427
    iput-object v1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 428
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_2

    .line 430
    :cond_4
    iput-object v1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 431
    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    .line 151
    iget-object v1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0052

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0054

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0053

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 154
    :goto_0
    new-instance v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;-><init>(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 52
    check-cast p1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->onViewRecycled(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;)V
    .locals 1

    .line 160
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 161
    iget-object p1, p1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAttachmentLongClickListener(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentLongClickListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentLongClickListener:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentLongClickListener;

    return-void
.end method
