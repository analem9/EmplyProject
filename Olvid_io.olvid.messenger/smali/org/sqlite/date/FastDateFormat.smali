.class public Lorg/sqlite/date/FastDateFormat;
.super Ljava/text/Format;
.source "FastDateFormat.java"

# interfaces
.implements Lorg/sqlite/date/DateParser;
.implements Lorg/sqlite/date/DatePrinter;


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cache:Lorg/sqlite/date/FormatCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sqlite/date/FormatCache<",
            "Lorg/sqlite/date/FastDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final parser:Lorg/sqlite/date/FastDateParser;

.field private final printer:Lorg/sqlite/date/FastDatePrinter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Lorg/sqlite/date/FastDateFormat$1;

    invoke-direct {v0}, Lorg/sqlite/date/FastDateFormat$1;-><init>()V

    sput-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    .line 379
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/sqlite/date/FastDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 1

    .line 393
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 394
    new-instance v0, Lorg/sqlite/date/FastDatePrinter;

    invoke-direct {v0, p1, p2, p3}, Lorg/sqlite/date/FastDatePrinter;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    .line 395
    new-instance v0, Lorg/sqlite/date/FastDateParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/sqlite/date/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    iput-object v0, p0, Lorg/sqlite/date/FastDateFormat;->parser:Lorg/sqlite/date/FastDateParser;

    return-void
.end method

.method public static getDateInstance(I)Lorg/sqlite/date/FastDateFormat;
    .locals 2

    .line 190
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lorg/sqlite/date/FormatCache;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getDateInstance(ILjava/util/Locale;)Lorg/sqlite/date/FastDateFormat;
    .locals 2

    .line 205
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lorg/sqlite/date/FormatCache;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;)Lorg/sqlite/date/FastDateFormat;
    .locals 2

    .line 221
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/sqlite/date/FormatCache;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/sqlite/date/FastDateFormat;
    .locals 1

    .line 237
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    invoke-virtual {v0, p0, p1, p2}, Lorg/sqlite/date/FormatCache;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getDateTimeInstance(II)Lorg/sqlite/date/FastDateFormat;
    .locals 2

    .line 315
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lorg/sqlite/date/FormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getDateTimeInstance(IILjava/util/Locale;)Lorg/sqlite/date/FastDateFormat;
    .locals 2

    .line 331
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lorg/sqlite/date/FormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;)Lorg/sqlite/date/FastDateFormat;
    .locals 1

    const/4 v0, 0x0

    .line 348
    invoke-static {p0, p1, p2, v0}, Lorg/sqlite/date/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/sqlite/date/FastDateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/sqlite/date/FastDateFormat;
    .locals 1

    .line 365
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/sqlite/date/FormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getInstance()Lorg/sqlite/date/FastDateFormat;
    .locals 1

    .line 116
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    invoke-virtual {v0}, Lorg/sqlite/date/FormatCache;->getInstance()Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lorg/sqlite/date/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;
    .locals 2

    .line 129
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lorg/sqlite/date/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/sqlite/date/FastDateFormat;
    .locals 2

    .line 158
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lorg/sqlite/date/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/sqlite/date/FastDateFormat;
    .locals 2

    .line 144
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/sqlite/date/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/sqlite/date/FastDateFormat;
    .locals 1

    .line 175
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    invoke-virtual {v0, p0, p1, p2}, Lorg/sqlite/date/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getTimeInstance(I)Lorg/sqlite/date/FastDateFormat;
    .locals 2

    .line 252
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lorg/sqlite/date/FormatCache;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getTimeInstance(ILjava/util/Locale;)Lorg/sqlite/date/FastDateFormat;
    .locals 2

    .line 267
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lorg/sqlite/date/FormatCache;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;)Lorg/sqlite/date/FastDateFormat;
    .locals 2

    .line 283
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/sqlite/date/FormatCache;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/sqlite/date/FastDateFormat;
    .locals 1

    .line 299
    sget-object v0, Lorg/sqlite/date/FastDateFormat;->cache:Lorg/sqlite/date/FormatCache;

    invoke-virtual {v0, p0, p1, p2}, Lorg/sqlite/date/FormatCache;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lorg/sqlite/date/FastDateFormat;

    return-object p0
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 599
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lorg/sqlite/date/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 561
    instance-of v0, p1, Lorg/sqlite/date/FastDateFormat;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 564
    :cond_0
    check-cast p1, Lorg/sqlite/date/FastDateFormat;

    .line 566
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    iget-object p1, p1, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0, p1}, Lorg/sqlite/date/FastDatePrinter;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public format(J)Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lorg/sqlite/date/FastDatePrinter;->format(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0, p1}, Lorg/sqlite/date/FastDatePrinter;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0, p1}, Lorg/sqlite/date/FastDatePrinter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/sqlite/date/FastDatePrinter;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/sqlite/date/FastDatePrinter;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lorg/sqlite/date/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lorg/sqlite/date/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 535
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0}, Lorg/sqlite/date/FastDatePrinter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .line 548
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0}, Lorg/sqlite/date/FastDatePrinter;->getMaxLengthEstimate()I

    move-result v0

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 515
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0}, Lorg/sqlite/date/FastDatePrinter;->getPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 526
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0}, Lorg/sqlite/date/FastDatePrinter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 576
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v0}, Lorg/sqlite/date/FastDatePrinter;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->parser:Lorg/sqlite/date/FastDateParser;

    invoke-virtual {v0, p1}, Lorg/sqlite/date/FastDateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->parser:Lorg/sqlite/date/FastDateParser;

    invoke-virtual {v0, p1, p2}, Lorg/sqlite/date/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/sqlite/date/FastDateFormat;->parser:Lorg/sqlite/date/FastDateParser;

    invoke-virtual {v0, p1, p2}, Lorg/sqlite/date/FastDateParser;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDateFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v1}, Lorg/sqlite/date/FastDatePrinter;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v2}, Lorg/sqlite/date/FastDatePrinter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/sqlite/date/FastDateFormat;->printer:Lorg/sqlite/date/FastDatePrinter;

    invoke-virtual {v1}, Lorg/sqlite/date/FastDatePrinter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
