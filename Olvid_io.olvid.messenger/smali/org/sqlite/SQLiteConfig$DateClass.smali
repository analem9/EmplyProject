.class public final enum Lorg/sqlite/SQLiteConfig$DateClass;
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
    name = "DateClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$DateClass;",
        ">;",
        "Lorg/sqlite/SQLiteConfig$PragmaValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$DateClass;

.field public static final enum INTEGER:Lorg/sqlite/SQLiteConfig$DateClass;

.field public static final enum REAL:Lorg/sqlite/SQLiteConfig$DateClass;

.field public static final enum TEXT:Lorg/sqlite/SQLiteConfig$DateClass;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 844
    new-instance v0, Lorg/sqlite/SQLiteConfig$DateClass;

    const/4 v1, 0x0

    const-string v2, "INTEGER"

    invoke-direct {v0, v2, v1}, Lorg/sqlite/SQLiteConfig$DateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$DateClass;->INTEGER:Lorg/sqlite/SQLiteConfig$DateClass;

    new-instance v0, Lorg/sqlite/SQLiteConfig$DateClass;

    const/4 v2, 0x1

    const-string v3, "TEXT"

    invoke-direct {v0, v3, v2}, Lorg/sqlite/SQLiteConfig$DateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$DateClass;->TEXT:Lorg/sqlite/SQLiteConfig$DateClass;

    new-instance v0, Lorg/sqlite/SQLiteConfig$DateClass;

    const/4 v3, 0x2

    const-string v4, "REAL"

    invoke-direct {v0, v4, v3}, Lorg/sqlite/SQLiteConfig$DateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$DateClass;->REAL:Lorg/sqlite/SQLiteConfig$DateClass;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/sqlite/SQLiteConfig$DateClass;

    .line 843
    sget-object v4, Lorg/sqlite/SQLiteConfig$DateClass;->INTEGER:Lorg/sqlite/SQLiteConfig$DateClass;

    aput-object v4, v0, v1

    sget-object v1, Lorg/sqlite/SQLiteConfig$DateClass;->TEXT:Lorg/sqlite/SQLiteConfig$DateClass;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$DateClass;->REAL:Lorg/sqlite/SQLiteConfig$DateClass;

    aput-object v1, v0, v3

    sput-object v0, Lorg/sqlite/SQLiteConfig$DateClass;->$VALUES:[Lorg/sqlite/SQLiteConfig$DateClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 843
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getDateClass(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DateClass;
    .locals 0

    .line 851
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/sqlite/SQLiteConfig$DateClass;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DateClass;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DateClass;
    .locals 1

    .line 843
    const-class v0, Lorg/sqlite/SQLiteConfig$DateClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/sqlite/SQLiteConfig$DateClass;

    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$DateClass;
    .locals 1

    .line 843
    sget-object v0, Lorg/sqlite/SQLiteConfig$DateClass;->$VALUES:[Lorg/sqlite/SQLiteConfig$DateClass;

    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$DateClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sqlite/SQLiteConfig$DateClass;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 847
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConfig$DateClass;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
