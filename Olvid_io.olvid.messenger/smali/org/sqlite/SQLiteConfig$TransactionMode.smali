.class public final enum Lorg/sqlite/SQLiteConfig$TransactionMode;
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
    name = "TransactionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$TransactionMode;",
        ">;",
        "Lorg/sqlite/SQLiteConfig$PragmaValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$TransactionMode;

.field public static final enum DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

.field public static final enum DEFFERED:Lorg/sqlite/SQLiteConfig$TransactionMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum EXCLUSIVE:Lorg/sqlite/SQLiteConfig$TransactionMode;

.field public static final enum IMMEDIATE:Lorg/sqlite/SQLiteConfig$TransactionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 783
    new-instance v0, Lorg/sqlite/SQLiteConfig$TransactionMode;

    const/4 v1, 0x0

    const-string v2, "DEFFERED"

    invoke-direct {v0, v2, v1}, Lorg/sqlite/SQLiteConfig$TransactionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFFERED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 784
    new-instance v0, Lorg/sqlite/SQLiteConfig$TransactionMode;

    const/4 v2, 0x1

    const-string v3, "DEFERRED"

    invoke-direct {v0, v3, v2}, Lorg/sqlite/SQLiteConfig$TransactionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    new-instance v0, Lorg/sqlite/SQLiteConfig$TransactionMode;

    const/4 v3, 0x2

    const-string v4, "IMMEDIATE"

    invoke-direct {v0, v4, v3}, Lorg/sqlite/SQLiteConfig$TransactionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->IMMEDIATE:Lorg/sqlite/SQLiteConfig$TransactionMode;

    new-instance v0, Lorg/sqlite/SQLiteConfig$TransactionMode;

    const/4 v4, 0x3

    const-string v5, "EXCLUSIVE"

    invoke-direct {v0, v5, v4}, Lorg/sqlite/SQLiteConfig$TransactionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->EXCLUSIVE:Lorg/sqlite/SQLiteConfig$TransactionMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 779
    sget-object v5, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFFERED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    aput-object v5, v0, v1

    sget-object v1, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$TransactionMode;->IMMEDIATE:Lorg/sqlite/SQLiteConfig$TransactionMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sqlite/SQLiteConfig$TransactionMode;->EXCLUSIVE:Lorg/sqlite/SQLiteConfig$TransactionMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->$VALUES:[Lorg/sqlite/SQLiteConfig$TransactionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 779
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getMode(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TransactionMode;
    .locals 1

    const-string v0, "DEFFERED"

    .line 791
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    sget-object p0, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    return-object p0

    .line 794
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/sqlite/SQLiteConfig$TransactionMode;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TransactionMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TransactionMode;
    .locals 1

    .line 779
    const-class v0, Lorg/sqlite/SQLiteConfig$TransactionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/sqlite/SQLiteConfig$TransactionMode;

    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$TransactionMode;
    .locals 1

    .line 779
    sget-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->$VALUES:[Lorg/sqlite/SQLiteConfig$TransactionMode;

    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$TransactionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sqlite/SQLiteConfig$TransactionMode;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 787
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConfig$TransactionMode;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
