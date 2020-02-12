.class public final enum Lorg/sqlite/SQLiteConfig$Encoding;
.super Ljava/lang/Enum;
.source "SQLiteConfig.java"

# interfaces
.implements Lorg/sqlite/SQLiteConfig$PragmaValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/SQLiteConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$Encoding;",
        ">;",
        "Lorg/sqlite/SQLiteConfig$PragmaValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF16:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF16_BIG_ENDIAN:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF16_LITTLE_ENDIAN:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF8:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF_16:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF_16BE:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF_16LE:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF_8:Lorg/sqlite/SQLiteConfig$Encoding;


# instance fields
.field public final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 467
    new-instance v0, Lorg/sqlite/SQLiteConfig$Encoding;

    const/4 v1, 0x0

    const-string v2, "UTF8"

    const-string v3, "\'UTF-8\'"

    invoke-direct {v0, v2, v1, v3}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->UTF8:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 468
    new-instance v0, Lorg/sqlite/SQLiteConfig$Encoding;

    const/4 v2, 0x1

    const-string v3, "UTF16"

    const-string v4, "\'UTF-16\'"

    invoke-direct {v0, v3, v2, v4}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->UTF16:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 469
    new-instance v0, Lorg/sqlite/SQLiteConfig$Encoding;

    const/4 v3, 0x2

    const-string v4, "UTF16_LITTLE_ENDIAN"

    const-string v5, "\'UTF-16le\'"

    invoke-direct {v0, v4, v3, v5}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->UTF16_LITTLE_ENDIAN:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 470
    new-instance v0, Lorg/sqlite/SQLiteConfig$Encoding;

    const/4 v4, 0x3

    const-string v5, "UTF16_BIG_ENDIAN"

    const-string v6, "\'UTF-16be\'"

    invoke-direct {v0, v5, v4, v6}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->UTF16_BIG_ENDIAN:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 471
    new-instance v0, Lorg/sqlite/SQLiteConfig$Encoding;

    sget-object v5, Lorg/sqlite/SQLiteConfig$Encoding;->UTF8:Lorg/sqlite/SQLiteConfig$Encoding;

    const/4 v6, 0x4

    const-string v7, "UTF_8"

    invoke-direct {v0, v7, v6, v5}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILorg/sqlite/SQLiteConfig$Encoding;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->UTF_8:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 472
    new-instance v0, Lorg/sqlite/SQLiteConfig$Encoding;

    sget-object v5, Lorg/sqlite/SQLiteConfig$Encoding;->UTF16:Lorg/sqlite/SQLiteConfig$Encoding;

    const/4 v7, 0x5

    const-string v8, "UTF_16"

    invoke-direct {v0, v8, v7, v5}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILorg/sqlite/SQLiteConfig$Encoding;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->UTF_16:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 473
    new-instance v0, Lorg/sqlite/SQLiteConfig$Encoding;

    sget-object v5, Lorg/sqlite/SQLiteConfig$Encoding;->UTF16_LITTLE_ENDIAN:Lorg/sqlite/SQLiteConfig$Encoding;

    const/4 v8, 0x6

    const-string v9, "UTF_16LE"

    invoke-direct {v0, v9, v8, v5}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILorg/sqlite/SQLiteConfig$Encoding;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->UTF_16LE:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 474
    new-instance v0, Lorg/sqlite/SQLiteConfig$Encoding;

    sget-object v5, Lorg/sqlite/SQLiteConfig$Encoding;->UTF16_BIG_ENDIAN:Lorg/sqlite/SQLiteConfig$Encoding;

    const/4 v9, 0x7

    const-string v10, "UTF_16BE"

    invoke-direct {v0, v10, v9, v5}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILorg/sqlite/SQLiteConfig$Encoding;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->UTF_16BE:Lorg/sqlite/SQLiteConfig$Encoding;

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/sqlite/SQLiteConfig$Encoding;

    .line 466
    sget-object v5, Lorg/sqlite/SQLiteConfig$Encoding;->UTF8:Lorg/sqlite/SQLiteConfig$Encoding;

    aput-object v5, v0, v1

    sget-object v1, Lorg/sqlite/SQLiteConfig$Encoding;->UTF16:Lorg/sqlite/SQLiteConfig$Encoding;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Encoding;->UTF16_LITTLE_ENDIAN:Lorg/sqlite/SQLiteConfig$Encoding;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sqlite/SQLiteConfig$Encoding;->UTF16_BIG_ENDIAN:Lorg/sqlite/SQLiteConfig$Encoding;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sqlite/SQLiteConfig$Encoding;->UTF_8:Lorg/sqlite/SQLiteConfig$Encoding;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sqlite/SQLiteConfig$Encoding;->UTF_16:Lorg/sqlite/SQLiteConfig$Encoding;

    aput-object v1, v0, v7

    sget-object v1, Lorg/sqlite/SQLiteConfig$Encoding;->UTF_16LE:Lorg/sqlite/SQLiteConfig$Encoding;

    aput-object v1, v0, v8

    sget-object v1, Lorg/sqlite/SQLiteConfig$Encoding;->UTF_16BE:Lorg/sqlite/SQLiteConfig$Encoding;

    aput-object v1, v0, v9

    sput-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->$VALUES:[Lorg/sqlite/SQLiteConfig$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 478
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 479
    iput-object p3, p0, Lorg/sqlite/SQLiteConfig$Encoding;->typeName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/sqlite/SQLiteConfig$Encoding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sqlite/SQLiteConfig$Encoding;",
            ")V"
        }
    .end annotation

    .line 482
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 483
    invoke-virtual {p3}, Lorg/sqlite/SQLiteConfig$Encoding;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/SQLiteConfig$Encoding;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static getEncoding(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$Encoding;
    .locals 2

    const-string v0, "-"

    const-string v1, "_"

    .line 491
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/sqlite/SQLiteConfig$Encoding;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$Encoding;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$Encoding;
    .locals 1

    .line 466
    const-class v0, Lorg/sqlite/SQLiteConfig$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/sqlite/SQLiteConfig$Encoding;

    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$Encoding;
    .locals 1

    .line 466
    sget-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->$VALUES:[Lorg/sqlite/SQLiteConfig$Encoding;

    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sqlite/SQLiteConfig$Encoding;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 487
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig$Encoding;->typeName:Ljava/lang/String;

    return-object v0
.end method
