.class public final enum Lorg/sqlite/SQLiteConfig$LockingMode;
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
    name = "LockingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$LockingMode;",
        ">;",
        "Lorg/sqlite/SQLiteConfig$PragmaValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$LockingMode;

.field public static final enum EXCLUSIVE:Lorg/sqlite/SQLiteConfig$LockingMode;

.field public static final enum NORMAL:Lorg/sqlite/SQLiteConfig$LockingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 597
    new-instance v0, Lorg/sqlite/SQLiteConfig$LockingMode;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lorg/sqlite/SQLiteConfig$LockingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$LockingMode;->NORMAL:Lorg/sqlite/SQLiteConfig$LockingMode;

    new-instance v0, Lorg/sqlite/SQLiteConfig$LockingMode;

    const/4 v2, 0x1

    const-string v3, "EXCLUSIVE"

    invoke-direct {v0, v3, v2}, Lorg/sqlite/SQLiteConfig$LockingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$LockingMode;->EXCLUSIVE:Lorg/sqlite/SQLiteConfig$LockingMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/sqlite/SQLiteConfig$LockingMode;

    .line 596
    sget-object v3, Lorg/sqlite/SQLiteConfig$LockingMode;->NORMAL:Lorg/sqlite/SQLiteConfig$LockingMode;

    aput-object v3, v0, v1

    sget-object v1, Lorg/sqlite/SQLiteConfig$LockingMode;->EXCLUSIVE:Lorg/sqlite/SQLiteConfig$LockingMode;

    aput-object v1, v0, v2

    sput-object v0, Lorg/sqlite/SQLiteConfig$LockingMode;->$VALUES:[Lorg/sqlite/SQLiteConfig$LockingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 596
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$LockingMode;
    .locals 1

    .line 596
    const-class v0, Lorg/sqlite/SQLiteConfig$LockingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/sqlite/SQLiteConfig$LockingMode;

    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$LockingMode;
    .locals 1

    .line 596
    sget-object v0, Lorg/sqlite/SQLiteConfig$LockingMode;->$VALUES:[Lorg/sqlite/SQLiteConfig$LockingMode;

    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$LockingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sqlite/SQLiteConfig$LockingMode;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConfig$LockingMode;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
