.class final Lorg/sqlite/date/FastDateParser$2;
.super Lorg/sqlite/date/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/date/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 892
    invoke-direct {p0, p1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method
