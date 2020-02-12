.class Lorg/sqlite/date/FastDatePrinter$PaddedNumberField;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/sqlite/date/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/date/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaddedNumberField"
.end annotation


# instance fields
.field private final mField:I

.field private final mSize:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    .line 831
    iput p1, p0, Lorg/sqlite/date/FastDatePrinter$PaddedNumberField;->mField:I

    .line 832
    iput p2, p0, Lorg/sqlite/date/FastDatePrinter$PaddedNumberField;->mSize:I

    return-void

    .line 829
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .locals 3

    const/4 v0, 0x0

    .line 854
    :goto_0
    iget v1, p0, Lorg/sqlite/date/FastDatePrinter$PaddedNumberField;->mSize:I

    const/16 v2, 0x30

    if-ge v0, v1, :cond_0

    .line 855
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    :goto_1
    if-lez p2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 860
    rem-int/lit8 v1, p2, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 859
    div-int/lit8 p2, p2, 0xa

    goto :goto_1

    :cond_1
    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    .line 846
    iget v0, p0, Lorg/sqlite/date/FastDatePrinter$PaddedNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/date/FastDatePrinter$PaddedNumberField;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 839
    iget v0, p0, Lorg/sqlite/date/FastDatePrinter$PaddedNumberField;->mSize:I

    return v0
.end method
