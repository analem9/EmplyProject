.class public Lorg/sqlite/SQLiteConnectionConfig;
.super Ljava/lang/Object;
.source "SQLiteConnectionConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final beginCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/sqlite/SQLiteConfig$TransactionMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autoCommit:Z

.field private dateClass:Lorg/sqlite/SQLiteConfig$DateClass;

.field private dateFormat:Lorg/sqlite/date/FastDateFormat;

.field private datePrecision:Lorg/sqlite/SQLiteConfig$DatePrecision;

.field private dateStringFormat:Ljava/lang/String;

.field private transactionIsolation:I

.field private transactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 141
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/sqlite/SQLiteConfig$TransactionMode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/sqlite/SQLiteConnectionConfig;->beginCommandMap:Ljava/util/Map;

    .line 146
    sget-object v0, Lorg/sqlite/SQLiteConnectionConfig;->beginCommandMap:Ljava/util/Map;

    sget-object v1, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    const-string v2, "begin;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/sqlite/SQLiteConnectionConfig;->beginCommandMap:Ljava/util/Map;

    sget-object v1, Lorg/sqlite/SQLiteConfig$TransactionMode;->IMMEDIATE:Lorg/sqlite/SQLiteConfig$TransactionMode;

    const-string v2, "begin immediate;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lorg/sqlite/SQLiteConnectionConfig;->beginCommandMap:Ljava/util/Map;

    sget-object v1, Lorg/sqlite/SQLiteConfig$TransactionMode;->EXCLUSIVE:Lorg/sqlite/SQLiteConfig$TransactionMode;

    const-string v2, "begin exclusive;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/sqlite/SQLiteConfig$DateClass;Lorg/sqlite/SQLiteConfig$DatePrecision;Ljava/lang/String;ILorg/sqlite/SQLiteConfig$TransactionMode;Z)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lorg/sqlite/SQLiteConfig$DateClass;->INTEGER:Lorg/sqlite/SQLiteConfig$DateClass;

    iput-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateClass:Lorg/sqlite/SQLiteConfig$DateClass;

    .line 18
    sget-object v0, Lorg/sqlite/SQLiteConfig$DatePrecision;->MILLISECONDS:Lorg/sqlite/SQLiteConfig$DatePrecision;

    iput-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->datePrecision:Lorg/sqlite/SQLiteConfig$DatePrecision;

    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 19
    iput-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateStringFormat:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateStringFormat:Ljava/lang/String;

    invoke-static {v0}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateFormat:Lorg/sqlite/date/FastDateFormat;

    const/16 v0, 0x8

    .line 22
    iput v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionIsolation:I

    .line 23
    sget-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    iput-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->autoCommit:Z

    .line 46
    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setDateClass(Lorg/sqlite/SQLiteConfig$DateClass;)V

    .line 47
    invoke-virtual {p0, p2}, Lorg/sqlite/SQLiteConnectionConfig;->setDatePrecision(Lorg/sqlite/SQLiteConfig$DatePrecision;)V

    .line 48
    invoke-virtual {p0, p3}, Lorg/sqlite/SQLiteConnectionConfig;->setDateStringFormat(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p4}, Lorg/sqlite/SQLiteConnectionConfig;->setTransactionIsolation(I)V

    .line 50
    invoke-virtual {p0, p5}, Lorg/sqlite/SQLiteConnectionConfig;->setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V

    .line 51
    invoke-virtual {p0, p6}, Lorg/sqlite/SQLiteConnectionConfig;->setAutoCommit(Z)V

    return-void
.end method

.method public static fromPragmaTable(Ljava/util/Properties;)Lorg/sqlite/SQLiteConnectionConfig;
    .locals 8

    .line 27
    new-instance v7, Lorg/sqlite/SQLiteConnectionConfig;

    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_CLASS:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    sget-object v1, Lorg/sqlite/SQLiteConfig$DateClass;->INTEGER:Lorg/sqlite/SQLiteConfig$DateClass;

    .line 28
    invoke-virtual {v1}, Lorg/sqlite/SQLiteConfig$DateClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/sqlite/SQLiteConfig$DateClass;->getDateClass(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DateClass;

    move-result-object v1

    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_PRECISION:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    sget-object v2, Lorg/sqlite/SQLiteConfig$DatePrecision;->MILLISECONDS:Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 29
    invoke-virtual {v2}, Lorg/sqlite/SQLiteConfig$DatePrecision;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/sqlite/SQLiteConfig$DatePrecision;->getPrecision(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DatePrecision;

    move-result-object v2

    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_STRING_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 30
    invoke-virtual {p0, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->TRANSACTION_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    sget-object v4, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 33
    invoke-virtual {v4}, Lorg/sqlite/SQLiteConfig$TransactionMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {p0}, Lorg/sqlite/SQLiteConfig$TransactionMode;->getMode(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TransactionMode;

    move-result-object v5

    const/16 v4, 0x8

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sqlite/SQLiteConnectionConfig;-><init>(Lorg/sqlite/SQLiteConfig$DateClass;Lorg/sqlite/SQLiteConfig$DatePrecision;Ljava/lang/String;ILorg/sqlite/SQLiteConfig$TransactionMode;Z)V

    return-object v7
.end method


# virtual methods
.method public copyConfig()Lorg/sqlite/SQLiteConnectionConfig;
    .locals 8

    .line 55
    new-instance v7, Lorg/sqlite/SQLiteConnectionConfig;

    iget-object v1, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateClass:Lorg/sqlite/SQLiteConfig$DateClass;

    iget-object v2, p0, Lorg/sqlite/SQLiteConnectionConfig;->datePrecision:Lorg/sqlite/SQLiteConfig$DatePrecision;

    iget-object v3, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateStringFormat:Ljava/lang/String;

    iget v4, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionIsolation:I

    iget-object v5, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    iget-boolean v6, p0, Lorg/sqlite/SQLiteConnectionConfig;->autoCommit:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sqlite/SQLiteConnectionConfig;-><init>(Lorg/sqlite/SQLiteConfig$DateClass;Lorg/sqlite/SQLiteConfig$DatePrecision;Ljava/lang/String;ILorg/sqlite/SQLiteConfig$TransactionMode;Z)V

    return-object v7
.end method

.method public getDateClass()Lorg/sqlite/SQLiteConfig$DateClass;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateClass:Lorg/sqlite/SQLiteConfig$DateClass;

    return-object v0
.end method

.method public getDateFormat()Lorg/sqlite/date/FastDateFormat;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateFormat:Lorg/sqlite/date/FastDateFormat;

    return-object v0
.end method

.method public getDateMultiplier()J
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->datePrecision:Lorg/sqlite/SQLiteConfig$DatePrecision;

    sget-object v1, Lorg/sqlite/SQLiteConfig$DatePrecision;->MILLISECONDS:Lorg/sqlite/SQLiteConfig$DatePrecision;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    :goto_0
    return-wide v0
.end method

.method public getDatePrecision()Lorg/sqlite/SQLiteConfig$DatePrecision;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->datePrecision:Lorg/sqlite/SQLiteConfig$DatePrecision;

    return-object v0
.end method

.method public getDateStringFormat()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateStringFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionIsolation()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionIsolation:I

    return v0
.end method

.method public getTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    return-object v0
.end method

.method public isAutoCommit()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->autoCommit:Z

    return v0
.end method

.method public setAutoCommit(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->autoCommit:Z

    return-void
.end method

.method public setDateClass(Lorg/sqlite/SQLiteConfig$DateClass;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateClass:Lorg/sqlite/SQLiteConfig$DateClass;

    return-void
.end method

.method public setDatePrecision(Lorg/sqlite/SQLiteConfig$DatePrecision;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->datePrecision:Lorg/sqlite/SQLiteConfig$DatePrecision;

    return-void
.end method

.method public setDateStringFormat(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateStringFormat:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateFormat:Lorg/sqlite/date/FastDateFormat;

    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 0

    .line 123
    iput p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionIsolation:I

    return-void
.end method

.method public setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V
    .locals 1

    .line 134
    sget-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFFERED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    if-ne p1, v0, :cond_0

    .line 135
    sget-object p1, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 137
    :cond_0
    iput-object p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    return-void
.end method

.method transactionPrefix()Ljava/lang/String;
    .locals 2

    .line 152
    sget-object v0, Lorg/sqlite/SQLiteConnectionConfig;->beginCommandMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
