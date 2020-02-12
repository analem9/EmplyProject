.class Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;
.super Lorg/sqlite/date/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/date/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaseInsensitiveTextStrategy"
.end annotation


# instance fields
.field private final field:I

.field private final lKeyValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(ILjava/util/Calendar;Ljava/util/Locale;)V
    .locals 2

    const/4 v0, 0x0

    .line 624
    invoke-direct {p0, v0}, Lorg/sqlite/date/FastDateParser$Strategy;-><init>(Lorg/sqlite/date/FastDateParser$1;)V

    .line 625
    iput p1, p0, Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;->field:I

    .line 626
    iput-object p3, p0, Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;->locale:Ljava/util/Locale;

    .line 627
    invoke-static {p1, p2, p3}, Lorg/sqlite/date/FastDateParser;->access$200(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;

    move-result-object p1

    .line 628
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    .line 630
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 631
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addRegex(Lorg/sqlite/date/FastDateParser;Ljava/lang/StringBuilder;)Z
    .locals 2

    const-string p1, "((?iu)"

    .line 640
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget-object p1, p0, Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 642
    invoke-static {p2, v0, v1}, Lorg/sqlite/date/FastDateParser;->access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/16 v1, 0x29

    invoke-virtual {p2, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    return v0
.end method

.method setCalendar(Lorg/sqlite/date/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 1

    .line 653
    iget-object p1, p0, Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    iget-object v0, p0, Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    .line 655
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " not in ("

    .line 656
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    iget-object p2, p0, Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 658
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/16 p3, 0x29

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 661
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 663
    :cond_1
    iget p3, p0, Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;->field:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method
