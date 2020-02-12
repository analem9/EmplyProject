.class public final enum Lorg/sqlite/SQLiteConfig$JournalMode;
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
    name = "JournalMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$JournalMode;",
        ">;",
        "Lorg/sqlite/SQLiteConfig$PragmaValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$JournalMode;

.field public static final enum DELETE:Lorg/sqlite/SQLiteConfig$JournalMode;

.field public static final enum MEMORY:Lorg/sqlite/SQLiteConfig$JournalMode;

.field public static final enum OFF:Lorg/sqlite/SQLiteConfig$JournalMode;

.field public static final enum PERSIST:Lorg/sqlite/SQLiteConfig$JournalMode;

.field public static final enum TRUNCATE:Lorg/sqlite/SQLiteConfig$JournalMode;

.field public static final enum WAL:Lorg/sqlite/SQLiteConfig$JournalMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 496
    new-instance v0, Lorg/sqlite/SQLiteConfig$JournalMode;

    const/4 v1, 0x0

    const-string v2, "DELETE"

    invoke-direct {v0, v2, v1}, Lorg/sqlite/SQLiteConfig$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$JournalMode;->DELETE:Lorg/sqlite/SQLiteConfig$JournalMode;

    new-instance v0, Lorg/sqlite/SQLiteConfig$JournalMode;

    const/4 v2, 0x1

    const-string v3, "TRUNCATE"

    invoke-direct {v0, v3, v2}, Lorg/sqlite/SQLiteConfig$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$JournalMode;->TRUNCATE:Lorg/sqlite/SQLiteConfig$JournalMode;

    new-instance v0, Lorg/sqlite/SQLiteConfig$JournalMode;

    const/4 v3, 0x2

    const-string v4, "PERSIST"

    invoke-direct {v0, v4, v3}, Lorg/sqlite/SQLiteConfig$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$JournalMode;->PERSIST:Lorg/sqlite/SQLiteConfig$JournalMode;

    new-instance v0, Lorg/sqlite/SQLiteConfig$JournalMode;

    const/4 v4, 0x3

    const-string v5, "MEMORY"

    invoke-direct {v0, v5, v4}, Lorg/sqlite/SQLiteConfig$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$JournalMode;->MEMORY:Lorg/sqlite/SQLiteConfig$JournalMode;

    new-instance v0, Lorg/sqlite/SQLiteConfig$JournalMode;

    const/4 v5, 0x4

    const-string v6, "WAL"

    invoke-direct {v0, v6, v5}, Lorg/sqlite/SQLiteConfig$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$JournalMode;->WAL:Lorg/sqlite/SQLiteConfig$JournalMode;

    new-instance v0, Lorg/sqlite/SQLiteConfig$JournalMode;

    const/4 v6, 0x5

    const-string v7, "OFF"

    invoke-direct {v0, v7, v6}, Lorg/sqlite/SQLiteConfig$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$JournalMode;->OFF:Lorg/sqlite/SQLiteConfig$JournalMode;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/sqlite/SQLiteConfig$JournalMode;

    .line 495
    sget-object v7, Lorg/sqlite/SQLiteConfig$JournalMode;->DELETE:Lorg/sqlite/SQLiteConfig$JournalMode;

    aput-object v7, v0, v1

    sget-object v1, Lorg/sqlite/SQLiteConfig$JournalMode;->TRUNCATE:Lorg/sqlite/SQLiteConfig$JournalMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$JournalMode;->PERSIST:Lorg/sqlite/SQLiteConfig$JournalMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sqlite/SQLiteConfig$JournalMode;->MEMORY:Lorg/sqlite/SQLiteConfig$JournalMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sqlite/SQLiteConfig$JournalMode;->WAL:Lorg/sqlite/SQLiteConfig$JournalMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sqlite/SQLiteConfig$JournalMode;->OFF:Lorg/sqlite/SQLiteConfig$JournalMode;

    aput-object v1, v0, v6

    sput-object v0, Lorg/sqlite/SQLiteConfig$JournalMode;->$VALUES:[Lorg/sqlite/SQLiteConfig$JournalMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 495
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$JournalMode;
    .locals 1

    .line 495
    const-class v0, Lorg/sqlite/SQLiteConfig$JournalMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/sqlite/SQLiteConfig$JournalMode;

    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$JournalMode;
    .locals 1

    .line 495
    sget-object v0, Lorg/sqlite/SQLiteConfig$JournalMode;->$VALUES:[Lorg/sqlite/SQLiteConfig$JournalMode;

    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$JournalMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sqlite/SQLiteConfig$JournalMode;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConfig$JournalMode;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
