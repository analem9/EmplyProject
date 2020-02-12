.class abstract Lorg/sqlite/date/FastDateParser$Strategy;
.super Ljava/lang/Object;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/date/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Strategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/sqlite/date/FastDateParser$1;)V
    .locals 0

    .line 432
    invoke-direct {p0}, Lorg/sqlite/date/FastDateParser$Strategy;-><init>()V

    return-void
.end method


# virtual methods
.method abstract addRegex(Lorg/sqlite/date/FastDateParser;Ljava/lang/StringBuilder;)Z
.end method

.method isNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method setCalendar(Lorg/sqlite/date/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
