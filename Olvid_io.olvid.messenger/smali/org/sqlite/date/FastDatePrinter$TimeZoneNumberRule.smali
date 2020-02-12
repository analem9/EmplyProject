.class Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;
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
    name = "TimeZoneNumberRule"
.end annotation


# static fields
.field static final INSTANCE_COLON:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

.field static final INSTANCE_ISO_8601:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

.field static final INSTANCE_NO_COLON:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;


# instance fields
.field final mColon:Z

.field final mISO8601:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1139
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;-><init>(ZZ)V

    sput-object v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    .line 1140
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    invoke-direct {v0, v1, v1}, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;-><init>(ZZ)V

    sput-object v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    .line 1141
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    invoke-direct {v0, v2, v2}, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;-><init>(ZZ)V

    sput-object v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_ISO_8601:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    return-void
.end method

.method constructor <init>(ZZ)V
    .locals 0

    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1153
    iput-boolean p1, p0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->mColon:Z

    .line 1154
    iput-boolean p2, p0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->mISO8601:Z

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2

    .line 1168
    iget-boolean v0, p0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->mISO8601:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "Z"

    .line 1169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const/16 v0, 0xf

    .line 1173
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr v0, p2

    if-gez v0, :cond_1

    const/16 p2, 0x2d

    .line 1176
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v0, v0

    goto :goto_0

    :cond_1
    const/16 p2, 0x2b

    .line 1179
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    const p2, 0x36ee80

    .line 1182
    div-int p2, v0, p2

    .line 1183
    invoke-static {p1, p2}, Lorg/sqlite/date/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    .line 1185
    iget-boolean v1, p0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->mColon:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x3a

    .line 1186
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const v1, 0xea60

    .line 1189
    div-int/2addr v0, v1

    mul-int/lit8 p2, p2, 0x3c

    sub-int/2addr v0, p2

    .line 1190
    invoke-static {p1, v0}, Lorg/sqlite/date/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
