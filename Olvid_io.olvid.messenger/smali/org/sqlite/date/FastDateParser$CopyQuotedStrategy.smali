.class Lorg/sqlite/date/FastDateParser$CopyQuotedStrategy;
.super Lorg/sqlite/date/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/date/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyQuotedStrategy"
.end annotation


# instance fields
.field private final formatField:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 584
    invoke-direct {p0, v0}, Lorg/sqlite/date/FastDateParser$Strategy;-><init>(Lorg/sqlite/date/FastDateParser$1;)V

    .line 585
    iput-object p1, p0, Lorg/sqlite/date/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addRegex(Lorg/sqlite/date/FastDateParser;Ljava/lang/StringBuilder;)Z
    .locals 1

    .line 605
    iget-object p1, p0, Lorg/sqlite/date/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lorg/sqlite/date/FastDateParser;->access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return p1
.end method

.method isNumber()Z
    .locals 2

    .line 593
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    .line 595
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 597
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method