.class public final enum Lorg/sqlite/SQLiteOpenMode;
.super Ljava/lang/Enum;
.source "SQLiteOpenMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteOpenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteOpenMode;

.field public static final enum CREATE:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum DELETEONCLOSE:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum EXCLUSIVE:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum FULLMUTEX:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum MAIN_DB:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum MAIN_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum MASTER_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum NOMUTEX:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum OPEN_MEMORY:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum OPEN_URI:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum PRIVATECACHE:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum READONLY:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum READWRITE:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum SHAREDCACHE:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum SUBJOURNAL:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum TEMP_DB:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum TEMP_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum TRANSIENT_DB:Lorg/sqlite/SQLiteOpenMode;


# instance fields
.field public final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 36
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "READONLY"

    invoke-direct {v0, v3, v1, v2}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->READONLY:Lorg/sqlite/SQLiteOpenMode;

    .line 37
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/4 v3, 0x2

    const-string v4, "READWRITE"

    invoke-direct {v0, v4, v2, v3}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->READWRITE:Lorg/sqlite/SQLiteOpenMode;

    .line 38
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/4 v4, 0x4

    const-string v5, "CREATE"

    invoke-direct {v0, v5, v3, v4}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->CREATE:Lorg/sqlite/SQLiteOpenMode;

    .line 39
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/4 v5, 0x3

    const/16 v6, 0x8

    const-string v7, "DELETEONCLOSE"

    invoke-direct {v0, v7, v5, v6}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->DELETEONCLOSE:Lorg/sqlite/SQLiteOpenMode;

    .line 40
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/16 v7, 0x10

    const-string v8, "EXCLUSIVE"

    invoke-direct {v0, v8, v4, v7}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->EXCLUSIVE:Lorg/sqlite/SQLiteOpenMode;

    .line 41
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/4 v8, 0x5

    const-string v9, "OPEN_URI"

    const/16 v10, 0x40

    invoke-direct {v0, v9, v8, v10}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->OPEN_URI:Lorg/sqlite/SQLiteOpenMode;

    .line 42
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/4 v9, 0x6

    const-string v10, "OPEN_MEMORY"

    const/16 v11, 0x80

    invoke-direct {v0, v10, v9, v11}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->OPEN_MEMORY:Lorg/sqlite/SQLiteOpenMode;

    .line 43
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/4 v10, 0x7

    const-string v11, "MAIN_DB"

    const/16 v12, 0x100

    invoke-direct {v0, v11, v10, v12}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->MAIN_DB:Lorg/sqlite/SQLiteOpenMode;

    .line 44
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const-string v11, "TEMP_DB"

    const/16 v12, 0x200

    invoke-direct {v0, v11, v6, v12}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->TEMP_DB:Lorg/sqlite/SQLiteOpenMode;

    .line 45
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/16 v11, 0x9

    const-string v12, "TRANSIENT_DB"

    const/16 v13, 0x400

    invoke-direct {v0, v12, v11, v13}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->TRANSIENT_DB:Lorg/sqlite/SQLiteOpenMode;

    .line 46
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/16 v12, 0xa

    const-string v13, "MAIN_JOURNAL"

    const/16 v14, 0x800

    invoke-direct {v0, v13, v12, v14}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->MAIN_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

    .line 47
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/16 v13, 0xb

    const-string v14, "TEMP_JOURNAL"

    const/16 v15, 0x1000

    invoke-direct {v0, v14, v13, v15}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->TEMP_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

    .line 48
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/16 v14, 0xc

    const-string v15, "SUBJOURNAL"

    const/16 v13, 0x2000

    invoke-direct {v0, v15, v14, v13}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->SUBJOURNAL:Lorg/sqlite/SQLiteOpenMode;

    .line 49
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const/16 v13, 0xd

    const-string v15, "MASTER_JOURNAL"

    const/16 v14, 0x4000

    invoke-direct {v0, v15, v13, v14}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->MASTER_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

    .line 50
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const-string v14, "NOMUTEX"

    const/16 v15, 0xe

    const v13, 0x8000

    invoke-direct {v0, v14, v15, v13}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->NOMUTEX:Lorg/sqlite/SQLiteOpenMode;

    .line 51
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const-string v13, "FULLMUTEX"

    const/16 v14, 0xf

    const/high16 v15, 0x10000

    invoke-direct {v0, v13, v14, v15}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->FULLMUTEX:Lorg/sqlite/SQLiteOpenMode;

    .line 52
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const-string v13, "SHAREDCACHE"

    const/high16 v14, 0x20000

    invoke-direct {v0, v13, v7, v14}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->SHAREDCACHE:Lorg/sqlite/SQLiteOpenMode;

    .line 53
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    const-string v13, "PRIVATECACHE"

    const/16 v14, 0x11

    const/high16 v15, 0x40000

    invoke-direct {v0, v13, v14, v15}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->PRIVATECACHE:Lorg/sqlite/SQLiteOpenMode;

    const/16 v0, 0x12

    new-array v0, v0, [Lorg/sqlite/SQLiteOpenMode;

    .line 35
    sget-object v13, Lorg/sqlite/SQLiteOpenMode;->READONLY:Lorg/sqlite/SQLiteOpenMode;

    aput-object v13, v0, v1

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->READWRITE:Lorg/sqlite/SQLiteOpenMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->CREATE:Lorg/sqlite/SQLiteOpenMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->DELETEONCLOSE:Lorg/sqlite/SQLiteOpenMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->EXCLUSIVE:Lorg/sqlite/SQLiteOpenMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->OPEN_URI:Lorg/sqlite/SQLiteOpenMode;

    aput-object v1, v0, v8

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->OPEN_MEMORY:Lorg/sqlite/SQLiteOpenMode;

    aput-object v1, v0, v9

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->MAIN_DB:Lorg/sqlite/SQLiteOpenMode;

    aput-object v1, v0, v10

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->TEMP_DB:Lorg/sqlite/SQLiteOpenMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->TRANSIENT_DB:Lorg/sqlite/SQLiteOpenMode;

    aput-object v1, v0, v11

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->MAIN_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

    aput-object v1, v0, v12

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->TEMP_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->SUBJOURNAL:Lorg/sqlite/SQLiteOpenMode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->MASTER_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->NOMUTEX:Lorg/sqlite/SQLiteOpenMode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->FULLMUTEX:Lorg/sqlite/SQLiteOpenMode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->SHAREDCACHE:Lorg/sqlite/SQLiteOpenMode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->PRIVATECACHE:Lorg/sqlite/SQLiteOpenMode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->$VALUES:[Lorg/sqlite/SQLiteOpenMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lorg/sqlite/SQLiteOpenMode;->flag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteOpenMode;
    .locals 1

    .line 35
    const-class v0, Lorg/sqlite/SQLiteOpenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/sqlite/SQLiteOpenMode;

    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteOpenMode;
    .locals 1

    .line 35
    sget-object v0, Lorg/sqlite/SQLiteOpenMode;->$VALUES:[Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {v0}, [Lorg/sqlite/SQLiteOpenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sqlite/SQLiteOpenMode;

    return-object v0
.end method
