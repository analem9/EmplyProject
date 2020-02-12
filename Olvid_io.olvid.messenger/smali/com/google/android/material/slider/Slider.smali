.class public Lcom/google/android/material/slider/Slider;
.super Landroid/view/View;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/Slider$SliderState;,
        Lcom/google/android/material/slider/Slider$BasicLabelFormatter;,
        Lcom/google/android/material/slider/Slider$LabelFormatter;,
        Lcom/google/android/material/slider/Slider$OnChangeListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final EXCEPTION_ILLEGAL_DISCRETE_VALUE:Ljava/lang/String; = "Value must be equal to valueFrom plus a multiple of stepSize when using stepSize"

.field private static final EXCEPTION_ILLEGAL_STEP_SIZE:Ljava/lang/String; = "The stepSize must be 0, or a factor of the valueFrom-valueTo range"

.field private static final EXCEPTION_ILLEGAL_VALUE:Ljava/lang/String; = "Slider value must be greater or equal to valueFrom, and lower or equal to valueTo"

.field private static final EXCEPTION_ILLEGAL_VALUE_FROM:Ljava/lang/String; = "valueFrom must be smaller than valueTo"

.field private static final EXCEPTION_ILLEGAL_VALUE_TO:Ljava/lang/String; = "valueTo must be greater than valueFrom"

.field private static final HALO_ALPHA:I = 0x3f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activeTrackColor:Landroid/content/res/ColorStateList;

.field private final activeTrackPaint:Landroid/graphics/Paint;

.field private floatingLabel:Z

.field private forceDrawCompatShadow:Z

.field private formatter:Lcom/google/android/material/slider/Slider$LabelFormatter;

.field private haloColor:Landroid/content/res/ColorStateList;

.field private final haloPaint:Landroid/graphics/Paint;

.field private haloRadius:I

.field private inactiveTrackColor:Landroid/content/res/ColorStateList;

.field private final inactiveTrackPaint:Landroid/graphics/Paint;

.field private final label:Landroid/graphics/drawable/Drawable;

.field private labelHeight:I

.field private labelPadding:I

.field private labelText:Ljava/lang/String;

.field private final labelTextBounds:Landroid/graphics/Rect;

.field private final labelTextPaint:Landroid/graphics/Paint;

.field private labelTextSize:F

.field private labelTextTopOffset:I

.field private labelTopOffset:I

.field private labelWidth:I

.field private lineHeight:I

.field private listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

.field private stepSize:F

.field private textColor:Landroid/content/res/ColorStateList;

.field private thumbColor:Landroid/content/res/ColorStateList;

.field private final thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private thumbIsPressed:Z

.field private final thumbPaint:Landroid/graphics/Paint;

.field private thumbPosition:F

.field private thumbRadius:I

.field private tickColor:Landroid/content/res/ColorStateList;

.field private ticksCoordinates:[F

.field private final ticksPaint:Landroid/graphics/Paint;

.field private trackSidePadding:I

.field private trackTop:I

.field private trackTopLabel:I

.field private trackWidth:I

.field private valueFrom:F

.field private valueTo:F

.field private widgetHeight:I

.field private widgetHeightLabel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    const-class v0, Lcom/google/android/material/slider/Slider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    .line 156
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Slider:I

    sput v0, Lcom/google/android/material/slider/Slider;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 252
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 256
    sget v0, Lcom/google/android/material/slider/Slider;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 167
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->labelText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    const/4 p1, 0x0

    .line 189
    iput p1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    .line 190
    iput p1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    .line 202
    new-instance p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 258
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/Slider;->loadResources(Landroid/content/res/Resources;)V

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/Slider;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 263
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 264
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/google/android/material/slider/Slider;->lineHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 267
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 268
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/google/android/material/slider/Slider;->lineHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 271
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/material/slider/Slider;->thumbPaint:Landroid/graphics/Paint;

    .line 272
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->thumbPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->thumbPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 275
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    .line 276
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/slider/Slider;->ticksPaint:Landroid/graphics/Paint;

    .line 279
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->ticksPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 280
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->ticksPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/material/slider/Slider;->lineHeight:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 282
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 284
    instance-of v0, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 285
    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->haloColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 286
    iget v0, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    invoke-static {p2, v0}, Lcom/google/android/material/drawable/DrawableUtils;->setRippleDrawableRadius(Landroid/graphics/drawable/Drawable;I)V

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$drawable;->mtrl_slider_label:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->label:Landroid/graphics/drawable/Drawable;

    .line 291
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->label:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 293
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->labelTextPaint:Landroid/graphics/Paint;

    .line 294
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->labelTextPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 295
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->labelTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/google/android/material/slider/Slider;->labelTextSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 297
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->labelTextBounds:Landroid/graphics/Rect;

    .line 299
    new-instance p1, Lcom/google/android/material/slider/Slider$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/Slider$1;-><init>(Lcom/google/android/material/slider/Slider;)V

    invoke-super {p0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 307
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/Slider;->setFocusable(Z)V

    .line 310
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    return-void
.end method

.method private calculateTop()I
    .locals 1

    .line 667
    iget-boolean v0, p0, Lcom/google/android/material/slider/Slider;->floatingLabel:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackTop:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackTopLabel:I

    :goto_0
    return v0
.end method

.method private drawLabel(Landroid/graphics/Canvas;II)V
    .locals 3

    .line 711
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    float-to-int p2, v1

    add-int/2addr v0, p2

    iget p2, p0, Lcom/google/android/material/slider/Slider;->labelWidth:I

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 712
    iget v1, p0, Lcom/google/android/material/slider/Slider;->labelTopOffset:I

    iget v2, p0, Lcom/google/android/material/slider/Slider;->labelPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    add-int/2addr v1, v2

    sub-int/2addr p3, v1

    .line 713
    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->label:Landroid/graphics/drawable/Drawable;

    add-int/2addr p2, v0

    iget v2, p0, Lcom/google/android/material/slider/Slider;->labelHeight:I

    add-int/2addr v2, p3

    invoke-virtual {v1, v0, p3, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 714
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->label:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawLabelText(Landroid/graphics/Canvas;II)V
    .locals 5

    .line 718
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labelTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->labelText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/slider/Slider;->labelTextBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 719
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    float-to-int p2, v1

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->labelTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    .line 720
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->labelText:Ljava/lang/String;

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/slider/Slider;->labelTextTopOffset:I

    sub-int/2addr p3, v1

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    sub-int/2addr p3, v1

    int-to-float p3, p3

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->labelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawMarker(Landroid/graphics/Canvas;II)V
    .locals 9

    .line 702
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float p2, p2

    mul-float v2, v2, p2

    add-float v6, v1, v2

    int-to-float v4, v0

    int-to-float v7, p3

    .line 703
    iget-object v8, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;II)V
    .locals 4

    .line 726
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float v2, p2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p3

    iget v2, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/slider/Slider;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 730
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 731
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    float-to-int p2, v1

    add-int/2addr v0, p2

    iget p2, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    sub-int/2addr p3, p2

    int-to-float p2, p3

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 733
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 734
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;)V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->ticksPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTrack(Landroid/graphics/Canvas;II)V
    .locals 9

    .line 695
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float v4, v1, v2

    add-int v1, v0, p2

    int-to-float v1, v1

    cmpg-float v1, v4, v1

    if-gez v1, :cond_0

    int-to-float v7, p3

    add-int/2addr v0, p2

    int-to-float v6, v0

    .line 697
    iget-object v8, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getColorForState(Landroid/content/res/ColorStateList;)I
    .locals 2

    .line 822
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private isValueValid(F)Z
    .locals 5

    .line 473
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    const/4 v1, 0x0

    cmpg-float v2, p1, v0

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    iget v2, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    sub-float/2addr v0, p1

    rem-float/2addr v0, v2

    cmpl-float p1, v0, v3

    if-eqz p1, :cond_1

    .line 478
    sget-object p1, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    const-string v0, "Value must be equal to valueFrom plus a multiple of stepSize when using stepSize"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 474
    :cond_2
    :goto_0
    sget-object p1, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    const-string v0, "Slider value must be greater or equal to valueFrom, and lower or equal to valueTo"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private loadResources(Landroid/content/res/Resources;)V
    .locals 1

    .line 326
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_widget_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->widgetHeight:I

    .line 327
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_widget_height_label:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->widgetHeightLabel:I

    .line 329
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_line_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->lineHeight:I

    .line 331
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_side_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    .line 332
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->trackTop:I

    .line 333
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_top_label:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->trackTopLabel:I

    .line 335
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->labelWidth:I

    .line 336
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->labelHeight:I

    .line 337
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->labelPadding:I

    .line 338
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_top_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->labelTopOffset:I

    .line 339
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->labelTextSize:F

    .line 340
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_text_top_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/Slider;->labelTextTopOffset:I

    return-void
.end method

.method private maybeDrawHalo(Landroid/graphics/Canvas;II)V
    .locals 2

    .line 739
    iget-boolean v0, p0, Lcom/google/android/material/slider/Slider;->forceDrawCompatShadow:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 740
    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    int-to-float p2, p3

    iget p3, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    int-to-float p3, p3

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 344
    sget-object v2, Lcom/google/android/material/R$styleable;->Slider:[I

    sget v4, Lcom/google/android/material/slider/Slider;->DEF_STYLE_RES:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 345
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 347
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueFrom:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    .line 348
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueTo:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    .line 349
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_value:I

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 350
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_stepSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    .line 352
    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 354
    sget v1, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/google/android/material/R$styleable;->Slider_inactiveTrackColor:I

    :goto_0
    if-eqz p3, :cond_1

    .line 356
    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_1

    :cond_1
    sget p3, Lcom/google/android/material/R$styleable;->Slider_activeTrackColor:I

    .line 359
    :goto_1
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackColor:Landroid/content/res/ColorStateList;

    .line 360
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/slider/Slider;->activeTrackColor:Landroid/content/res/ColorStateList;

    .line 361
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/slider/Slider;->thumbColor:Landroid/content/res/ColorStateList;

    .line 362
    iget-object p3, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->thumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p3, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 363
    sget p3, Lcom/google/android/material/R$styleable;->Slider_haloColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/slider/Slider;->haloColor:Landroid/content/res/ColorStateList;

    .line 364
    sget p3, Lcom/google/android/material/R$styleable;->Slider_activeTickColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/slider/Slider;->tickColor:Landroid/content/res/ColorStateList;

    .line 365
    sget p3, Lcom/google/android/material/R$styleable;->Slider_labelColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->textColor:Landroid/content/res/ColorStateList;

    .line 367
    sget p1, Lcom/google/android/material/R$styleable;->Slider_thumbRadius:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbRadius(I)V

    .line 368
    sget p1, Lcom/google/android/material/R$styleable;->Slider_haloRadius:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    .line 370
    sget p1, Lcom/google/android/material/R$styleable;->Slider_thumbElevation:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbElevation(F)V

    .line 372
    sget p1, Lcom/google/android/material/R$styleable;->Slider_floatingLabel:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/slider/Slider;->floatingLabel:Z

    .line 373
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateValueFrom()V

    .line 376
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateValueTo()V

    .line 377
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateStepSize()V

    return-void
.end method

.method private snapThumbPosition()V
    .locals 2

    .line 799
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 800
    iget v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 801
    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    :cond_0
    return-void
.end method

.method private updateHaloHotSpot()V
    .locals 6

    .line 655
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 657
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 658
    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 659
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->calculateTop()I

    move-result v2

    .line 660
    iget v3, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    sub-int v4, v1, v3

    sub-int v5, v2, v3

    add-int/2addr v1, v3

    add-int/2addr v2, v3

    invoke-static {v0, v4, v5, v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return-void
.end method

.method private updateTrackWidthAndTicksCoordinates(I)V
    .locals 5

    .line 639
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    .line 640
    iget p1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 641
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr v0, v1

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 642
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    mul-int/lit8 v1, p1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    .line 643
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    .line 645
    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    int-to-float v0, v0

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    mul-int/lit8 v2, p1, 0x2

    if-ge v1, v2, :cond_2

    .line 647
    iget-object v2, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    iget v3, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    .line 648
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->calculateTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private validateStepSize()V
    .locals 5

    .line 395
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v1, 0x0

    const-string v2, "The stepSize must be 0, or a factor of the valueFrom-valueTo range"

    cmpg-float v3, v0, v1

    if-ltz v3, :cond_2

    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    .line 398
    iget v3, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget v4, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr v3, v4

    rem-float/2addr v3, v0

    cmpl-float v0, v3, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    sget-object v0, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    sget-object v0, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateValueFrom()V
    .locals 2

    .line 381
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 382
    :cond_0
    sget-object v0, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    const-string v1, "valueFrom must be smaller than valueTo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateValueTo()V
    .locals 2

    .line 388
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 389
    :cond_0
    sget-object v0, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    const-string v1, "valueTo must be greater than valueFrom"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 807
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 809
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 810
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->activeTrackColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 811
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->ticksPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->tickColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 812
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labelTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->textColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 813
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setState([I)Z

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->thumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 817
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method forceDrawCompatShadow(Z)V
    .locals 0

    .line 827
    iput-boolean p1, p0, Lcom/google/android/material/slider/Slider;->forceDrawCompatShadow:Z

    return-void
.end method

.method public getHaloRadius()I
    .locals 1

    .line 620
    iget v0, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 491
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    return v0
.end method

.method public getThumbElevation()F
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    return v0
.end method

.method public getThumbRadius()I
    .locals 1

    .line 587
    iget v0, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    return v0
.end method

.method public getValue()F
    .locals 3

    .line 444
    iget v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget v2, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public getValueFrom()F
    .locals 1

    .line 406
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    return v0
.end method

.method public getValueTo()F
    .locals 1

    .line 425
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    return v0
.end method

.method public hasLabelFormatter()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->formatter:Lcom/google/android/material/slider/Slider$LabelFormatter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOnChangeListener()Z
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFloatingLabel()Z
    .locals 1

    .line 614
    iget-boolean v0, p0, Lcom/google/android/material/slider/Slider;->floatingLabel:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 672
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 674
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->calculateTop()I

    move-result v0

    .line 676
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->drawTrack(Landroid/graphics/Canvas;II)V

    .line 677
    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 678
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->drawMarker(Landroid/graphics/Canvas;II)V

    .line 681
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 682
    iget v1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 683
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->drawTicks(Landroid/graphics/Canvas;)V

    .line 686
    :cond_2
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->maybeDrawHalo(Landroid/graphics/Canvas;II)V

    .line 687
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->drawLabel(Landroid/graphics/Canvas;II)V

    .line 688
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->drawLabelText(Landroid/graphics/Canvas;II)V

    .line 691
    :cond_3
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->drawThumb(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 625
    iget-boolean p2, p0, Lcom/google/android/material/slider/Slider;->floatingLabel:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/google/android/material/slider/Slider;->widgetHeight:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/google/android/material/slider/Slider;->widgetHeightLabel:I

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 627
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 625
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 844
    check-cast p1, Lcom/google/android/material/slider/Slider$SliderState;

    .line 845
    invoke-virtual {p1}, Lcom/google/android/material/slider/Slider$SliderState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 847
    iget v0, p1, Lcom/google/android/material/slider/Slider$SliderState;->valueFrom:F

    iput v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    .line 848
    iget v0, p1, Lcom/google/android/material/slider/Slider$SliderState;->valueTo:F

    iput v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    .line 849
    iget v0, p1, Lcom/google/android/material/slider/Slider$SliderState;->thumbPosition:F

    iput v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    .line 850
    iget v0, p1, Lcom/google/android/material/slider/Slider$SliderState;->stepSize:F

    iput v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    .line 851
    iget-boolean p1, p1, Lcom/google/android/material/slider/Slider$SliderState;->hasFocus:Z

    if-eqz p1, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->requestFocus()Z

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasOnChangeListener()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 855
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/google/android/material/slider/Slider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/Slider;F)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 832
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 833
    new-instance v1, Lcom/google/android/material/slider/Slider$SliderState;

    invoke-direct {v1, v0}, Lcom/google/android/material/slider/Slider$SliderState;-><init>(Landroid/os/Parcelable;)V

    .line 834
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    iput v0, v1, Lcom/google/android/material/slider/Slider$SliderState;->valueFrom:F

    .line 835
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iput v0, v1, Lcom/google/android/material/slider/Slider$SliderState;->valueTo:F

    .line 836
    iget v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    iput v0, v1, Lcom/google/android/material/slider/Slider$SliderState;->thumbPosition:F

    .line 837
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    iput v0, v1, Lcom/google/android/material/slider/Slider$SliderState;->stepSize:F

    .line 838
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasFocus()Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/material/slider/Slider$SliderState;->hasFocus:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 633
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 634
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->updateTrackWidthAndTicksCoordinates(I)V

    .line 635
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->updateHaloHotSpot()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 746
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 749
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 750
    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    .line 751
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 752
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 768
    :cond_1
    iput v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    .line 769
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->snapThumbPosition()V

    .line 770
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->updateHaloHotSpot()V

    .line 771
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->invalidate()V

    .line 772
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasOnChangeListener()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 773
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/google/android/material/slider/Slider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/Slider;F)V

    goto :goto_0

    .line 777
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 778
    iput-boolean v1, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    .line 779
    iput v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    .line 780
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->snapThumbPosition()V

    .line 781
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->invalidate()V

    goto :goto_0

    .line 756
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 757
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->requestFocus()Z

    .line 758
    iput-boolean v2, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    .line 759
    iput v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    .line 760
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->snapThumbPosition()V

    .line 761
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->updateHaloHotSpot()V

    .line 762
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->invalidate()V

    .line 763
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasOnChangeListener()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 764
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/google/android/material/slider/Slider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/Slider;F)V

    .line 786
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result p1

    .line 787
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasLabelFormatter()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 788
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->formatter:Lcom/google/android/material/slider/Slider$LabelFormatter;

    invoke-interface {v0, p1}, Lcom/google/android/material/slider/Slider$LabelFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->labelText:Ljava/lang/String;

    goto :goto_2

    :cond_5
    float-to-int v0, p1

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_6

    const-string v0, "%.0f"

    goto :goto_1

    :cond_6
    const-string v0, "%.2f"

    :goto_1
    new-array v3, v2, [Ljava/lang/Object;

    .line 790
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->labelText:Ljava/lang/String;

    .line 794
    :goto_2
    iget-boolean p1, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setPressed(Z)V

    return v2
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 315
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/slider/Slider;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setFloatingLabel(Z)V
    .locals 1

    .line 606
    iget-boolean v0, p0, Lcom/google/android/material/slider/Slider;->floatingLabel:Z

    if-eq v0, p1, :cond_0

    .line 607
    iput-boolean p1, p0, Lcom/google/android/material/slider/Slider;->floatingLabel:Z

    .line 608
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setHaloRadius(I)V
    .locals 0

    .line 592
    iput p1, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    .line 593
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    return-void
.end method

.method public setHaloRadiusResource(I)V
    .locals 1

    .line 598
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setHaloRadius(I)V

    return-void
.end method

.method public setLabelFormatter(Lcom/google/android/material/slider/Slider$LabelFormatter;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->formatter:Lcom/google/android/material/slider/Slider$LabelFormatter;

    return-void
.end method

.method public setOnChangeListener(Lcom/google/android/material/slider/Slider$OnChangeListener;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    return-void
.end method

.method public setStepSize(F)V
    .locals 0

    .line 512
    iput p1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    .line 513
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateStepSize()V

    .line 514
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->requestLayout()V

    return-void
.end method

.method public setThumbElevation(F)V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 555
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    return-void
.end method

.method public setThumbElevationResource(I)V
    .locals 1

    .line 560
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbElevation(F)V

    return-void
.end method

.method public setThumbRadius(I)V
    .locals 3

    .line 570
    iput p1, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    .line 572
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 573
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 572
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 574
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v0, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v2, v2, v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    .line 576
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    return-void
.end method

.method public setThumbRadiusResource(I)V
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbRadius(I)V

    return-void
.end method

.method public setValue(F)V
    .locals 2

    .line 463
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->isValueValid(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    .line 465
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasOnChangeListener()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 466
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/google/android/material/slider/Slider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/Slider;F)V

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->invalidate()V

    :cond_1
    return-void
.end method

.method public setValueFrom(F)V
    .locals 0

    .line 419
    iput p1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    .line 420
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateValueFrom()V

    return-void
.end method

.method public setValueTo(F)V
    .locals 0

    .line 438
    iput p1, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    .line 439
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateValueTo()V

    return-void
.end method
