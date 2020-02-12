.class public abstract Lorg/sqlite/core/CorePreparedStatement;
.super Lorg/sqlite/jdbc4/JDBC4Statement;
.source "CorePreparedStatement.java"


# instance fields
.field protected batchQueryCount:I

.field protected columnCount:I

.field protected paramCount:I

.field protected paramValid:Ljava/util/BitSet;


# direct methods
.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc4/JDBC4Statement;-><init>(Lorg/sqlite/SQLiteConnection;)V

    .line 45
    iput-object p2, p0, Lorg/sqlite/core/CorePreparedStatement;->sql:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object p1

    .line 47
    invoke-virtual {p1, p0}, Lorg/sqlite/core/DB;->prepare(Lorg/sqlite/core/CoreStatement;)V

    .line 48
    iget-object p2, p0, Lorg/sqlite/core/CorePreparedStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    iget-wide v0, p0, Lorg/sqlite/core/CorePreparedStatement;->pointer:J

    invoke-virtual {p1, v0, v1}, Lorg/sqlite/core/DB;->column_names(J)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 49
    iget-wide v0, p0, Lorg/sqlite/core/CorePreparedStatement;->pointer:J

    invoke-virtual {p1, v0, v1}, Lorg/sqlite/core/DB;->column_count(J)I

    move-result p2

    iput p2, p0, Lorg/sqlite/core/CorePreparedStatement;->columnCount:I

    .line 50
    iget-wide v0, p0, Lorg/sqlite/core/CorePreparedStatement;->pointer:J

    invoke-virtual {p1, v0, v1}, Lorg/sqlite/core/DB;->bind_parameter_count(J)I

    move-result p1

    iput p1, p0, Lorg/sqlite/core/CorePreparedStatement;->paramCount:I

    .line 51
    new-instance p1, Ljava/util/BitSet;

    iget p2, p0, Lorg/sqlite/core/CorePreparedStatement;->paramCount:I

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lorg/sqlite/core/CorePreparedStatement;->paramValid:Ljava/util/BitSet;

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lorg/sqlite/core/CorePreparedStatement;->batchQueryCount:I

    const/4 p2, 0x0

    .line 53
    iput-object p2, p0, Lorg/sqlite/core/CorePreparedStatement;->batch:[Ljava/lang/Object;

    .line 54
    iput p1, p0, Lorg/sqlite/core/CorePreparedStatement;->batchPos:I

    return-void
.end method


# virtual methods
.method protected batch(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lorg/sqlite/core/CorePreparedStatement;->checkOpen()V

    .line 126
    iget-object v0, p0, Lorg/sqlite/core/CorePreparedStatement;->batch:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 127
    iget v0, p0, Lorg/sqlite/core/CorePreparedStatement;->paramCount:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/sqlite/core/CorePreparedStatement;->batch:[Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lorg/sqlite/core/CorePreparedStatement;->paramValid:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CorePreparedStatement;->batch:[Ljava/lang/Object;

    iget v1, p0, Lorg/sqlite/core/CorePreparedStatement;->batchPos:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aput-object p2, v0, v1

    .line 131
    iget-object p2, p0, Lorg/sqlite/core/CorePreparedStatement;->paramValid:Ljava/util/BitSet;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method protected checkParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/sqlite/core/CorePreparedStatement;->paramValid:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    iget v1, p0, Lorg/sqlite/core/CorePreparedStatement;->paramCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Values not bound to statement"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearBatch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 98
    invoke-super {p0}, Lorg/sqlite/jdbc4/JDBC4Statement;->clearBatch()V

    .line 99
    iget-object v0, p0, Lorg/sqlite/core/CorePreparedStatement;->paramValid:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lorg/sqlite/core/CorePreparedStatement;->batchQueryCount:I

    return-void
.end method

.method public executeBatch()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 79
    iget v0, p0, Lorg/sqlite/core/CorePreparedStatement;->batchQueryCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/sqlite/core/CorePreparedStatement;->checkParameters()V

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/sqlite/core/CorePreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v1

    iget-wide v2, p0, Lorg/sqlite/core/CorePreparedStatement;->pointer:J

    iget v4, p0, Lorg/sqlite/core/CorePreparedStatement;->batchQueryCount:I

    iget-object v5, p0, Lorg/sqlite/core/CorePreparedStatement;->batch:[Ljava/lang/Object;

    iget-object v0, p0, Lorg/sqlite/core/CorePreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/sqlite/core/DB;->executeBatch(JI[Ljava/lang/Object;Z)[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {p0}, Lorg/sqlite/core/CorePreparedStatement;->clearBatch()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/sqlite/core/CorePreparedStatement;->clearBatch()V

    .line 90
    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lorg/sqlite/core/CorePreparedStatement;->close()V

    return-void
.end method

.method public getUpdateCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 108
    iget-wide v0, p0, Lorg/sqlite/core/CorePreparedStatement;->pointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lorg/sqlite/core/CorePreparedStatement;->resultsWaiting:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/sqlite/core/CorePreparedStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CorePreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sqlite/core/DB;->changes()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method protected setDateByMilliseconds(ILjava/lang/Long;Ljava/util/Calendar;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/sqlite/core/CorePreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v0

    .line 140
    sget-object v1, Lorg/sqlite/core/CorePreparedStatement$1;->$SwitchMap$org$sqlite$SQLiteConfig$DateClass:[I

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getDateClass()Lorg/sqlite/SQLiteConfig$DateClass;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConfig$DateClass;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 p3, 0x2

    if-eq v1, p3, :cond_0

    .line 151
    new-instance p3, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v3

    div-long/2addr v1, v3

    invoke-direct {p3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, p3}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_0
    new-instance p3, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    const-wide v2, 0x41429ec5c0000000L    # 2440587.5

    add-double/2addr v0, v2

    invoke-direct {p3, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, p3}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getDateStringFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    invoke-static {v0, p3}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/sqlite/date/FastDateFormat;

    move-result-object p3

    new-instance v0, Ljava/sql/Date;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Lorg/sqlite/date/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
