.class public final enum Lorg/sqlite/SQLiteConfig$HexKeyMode;
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
    name = "HexKeyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$HexKeyMode;",
        ">;",
        "Lorg/sqlite/SQLiteConfig$PragmaValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$HexKeyMode;

.field public static final enum NONE:Lorg/sqlite/SQLiteConfig$HexKeyMode;

.field public static final enum SQLCIPHER:Lorg/sqlite/SQLiteConfig$HexKeyMode;

.field public static final enum SSE:Lorg/sqlite/SQLiteConfig$HexKeyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 722
    new-instance v0, Lorg/sqlite/SQLiteConfig$HexKeyMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lorg/sqlite/SQLiteConfig$HexKeyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$HexKeyMode;->NONE:Lorg/sqlite/SQLiteConfig$HexKeyMode;

    new-instance v0, Lorg/sqlite/SQLiteConfig$HexKeyMode;

    const/4 v2, 0x1

    const-string v3, "SSE"

    invoke-direct {v0, v3, v2}, Lorg/sqlite/SQLiteConfig$HexKeyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$HexKeyMode;->SSE:Lorg/sqlite/SQLiteConfig$HexKeyMode;

    new-instance v0, Lorg/sqlite/SQLiteConfig$HexKeyMode;

    const/4 v3, 0x2

    const-string v4, "SQLCIPHER"

    invoke-direct {v0, v4, v3}, Lorg/sqlite/SQLiteConfig$HexKeyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$HexKeyMode;->SQLCIPHER:Lorg/sqlite/SQLiteConfig$HexKeyMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/sqlite/SQLiteConfig$HexKeyMode;

    .line 721
    sget-object v4, Lorg/sqlite/SQLiteConfig$HexKeyMode;->NONE:Lorg/sqlite/SQLiteConfig$HexKeyMode;

    aput-object v4, v0, v1

    sget-object v1, Lorg/sqlite/SQLiteConfig$HexKeyMode;->SSE:Lorg/sqlite/SQLiteConfig$HexKeyMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$HexKeyMode;->SQLCIPHER:Lorg/sqlite/SQLiteConfig$HexKeyMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/sqlite/SQLiteConfig$HexKeyMode;->$VALUES:[Lorg/sqlite/SQLiteConfig$HexKeyMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 721
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$HexKeyMode;
    .locals 1

    .line 721
    const-class v0, Lorg/sqlite/SQLiteConfig$HexKeyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/sqlite/SQLiteConfig$HexKeyMode;

    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$HexKeyMode;
    .locals 1

    .line 721
    sget-object v0, Lorg/sqlite/SQLiteConfig$HexKeyMode;->$VALUES:[Lorg/sqlite/SQLiteConfig$HexKeyMode;

    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$HexKeyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sqlite/SQLiteConfig$HexKeyMode;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConfig$HexKeyMode;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
