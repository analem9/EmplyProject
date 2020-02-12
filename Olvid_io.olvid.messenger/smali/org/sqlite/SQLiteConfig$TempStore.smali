.class public final enum Lorg/sqlite/SQLiteConfig$TempStore;
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
    name = "TempStore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$TempStore;",
        ">;",
        "Lorg/sqlite/SQLiteConfig$PragmaValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$TempStore;

.field public static final enum DEFAULT:Lorg/sqlite/SQLiteConfig$TempStore;

.field public static final enum FILE:Lorg/sqlite/SQLiteConfig$TempStore;

.field public static final enum MEMORY:Lorg/sqlite/SQLiteConfig$TempStore;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 702
    new-instance v0, Lorg/sqlite/SQLiteConfig$TempStore;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lorg/sqlite/SQLiteConfig$TempStore;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$TempStore;->DEFAULT:Lorg/sqlite/SQLiteConfig$TempStore;

    new-instance v0, Lorg/sqlite/SQLiteConfig$TempStore;

    const/4 v2, 0x1

    const-string v3, "FILE"

    invoke-direct {v0, v3, v2}, Lorg/sqlite/SQLiteConfig$TempStore;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$TempStore;->FILE:Lorg/sqlite/SQLiteConfig$TempStore;

    new-instance v0, Lorg/sqlite/SQLiteConfig$TempStore;

    const/4 v3, 0x2

    const-string v4, "MEMORY"

    invoke-direct {v0, v4, v3}, Lorg/sqlite/SQLiteConfig$TempStore;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$TempStore;->MEMORY:Lorg/sqlite/SQLiteConfig$TempStore;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/sqlite/SQLiteConfig$TempStore;

    .line 701
    sget-object v4, Lorg/sqlite/SQLiteConfig$TempStore;->DEFAULT:Lorg/sqlite/SQLiteConfig$TempStore;

    aput-object v4, v0, v1

    sget-object v1, Lorg/sqlite/SQLiteConfig$TempStore;->FILE:Lorg/sqlite/SQLiteConfig$TempStore;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$TempStore;->MEMORY:Lorg/sqlite/SQLiteConfig$TempStore;

    aput-object v1, v0, v3

    sput-object v0, Lorg/sqlite/SQLiteConfig$TempStore;->$VALUES:[Lorg/sqlite/SQLiteConfig$TempStore;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 701
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TempStore;
    .locals 1

    .line 701
    const-class v0, Lorg/sqlite/SQLiteConfig$TempStore;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/sqlite/SQLiteConfig$TempStore;

    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$TempStore;
    .locals 1

    .line 701
    sget-object v0, Lorg/sqlite/SQLiteConfig$TempStore;->$VALUES:[Lorg/sqlite/SQLiteConfig$TempStore;

    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$TempStore;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sqlite/SQLiteConfig$TempStore;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 705
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConfig$TempStore;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
