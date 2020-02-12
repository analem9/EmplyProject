.class Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/sqlite/date/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/date/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Iso8601_Rule"
.end annotation


# static fields
.field static final ISO8601_HOURS:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

.field static final ISO8601_HOURS_COLON_MINUTES:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

.field static final ISO8601_HOURS_MINUTES:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;


# instance fields
.field final length:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1201
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    sput-object v0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    .line 1203
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    sput-object v0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_MINUTES:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    .line 1205
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    sput-object v0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    iput p1, p0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->length:I

    return-void
.end method

.method static getRule(I)Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1221
    sget-object p0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    return-object p0

    .line 1223
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid number of X"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1219
    :cond_1
    sget-object p0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_MINUTES:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    return-object p0

    .line 1217
    :cond_2
    sget-object p0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    return-object p0
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 3

    const/16 v0, 0xf

    .line 1249
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "Z"

    .line 1251
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const/16 v1, 0x10

    .line 1255
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr v0, p2

    if-gez v0, :cond_1

    const/16 p2, 0x2d

    .line 1258
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v0, v0

    goto :goto_0

    :cond_1
    const/16 p2, 0x2b

    .line 1261
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    const p2, 0x36ee80

    .line 1264
    div-int p2, v0, p2

    .line 1265
    invoke-static {p1, p2}, Lorg/sqlite/date/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    .line 1267
    iget v1, p0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->length:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    const/16 v1, 0x3a

    .line 1272
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    const v1, 0xea60

    .line 1275
    div-int/2addr v0, v1

    mul-int/lit8 p2, p2, 0x3c

    sub-int/2addr v0, p2

    .line 1276
    invoke-static {p1, v0}, Lorg/sqlite/date/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1242
    iget v0, p0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->length:I

    return v0
.end method
