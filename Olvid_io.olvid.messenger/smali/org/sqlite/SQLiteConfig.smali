.class public Lorg/sqlite/SQLiteConfig;
.super Ljava/lang/Object;
.source "SQLiteConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/SQLiteConfig$DateClass;,
        Lorg/sqlite/SQLiteConfig$DatePrecision;,
        Lorg/sqlite/SQLiteConfig$TransactionMode;,
        Lorg/sqlite/SQLiteConfig$HexKeyMode;,
        Lorg/sqlite/SQLiteConfig$TempStore;,
        Lorg/sqlite/SQLiteConfig$SynchronousMode;,
        Lorg/sqlite/SQLiteConfig$LockingMode;,
        Lorg/sqlite/SQLiteConfig$JournalMode;,
        Lorg/sqlite/SQLiteConfig$Encoding;,
        Lorg/sqlite/SQLiteConfig$PragmaValue;,
        Lorg/sqlite/SQLiteConfig$Pragma;
    }
.end annotation


# static fields
.field public static final DEFAULT_DATE_STRING_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSS"

.field private static final OnOff:[Ljava/lang/String;

.field static final pragmaSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final busyTimeout:I

.field private final defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

.field private openModeFlag:I

.field private final pragmaTable:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "true"

    const-string v1, "false"

    .line 259
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/sqlite/SQLiteConfig;->OnOff:[Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lorg/sqlite/SQLiteConfig;->pragmaSet:Ljava/util/Set;

    .line 264
    invoke-static {}, Lorg/sqlite/SQLiteConfig$Pragma;->values()[Lorg/sqlite/SQLiteConfig$Pragma;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 265
    sget-object v4, Lorg/sqlite/SQLiteConfig;->pragmaSet:Ljava/util/Set;

    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, v0}, Lorg/sqlite/SQLiteConfig;-><init>(Ljava/util/Properties;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    .line 72
    iput-object p1, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 74
    iget-object p1, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->OPEN_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    goto :goto_0

    .line 80
    :cond_0
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->READWRITE:Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 81
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->CREATE:Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 84
    :goto_0
    iget-object p1, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->setSharedCache(Z)V

    .line 86
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->OPEN_URI:Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 88
    iget-object p1, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->BUSY_TIMEOUT:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    const-string v1, "3000"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/sqlite/SQLiteConfig;->busyTimeout:I

    .line 89
    iget-object p1, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    invoke-static {p1}, Lorg/sqlite/SQLiteConnectionConfig;->fromPragmaTable(Ljava/util/Properties;)Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lorg/sqlite/SQLiteConfig;->OnOff:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;
    .locals 0

    .line 47
    invoke-static {p0}, Lorg/sqlite/SQLiteConfig;->toStringArray([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBoolean(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    iget-object p1, p1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static getDriverPropertyInfo()[Ljava/sql/DriverPropertyInfo;
    .locals 10

    .line 245
    invoke-static {}, Lorg/sqlite/SQLiteConfig$Pragma;->values()[Lorg/sqlite/SQLiteConfig$Pragma;

    move-result-object v0

    .line 246
    array-length v0, v0

    new-array v0, v0, [Ljava/sql/DriverPropertyInfo;

    .line 248
    invoke-static {}, Lorg/sqlite/SQLiteConfig$Pragma;->values()[Lorg/sqlite/SQLiteConfig$Pragma;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 249
    new-instance v7, Ljava/sql/DriverPropertyInfo;

    iget-object v8, v6, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v8, v6, Lorg/sqlite/SQLiteConfig$Pragma;->choices:[Ljava/lang/String;

    iput-object v8, v7, Ljava/sql/DriverPropertyInfo;->choices:[Ljava/lang/String;

    .line 251
    iget-object v6, v6, Lorg/sqlite/SQLiteConfig$Pragma;->description:Ljava/lang/String;

    iput-object v6, v7, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 252
    iput-boolean v3, v7, Ljava/sql/DriverPropertyInfo;->required:Z

    add-int/lit8 v6, v5, 0x1

    .line 253
    aput-object v7, v0, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private set(Lorg/sqlite/SQLiteConfig$Pragma;I)V
    .locals 0

    .line 181
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    return-void
.end method

.method private set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V
    .locals 0

    .line 172
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    return-void
.end method

.method private static toStringArray([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;
    .locals 3

    .line 459
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 460
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 461
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/sqlite/SQLiteConfig$PragmaValue;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public apply(Ljava/sql/Connection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 114
    invoke-static {}, Lorg/sqlite/SQLiteConfig$Pragma;->values()[Lorg/sqlite/SQLiteConfig$Pragma;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 115
    iget-object v5, v5, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    :cond_0
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->OPEN_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 119
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->LOAD_EXTENSION:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 121
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_PRECISION:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_CLASS:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_STRING_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->PASSWORD:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->HEXKEY_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    .line 129
    :try_start_0
    iget-object v1, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    sget-object v2, Lorg/sqlite/SQLiteConfig$Pragma;->PASSWORD:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v2, v2, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    sget-object v4, Lorg/sqlite/SQLiteConfig$Pragma;->PASSWORD:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v4, v4, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 132
    iget-object v4, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    sget-object v5, Lorg/sqlite/SQLiteConfig$Pragma;->HEXKEY_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v5, v5, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    sget-object v5, Lorg/sqlite/SQLiteConfig$HexKeyMode;->SSE:Lorg/sqlite/SQLiteConfig$HexKeyMode;

    invoke-virtual {v5}, Lorg/sqlite/SQLiteConfig$HexKeyMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "pragma hexkey = \'%s\'"

    goto :goto_1

    .line 136
    :cond_1
    sget-object v5, Lorg/sqlite/SQLiteConfig$HexKeyMode;->SQLCIPHER:Lorg/sqlite/SQLiteConfig$HexKeyMode;

    invoke-virtual {v5}, Lorg/sqlite/SQLiteConfig$HexKeyMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "pragma key = \"x\'%s\'\""

    goto :goto_1

    :cond_2
    const-string v4, "pragma key = \'%s\'"

    :goto_1
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "\'"

    const-string v7, "\'\'"

    .line 141
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "select 1 from sqlite_master"

    .line 142
    invoke-interface {p1, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 146
    :cond_3
    iget-object v1, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 147
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 152
    :cond_5
    iget-object v5, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    invoke-virtual {v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "pragma %s=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v3

    aput-object v5, v7, v2

    .line 154
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 160
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    .line 162
    :cond_8
    throw v0
.end method

.method public createConnection(Ljava/lang/String;)Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConfig;->toProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/sqlite/JDBC;->createConnection(Ljava/lang/String;Ljava/util/Properties;)Lorg/sqlite/SQLiteConnection;

    move-result-object p1

    return-object p1
.end method

.method public enableCaseSensitiveLike(Z)V
    .locals 1

    .line 408
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->CASE_SENSITIVE_LIKE:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method

.method public enableCountChanges(Z)V
    .locals 1

    .line 419
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->COUNT_CHANGES:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method

.method public enableEmptyResultCallBacks(Z)V
    .locals 1

    .line 441
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->EMPTY_RESULT_CALLBACKS:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method

.method public enableFullColumnNames(Z)V
    .locals 1

    .line 532
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->FULL_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method

.method public enableFullSync(Z)V
    .locals 1

    .line 544
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->FULL_SYNC:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method

.method public enableLoadExtension(Z)V
    .locals 1

    .line 372
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LOAD_EXTENSION:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method

.method public enableRecursiveTriggers(Z)V
    .locals 1

    .line 651
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->RECURSIVE_TRIGGERS:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method

.method public enableReverseUnorderedSelects(Z)V
    .locals 1

    .line 663
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->REVERSE_UNORDERED_SELECTS:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method

.method public enableShortColumnNames(Z)V
    .locals 1

    .line 673
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SHORT_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method

.method public enforceForeignKeys(Z)V
    .locals 1

    .line 520
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->FOREIGN_KEYS:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method

.method public getBusyTimeout()I
    .locals 1

    .line 878
    iget v0, p0, Lorg/sqlite/SQLiteConfig;->busyTimeout:I

    return v0
.end method

.method public getOpenModeFlags()I
    .locals 1

    .line 214
    iget v0, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    return v0
.end method

.method public getTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;
    .locals 1

    .line 820
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;

    move-result-object v0

    return-object v0
.end method

.method public incrementalVacuum(I)V
    .locals 1

    .line 555
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->INCREMENTAL_VACUUM:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    return-void
.end method

.method public isEnabledLoadExtension()Z
    .locals 2

    .line 207
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LOAD_EXTENSION:Lorg/sqlite/SQLiteConfig$Pragma;

    const-string v1, "false"

    invoke-direct {p0, v0, v1}, Lorg/sqlite/SQLiteConfig;->getBoolean(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabledSharedCache()Z
    .locals 2

    .line 199
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

    const-string v1, "false"

    invoke-direct {p0, v0, v1}, Lorg/sqlite/SQLiteConfig;->getBoolean(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->copyConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public resetOpenMode(Lorg/sqlite/SQLiteOpenMode;)V
    .locals 1

    .line 353
    iget v0, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    iget p1, p1, Lorg/sqlite/SQLiteOpenMode;->flag:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    return-void
.end method

.method public setApplicationId(I)V
    .locals 1

    .line 776
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->APPLICATION_ID:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    return-void
.end method

.method public setBusyTimeout(I)V
    .locals 1

    .line 874
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->BUSY_TIMEOUT:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    return-void
.end method

.method public setCacheSize(I)V
    .locals 1

    .line 399
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    return-void
.end method

.method public setDateClass(Ljava/lang/String;)V
    .locals 1

    .line 859
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$DateClass;->getDateClass(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DateClass;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setDateClass(Lorg/sqlite/SQLiteConfig$DateClass;)V

    return-void
.end method

.method public setDatePrecision(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$DatePrecision;->getPrecision(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DatePrecision;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setDatePrecision(Lorg/sqlite/SQLiteConfig$DatePrecision;)V

    return-void
.end method

.method public setDateStringFormat(Ljava/lang/String;)V
    .locals 1

    .line 867
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setDateStringFormat(Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultCacheSize(I)V
    .locals 1

    .line 430
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DEFAULT_CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    return-void
.end method

.method public setEncoding(Lorg/sqlite/SQLiteConfig$Encoding;)V
    .locals 1

    .line 509
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->ENCODING:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object p1, p1, Lorg/sqlite/SQLiteConfig$Encoding;->typeName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    return-void
.end method

.method public setHexKeyMode(Lorg/sqlite/SQLiteConfig$HexKeyMode;)V
    .locals 1

    .line 718
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->HEXKEY_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig$HexKeyMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    return-void
.end method

.method public setJounalSizeLimit(I)V
    .locals 1

    .line 580
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->JOURNAL_SIZE_LIMIT:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    return-void
.end method

.method public setJournalMode(Lorg/sqlite/SQLiteConfig$JournalMode;)V
    .locals 1

    .line 565
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->JOURNAL_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig$JournalMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    return-void
.end method

.method public setLockingMode(Lorg/sqlite/SQLiteConfig$LockingMode;)V
    .locals 1

    .line 609
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LOCKING_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig$LockingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    return-void
.end method

.method public setMaxPageCount(I)V
    .locals 1

    .line 632
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->MAX_PAGE_COUNT:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    return-void
.end method

.method public setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V
    .locals 1

    .line 344
    iget v0, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    iget p1, p1, Lorg/sqlite/SQLiteOpenMode;->flag:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    .line 623
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->PAGE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    return-void
.end method

.method public setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    iget-object p1, p1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 381
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->READONLY:Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 382
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->CREATE:Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->resetOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 383
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->READWRITE:Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->resetOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    goto :goto_0

    .line 386
    :cond_0
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->READWRITE:Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 387
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->CREATE:Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 388
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->READONLY:Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->resetOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    :goto_0
    return-void
.end method

.method public setReadUncommited(Z)V
    .locals 1

    .line 642
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->READ_UNCOMMITED:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method

.method public setSharedCache(Z)V
    .locals 1

    .line 363
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method

.method public setSynchronous(Lorg/sqlite/SQLiteConfig$SynchronousMode;)V
    .locals 1

    .line 698
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SYNCHRONOUS:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig$SynchronousMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    return-void
.end method

.method public setTempStore(Lorg/sqlite/SQLiteConfig$TempStore;)V
    .locals 1

    .line 742
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->TEMP_STORE:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig$TempStore;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    return-void
.end method

.method public setTempStoreDirectory(Ljava/lang/String;)V
    .locals 3

    .line 752
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->TEMP_STORE_DIRECTORY:Lorg/sqlite/SQLiteConfig$Pragma;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "\'%s\'"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    return-void
.end method

.method public setTransactionMode(Ljava/lang/String;)V
    .locals 0

    .line 813
    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$TransactionMode;->getMode(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TransactionMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V

    return-void
.end method

.method public setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V
    .locals 1

    .line 804
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V

    return-void
.end method

.method public setUserVersion(I)V
    .locals 1

    .line 763
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->USER_VERSION:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    return-void
.end method

.method public toProperties()Ljava/util/Properties;
    .locals 3

    .line 232
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->OPEN_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    iget v2, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->TRANSACTION_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    iget-object v2, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnectionConfig;->getTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConfig$TransactionMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_CLASS:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    iget-object v2, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnectionConfig;->getDateClass()Lorg/sqlite/SQLiteConfig$DateClass;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConfig$DateClass;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_PRECISION:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    iget-object v2, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnectionConfig;->getDatePrecision()Lorg/sqlite/SQLiteConfig$DatePrecision;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConfig$DatePrecision;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_STRING_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    iget-object v2, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnectionConfig;->getDateStringFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    return-object v0
.end method

.method public useLegacyFileFormat(Z)V
    .locals 1

    .line 593
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LEGACY_FILE_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    return-void
.end method
