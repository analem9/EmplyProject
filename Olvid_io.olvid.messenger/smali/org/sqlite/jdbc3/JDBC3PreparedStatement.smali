.class public abstract Lorg/sqlite/jdbc3/JDBC3PreparedStatement;
.super Lorg/sqlite/core/CorePreparedStatement;
.source "JDBC3PreparedStatement.java"


# direct methods
.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;-><init>(Lorg/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void
.end method

.method private readBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-ltz p2, :cond_2

    .line 228
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    sub-int v2, p2, v1

    .line 236
    :try_start_0
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 238
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "End of stream has been reached"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 247
    new-instance p2, Ljava/sql/SQLException;

    const-string v0, "Error reading stream"

    invoke-direct {p2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 250
    throw p2

    :cond_1
    return-object v0

    .line 222
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Error reading stream. Length should be non-negative"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 225
    throw p1
.end method


# virtual methods
.method public addBatch()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->checkOpen()V

    .line 110
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->checkParameters()V

    .line 111
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batchPos:I

    iget v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->paramCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batchPos:I

    .line 112
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batchQueryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batchQueryCount:I

    .line 113
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 114
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->paramCount:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->paramValid:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 117
    :cond_0
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batchPos:I

    iget v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->paramCount:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    iget v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batchPos:I

    iget v2, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->paramCount:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    iget v3, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batchPos:I

    iget v4, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->paramCount:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public addBatch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public clearParameters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->checkOpen()V

    .line 38
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-wide v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->pointer:J

    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->clear_bindings(J)I

    .line 39
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->paramValid:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 40
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 41
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batchPos:I

    :goto_0
    iget v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batchPos:I

    iget v2, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->paramCount:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public execute()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->checkOpen()V

    .line 50
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->close()V

    .line 51
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-wide v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->pointer:J

    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->reset(J)I

    .line 52
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->checkParameters()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    :try_start_0
    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v2

    iget-object v3, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Lorg/sqlite/core/DB;->execute(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->resultsWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    iget v2, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->columnCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-nez v1, :cond_1

    .line 60
    iget-wide v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->pointer:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v1

    iget-wide v2, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->pointer:J

    invoke-virtual {v1, v2, v3}, Lorg/sqlite/core/DB;->reset(J)I

    .line 61
    :cond_1
    throw v0
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 531
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->checkOpen()V

    .line 70
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->columnCount:I

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->close()V

    .line 75
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-wide v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->pointer:J

    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->reset(J)I

    .line 76
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->checkParameters()V

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lorg/sqlite/core/DB;->execute(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->resultsWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 83
    iget-wide v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->pointer:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v1

    iget-wide v2, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->pointer:J

    invoke-virtual {v1, v2, v3}, Lorg/sqlite/core/DB;->reset(J)I

    .line 84
    :cond_0
    throw v0

    .line 71
    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Query does not return results"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 547
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->checkOpen()V

    .line 94
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->columnCount:I

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->close()V

    .line 99
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-wide v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->pointer:J

    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->reset(J)I

    .line 100
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->checkParameters()V

    .line 102
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lorg/sqlite/core/DB;->executeUpdate(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 95
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Query returns results"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->checkOpen()V

    .line 502
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    check-cast v0, Ljava/sql/ResultSetMetaData;

    return-object v0
.end method

.method public getParameterClassName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->checkOpen()V

    const-string p1, "java.lang.String"

    return-object p1
.end method

.method public getParameterCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->checkOpen()V

    .line 139
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->paramCount:I

    return v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 1

    .line 131
    move-object v0, p0

    check-cast v0, Ljava/sql/ParameterMetaData;

    return-object v0
.end method

.method public getParameterMode(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getParameterType(I)I
    .locals 0

    const/16 p1, 0xc

    return p1
.end method

.method public getParameterTypeName(I)Ljava/lang/String;
    .locals 0

    const-string p1, "VARCHAR"

    return-object p1
.end method

.method public getPrecision(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getScale(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getStatement()Ljava/sql/Statement;
    .locals 0

    return-object p0
.end method

.method public isNullable(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isSigned(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setUnicodeStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setBytes(I[B)V

    .line 262
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setBytes(I[B)V

    return-void
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBoolean(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setInt(II)V

    return-void
.end method

.method public setByte(IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 301
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setInt(II)V

    return-void
.end method

.method public setBytes(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 426
    :try_start_0
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [C

    .line 430
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 431
    invoke-virtual {p3, v0, v2, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 438
    new-instance p2, Ljava/sql/SQLException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot read from character stream, exception message: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 446
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    return-void
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 454
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {p2}, Ljava/sql/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setDateByMilliseconds(ILjava/lang/Long;Ljava/util/Calendar;)V

    :goto_0
    return-void
.end method

.method public setDouble(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    return-void
.end method

.method public setInt(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    return-void
.end method

.method public setLong(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    return-void
.end method

.method public setNull(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, p1, p2, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setNull(IILjava/lang/String;)V

    return-void
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 350
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 358
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 360
    :cond_0
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 361
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setDateByMilliseconds(ILjava/lang/Long;Ljava/util/Calendar;)V

    goto :goto_0

    .line 363
    :cond_1
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 366
    :cond_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 367
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 369
    :cond_3
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 370
    new-instance v0, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    move-result p2

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 372
    :cond_4
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 373
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 375
    :cond_5
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 376
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 378
    :cond_6
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 379
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setBoolean(IZ)V

    goto :goto_0

    .line 381
    :cond_7
    instance-of v0, p2, [B

    if-eqz v0, :cond_8

    .line 382
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 384
    :cond_8
    instance-of v0, p2, Ljava/math/BigDecimal;

    if-eqz v0, :cond_9

    .line 385
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_0

    .line 388
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 522
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setShort(IS)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 410
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setInt(II)V

    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->batch(ILjava/lang/Object;)V

    return-void
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 465
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setTime(ILjava/sql/Time;Ljava/util/Calendar;)V

    return-void
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 473
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {p2}, Ljava/sql/Time;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setDateByMilliseconds(ILjava/lang/Long;Ljava/util/Calendar;)V

    :goto_0
    return-void
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 483
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V

    return-void
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 491
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setDateByMilliseconds(ILjava/lang/Long;Ljava/util/Calendar;)V

    :goto_0
    return-void
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setString(ILjava/lang/String;)V

    .line 281
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-direct {v0, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 283
    new-instance p2, Ljava/sql/SQLException;

    const-string p3, "UTF-8 is not supported"

    invoke-direct {p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 286
    throw p2
.end method

.method protected unused()Ljava/sql/SQLException;
    .locals 2

    .line 507
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not implemented by SQLite JDBC driver"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
