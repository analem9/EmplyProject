.class public final enum Lorg/sqlite/SQLiteConfig$DatePrecision;
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
    name = "DatePrecision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$DatePrecision;",
        ">;",
        "Lorg/sqlite/SQLiteConfig$PragmaValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$DatePrecision;

.field public static final enum MILLISECONDS:Lorg/sqlite/SQLiteConfig$DatePrecision;

.field public static final enum SECONDS:Lorg/sqlite/SQLiteConfig$DatePrecision;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 824
    new-instance v0, Lorg/sqlite/SQLiteConfig$DatePrecision;

    const/4 v1, 0x0

    const-string v2, "SECONDS"

    invoke-direct {v0, v2, v1}, Lorg/sqlite/SQLiteConfig$DatePrecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$DatePrecision;->SECONDS:Lorg/sqlite/SQLiteConfig$DatePrecision;

    new-instance v0, Lorg/sqlite/SQLiteConfig$DatePrecision;

    const/4 v2, 0x1

    const-string v3, "MILLISECONDS"

    invoke-direct {v0, v3, v2}, Lorg/sqlite/SQLiteConfig$DatePrecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$DatePrecision;->MILLISECONDS:Lorg/sqlite/SQLiteConfig$DatePrecision;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 823
    sget-object v3, Lorg/sqlite/SQLiteConfig$DatePrecision;->SECONDS:Lorg/sqlite/SQLiteConfig$DatePrecision;

    aput-object v3, v0, v1

    sget-object v1, Lorg/sqlite/SQLiteConfig$DatePrecision;->MILLISECONDS:Lorg/sqlite/SQLiteConfig$DatePrecision;

    aput-object v1, v0, v2

    sput-object v0, Lorg/sqlite/SQLiteConfig$DatePrecision;->$VALUES:[Lorg/sqlite/SQLiteConfig$DatePrecision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 823
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getPrecision(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DatePrecision;
    .locals 0

    .line 831
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/sqlite/SQLiteConfig$DatePrecision;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DatePrecision;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DatePrecision;
    .locals 1

    .line 823
    const-class v0, Lorg/sqlite/SQLiteConfig$DatePrecision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/sqlite/SQLiteConfig$DatePrecision;

    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$DatePrecision;
    .locals 1

    .line 823
    sget-object v0, Lorg/sqlite/SQLiteConfig$DatePrecision;->$VALUES:[Lorg/sqlite/SQLiteConfig$DatePrecision;

    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$DatePrecision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sqlite/SQLiteConfig$DatePrecision;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 827
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConfig$DatePrecision;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
