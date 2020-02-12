.class public Lio/olvid/messenger/customClasses/InitialView;
.super Landroid/view/View;
.source "InitialView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;
    }
.end annotation


# static fields
.field private static final MAX_INITIALS_CACHE_SIZE:J = 0x2faf080L

.field private static final bitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final bitmapCacheSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final cachedSizes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bytes:[B

.field private bytesAndSize:Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;

.field private groupBitmap:Landroid/graphics/Bitmap;

.field private height:I

.field private ignoreCache:Z

.field private initial:Ljava/lang/String;

.field private insidePaint:Landroid/graphics/Paint;

.field private insideX:F

.field private insideY:F

.field private left:F

.field private photoUrl:Ljava/lang/String;

.field private size:I

.field private top:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/olvid/messenger/customClasses/InitialView;->bitmapCache:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/olvid/messenger/customClasses/InitialView;->cachedSizes:Ljava/util/Set;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lio/olvid/messenger/customClasses/InitialView;->bitmapCacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/InitialView;->ignoreCache:Z

    .line 45
    iput p1, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/InitialView;->ignoreCache:Z

    .line 45
    iput p1, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/InitialView;->ignoreCache:Z

    .line 45
    iput p1, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/InitialView;->ignoreCache:Z

    .line 45
    iput p1, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    return-void
.end method

.method public static getDarkColor([B)I
    .locals 6

    .line 202
    invoke-static {p0}, Lio/olvid/messenger/customClasses/InitialView;->hueFromBytes([B)I

    move-result v0

    .line 203
    array-length p0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const v5, 0x3f333333    # 0.7f

    if-nez p0, :cond_0

    new-array p0, v4, [F

    int-to-float v0, v0

    aput v0, p0, v3

    const/4 v0, 0x0

    aput v0, p0, v2

    aput v5, p0, v1

    .line 204
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    return p0

    :cond_0
    new-array p0, v4, [F

    int-to-float v0, v0

    aput v0, p0, v3

    aput v5, p0, v2

    aput v5, p0, v1

    .line 206
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    return p0
.end method

.method public static getLightColor([B)I
    .locals 6

    .line 193
    invoke-static {p0}, Lio/olvid/messenger/customClasses/InitialView;->hueFromBytes([B)I

    move-result v0

    .line 194
    array-length p0, p0

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez p0, :cond_0

    new-array p0, v5, [F

    int-to-float v0, v0

    aput v0, p0, v4

    const/4 v0, 0x0

    aput v0, p0, v3

    aput v1, p0, v2

    .line 195
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    return p0

    :cond_0
    new-array p0, v5, [F

    int-to-float v0, v0

    aput v0, p0, v4

    const v0, 0x3f4ccccd    # 0.8f

    aput v0, p0, v3

    aput v1, p0, v2

    .line 197
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    return p0
.end method

.method public static getTextColor([B)I
    .locals 6

    .line 211
    invoke-static {p0}, Lio/olvid/messenger/customClasses/InitialView;->hueFromBytes([B)I

    move-result v0

    .line 212
    array-length p0, p0

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez p0, :cond_0

    new-array p0, v5, [F

    int-to-float v0, v0

    aput v0, p0, v4

    const/4 v0, 0x0

    aput v0, p0, v3

    aput v1, p0, v2

    .line 213
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    return p0

    :cond_0
    new-array p0, v5, [F

    int-to-float v0, v0

    aput v0, p0, v4

    const v0, 0x3f333333    # 0.7f

    aput v0, p0, v3

    aput v1, p0, v2

    .line 215
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    return p0
.end method

.method public static hueFromBytes([B)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 224
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-byte v3, p0, v0

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 p0, v2, 0xff

    mul-int/lit16 p0, p0, 0x168

    .line 227
    div-int/lit16 p0, p0, 0x100

    return p0
.end method

.method private init()V
    .locals 8

    .line 122
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bytes:[B

    if-eqz v0, :cond_5

    iget v0, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/InitialView;->invalidate()V

    .line 128
    iget v0, p0, Lio/olvid/messenger/customClasses/InitialView;->height:I

    iget v1, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    iput v0, p0, Lio/olvid/messenger/customClasses/InitialView;->top:F

    .line 129
    iget v0, p0, Lio/olvid/messenger/customClasses/InitialView;->width:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v2

    iput v0, p0, Lio/olvid/messenger/customClasses/InitialView;->left:F

    .line 130
    new-instance v0, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;

    iget-object v3, p0, Lio/olvid/messenger/customClasses/InitialView;->bytes:[B

    invoke-direct {v0, v3, v1}, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;-><init>([BI)V

    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bytesAndSize:Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;

    .line 132
    iget-boolean v0, p0, Lio/olvid/messenger/customClasses/InitialView;->ignoreCache:Z

    if-nez v0, :cond_1

    sget-object v0, Lio/olvid/messenger/customClasses/InitialView;->bitmapCache:Ljava/util/HashMap;

    iget-object v1, p0, Lio/olvid/messenger/customClasses/InitialView;->bytesAndSize:Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lio/olvid/messenger/customClasses/InitialView;->bitmapCache:Ljava/util/HashMap;

    iget-object v1, p0, Lio/olvid/messenger/customClasses/InitialView;->bytesAndSize:Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bitmap:Landroid/graphics/Bitmap;

    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->photoUrl:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 138
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 139
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 140
    iget-object v3, p0, Lio/olvid/messenger/customClasses/InitialView;->photoUrl:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 141
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 143
    iget v2, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    div-int/2addr v0, v2

    .line 144
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 145
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 146
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->photoUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bitmap:Landroid/graphics/Bitmap;

    .line 148
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v2, p0, Lio/olvid/messenger/customClasses/InitialView;->photoUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 150
    iget-object v1, p0, Lio/olvid/messenger/customClasses/InitialView;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lio/olvid/messenger/customClasses/InitialView;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 156
    :cond_2
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bytes:[B

    invoke-static {v0}, Lio/olvid/messenger/customClasses/InitialView;->getLightColor([B)I

    move-result v0

    .line 157
    iget-object v3, p0, Lio/olvid/messenger/customClasses/InitialView;->bytes:[B

    invoke-static {v3}, Lio/olvid/messenger/customClasses/InitialView;->getDarkColor([B)I

    move-result v3

    .line 159
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lio/olvid/messenger/customClasses/InitialView;->backgroundPaint:Landroid/graphics/Paint;

    .line 160
    iget-object v4, p0, Lio/olvid/messenger/customClasses/InitialView;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v4, p0, Lio/olvid/messenger/customClasses/InitialView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    .line 164
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    iget v4, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    int-to-float v4, v4

    const v5, 0x3f19999a    # 0.6f

    mul-float v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 167
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 169
    iget v0, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/InitialView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    if-ge v0, v4, :cond_3

    .line 170
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 172
    :cond_3
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 175
    :goto_0
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->initial:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 176
    iget v0, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 177
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/messenger/customClasses/InitialView;->groupBitmap:Landroid/graphics/Bitmap;

    .line 178
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, p0, Lio/olvid/messenger/customClasses/InitialView;->groupBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 179
    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/InitialView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0800ba

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 180
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v3, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 181
    invoke-virtual {v4, v5, v5, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    iget v1, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    sub-int v3, v1, v0

    int-to-float v3, v3

    mul-float v3, v3, v2

    iput v3, p0, Lio/olvid/messenger/customClasses/InitialView;->insideX:F

    sub-int/2addr v1, v0

    int-to-float v0, v1

    mul-float v0, v0, v2

    .line 185
    iput v0, p0, Lio/olvid/messenger/customClasses/InitialView;->insideY:F

    goto :goto_1

    .line 187
    :cond_4
    iget v0, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    int-to-float v1, v0

    mul-float v1, v1, v2

    iput v1, p0, Lio/olvid/messenger/customClasses/InitialView;->insideX:F

    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 188
    iget-object v1, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lio/olvid/messenger/customClasses/InitialView;->insideY:F

    :cond_5
    :goto_1
    return-void
.end method

.method public static invalidateCache([B)V
    .locals 6

    .line 312
    sget-object v0, Lio/olvid/messenger/customClasses/InitialView;->cachedSizes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 313
    new-instance v2, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;-><init>([BI)V

    .line 314
    sget-object v1, Lio/olvid/messenger/customClasses/InitialView;->bitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 316
    sget-object v3, Lio/olvid/messenger/customClasses/InitialView;->bitmapCacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    neg-int v1, v1

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 317
    sget-object v1, Lio/olvid/messenger/customClasses/InitialView;->bitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
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

    .line 115
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 116
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 117
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
.method public drawOnCanvas(Landroid/graphics/Canvas;)V
    .locals 6

    .line 253
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 254
    sget-object v0, Lio/olvid/messenger/customClasses/InitialView;->bitmapCache:Ljava/util/HashMap;

    iget-object v1, p0, Lio/olvid/messenger/customClasses/InitialView;->bytesAndSize:Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 255
    iget-boolean v1, p0, Lio/olvid/messenger/customClasses/InitialView;->ignoreCache:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 256
    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 258
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    return-void

    .line 261
    :cond_1
    iget v0, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    iget v1, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 264
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    int-to-float v3, v3

    iget v4, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lio/olvid/messenger/customClasses/InitialView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 266
    iget-object v2, p0, Lio/olvid/messenger/customClasses/InitialView;->initial:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 267
    iget-object v2, p0, Lio/olvid/messenger/customClasses/InitialView;->groupBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 268
    iget-object v2, p0, Lio/olvid/messenger/customClasses/InitialView;->groupBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lio/olvid/messenger/customClasses/InitialView;->insideX:F

    iget v4, p0, Lio/olvid/messenger/customClasses/InitialView;->insideY:F

    iget-object v5, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v2, p0, Lio/olvid/messenger/customClasses/InitialView;->initial:Ljava/lang/String;

    iget v3, p0, Lio/olvid/messenger/customClasses/InitialView;->insideX:F

    iget v4, p0, Lio/olvid/messenger/customClasses/InitialView;->insideY:F

    iget-object v5, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 274
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lio/olvid/messenger/customClasses/InitialView;->ignoreCache:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lio/olvid/messenger/customClasses/InitialView;->bytes:[B

    array-length v1, v1

    if-lez v1, :cond_5

    .line 275
    sget-object v1, Lio/olvid/messenger/customClasses/InitialView;->bitmapCacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v1

    const-wide/32 v3, 0x2faf080

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 277
    sget-object v1, Lio/olvid/messenger/customClasses/InitialView;->bitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 278
    sget-object v1, Lio/olvid/messenger/customClasses/InitialView;->bitmapCacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 280
    :cond_4
    sget-object v1, Lio/olvid/messenger/customClasses/InitialView;->bitmapCache:Ljava/util/HashMap;

    iget-object v2, p0, Lio/olvid/messenger/customClasses/InitialView;->bytesAndSize:Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v1, Lio/olvid/messenger/customClasses/InitialView;->cachedSizes:Ljava/util/Set;

    iget v2, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_5
    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bitmap:Landroid/graphics/Bitmap;

    .line 286
    :cond_6
    :goto_1
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lio/olvid/messenger/customClasses/InitialView;->left:F

    iget v2, p0, Lio/olvid/messenger/customClasses/InitialView;->top:F

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public getAdaptiveBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .line 293
    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/InitialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 294
    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/InitialView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v2, v0, v1

    .line 295
    div-int/lit8 v2, v2, 0x2

    .line 296
    invoke-virtual {p0, v1, v1}, Lio/olvid/messenger/customClasses/InitialView;->setSize(II)V

    .line 297
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 299
    iget-object v3, p0, Lio/olvid/messenger/customClasses/InitialView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 301
    iget-object v3, p0, Lio/olvid/messenger/customClasses/InitialView;->initial:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 302
    iget-object v3, p0, Lio/olvid/messenger/customClasses/InitialView;->groupBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    int-to-float v2, v2

    .line 303
    iget v4, p0, Lio/olvid/messenger/customClasses/InitialView;->insideX:F

    add-float/2addr v4, v2

    iget v5, p0, Lio/olvid/messenger/customClasses/InitialView;->insideY:F

    add-float/2addr v2, v5

    iget-object v5, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    int-to-float v2, v2

    .line 306
    iget v4, p0, Lio/olvid/messenger/customClasses/InitialView;->insideX:F

    add-float/2addr v4, v2

    iget v5, p0, Lio/olvid/messenger/customClasses/InitialView;->insideY:F

    add-float/2addr v2, v5

    iget-object v5, p0, Lio/olvid/messenger/customClasses/InitialView;->insidePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 247
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 248
    invoke-virtual {p0, p1}, Lio/olvid/messenger/customClasses/InitialView;->drawOnCanvas(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 233
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/customClasses/InitialView;->setSize(II)V

    return-void
.end method

.method public setGroup([B)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bitmap:Landroid/graphics/Bitmap;

    .line 73
    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->photoUrl:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lio/olvid/messenger/customClasses/InitialView;->bytes:[B

    .line 75
    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->initial:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lio/olvid/messenger/customClasses/InitialView;->init()V

    return-void
.end method

.method public setIgnoreCache(Z)V
    .locals 0

    .line 323
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/InitialView;->ignoreCache:Z

    return-void
.end method

.method public setInitial([BLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bitmap:Landroid/graphics/Bitmap;

    .line 81
    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->photoUrl:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lio/olvid/messenger/customClasses/InitialView;->bytes:[B

    .line 83
    iput-object p2, p0, Lio/olvid/messenger/customClasses/InitialView;->initial:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lio/olvid/messenger/customClasses/InitialView;->init()V

    return-void
.end method

.method public setPhotoUrl([BLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bitmap:Landroid/graphics/Bitmap;

    .line 89
    iput-object p2, p0, Lio/olvid/messenger/customClasses/InitialView;->photoUrl:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lio/olvid/messenger/customClasses/InitialView;->bytes:[B

    .line 91
    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->initial:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lio/olvid/messenger/customClasses/InitialView;->init()V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lio/olvid/messenger/customClasses/InitialView;->bitmap:Landroid/graphics/Bitmap;

    .line 238
    iput p1, p0, Lio/olvid/messenger/customClasses/InitialView;->width:I

    .line 239
    iput p2, p0, Lio/olvid/messenger/customClasses/InitialView;->height:I

    .line 240
    iget p1, p0, Lio/olvid/messenger/customClasses/InitialView;->width:I

    iget p2, p0, Lio/olvid/messenger/customClasses/InitialView;->height:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/olvid/messenger/customClasses/InitialView;->size:I

    .line 241
    invoke-direct {p0}, Lio/olvid/messenger/customClasses/InitialView;->init()V

    return-void
.end method
