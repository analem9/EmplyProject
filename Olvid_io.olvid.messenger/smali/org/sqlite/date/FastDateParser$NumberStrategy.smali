.class Lorg/sqlite/date/FastDateParser$NumberStrategy;
.super Lorg/sqlite/date/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/date/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberStrategy"
.end annotation


# instance fields
.field private final field:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 678
    invoke-direct {p0, v0}, Lorg/sqlite/date/FastDateParser$Strategy;-><init>(Lorg/sqlite/date/FastDateParser$1;)V

    .line 679
    iput p1, p0, Lorg/sqlite/date/FastDateParser$NumberStrategy;->field:I

    return-void
.end method


# virtual methods
.method addRegex(Lorg/sqlite/date/FastDateParser;Ljava/lang/StringBuilder;)Z
    .locals 1

    .line 696
    invoke-virtual {p1}, Lorg/sqlite/date/FastDateParser;->isNextNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(\\p{Nd}{"

    .line 697
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/sqlite/date/FastDateParser;->getFieldWidth()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}+)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "(\\p{Nd}++)"

    .line 700
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method isNumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method modify(I)I
    .locals 0

    return p1
.end method

.method setCalendar(Lorg/sqlite/date/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 0

    .line 710
    iget p1, p0, Lorg/sqlite/date/FastDateParser$NumberStrategy;->field:I

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Lorg/sqlite/date/FastDateParser$NumberStrategy;->modify(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method
