.class public abstract Lorg/sqlite/jdbc3/JDBC3Statement;
.super Lorg/sqlite/core/CoreStatement;
.source "JDBC3Statement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/jdbc3/JDBC3Statement$BackupObserver;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lorg/sqlite/core/CoreStatement;-><init>(Lorg/sqlite/SQLiteConnection;)V

    return-void
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->internalClose()V

    .line 166
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batch:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batchPos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batch:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    :cond_0
    const/16 v0, 0xa

    .line 167
    iget v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batchPos:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batch:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batch:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batch:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    :cond_1
    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batch:[Ljava/lang/Object;

    .line 172
    :cond_2
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batch:[Ljava/lang/Object;

    iget v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batchPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batchPos:I

    aput-object p1, v0, v1

    return-void
.end method

.method public cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sqlite/core/DB;->interrupt()V

    return-void
.end method

.method public clearBatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batchPos:I

    .line 180
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batch:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 181
    :goto_0
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batch:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 182
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batch:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearWarnings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->internalClose()V

    return-void
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->internalClose()V

    .line 43
    invoke-static {p1}, Lorg/sqlite/ExtendedCommand;->parse(Ljava/lang/String;)Lorg/sqlite/ExtendedCommand$SQLExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/sqlite/ExtendedCommand$SQLExtension;->execute(Lorg/sqlite/core/DB;)V

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->sql:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/sqlite/core/DB;->prepare(Lorg/sqlite/core/CoreStatement;)V

    .line 53
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->exec()Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeBatch()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->internalClose()V

    .line 191
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batch:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batchPos:I

    if-nez v0, :cond_0

    goto :goto_2

    .line 194
    :cond_0
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batchPos:I

    new-array v0, v0, [I

    .line 195
    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v2

    .line 196
    monitor-enter v2

    .line 198
    :goto_0
    :try_start_0
    array-length v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v1, v3, :cond_1

    .line 200
    :try_start_1
    iget-object v3, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->batch:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->sql:Ljava/lang/String;

    .line 201
    invoke-virtual {v2, p0}, Lorg/sqlite/core/DB;->prepare(Lorg/sqlite/core/CoreStatement;)V

    const/4 v3, 0x0

    .line 202
    invoke-virtual {v2, p0, v3}, Lorg/sqlite/core/DB;->executeUpdate(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)I

    move-result v3

    aput v3, v0, v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :try_start_2
    invoke-virtual {v2, p0}, Lorg/sqlite/core/DB;->finalize(Lorg/sqlite/core/CoreStatement;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 205
    :try_start_3
    new-instance v4, Ljava/sql/BatchUpdateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batch entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;[I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    :goto_1
    :try_start_4
    invoke-virtual {v2, p0}, Lorg/sqlite/core/DB;->finalize(Lorg/sqlite/core/CoreStatement;)I

    .line 209
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 213
    :cond_1
    :try_start_5
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->clearBatch()V

    .line 215
    monitor-exit v2

    return-object v0

    :catchall_1
    move-exception v0

    .line 213
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->clearBatch()V

    .line 214
    throw v0

    :catchall_2
    move-exception v0

    .line 215
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_2
    :goto_2
    new-array v0, v1, [I

    return-object v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->internalClose()V

    .line 71
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->sql:Ljava/lang/String;

    .line 73
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/sqlite/core/DB;->prepare(Lorg/sqlite/core/CoreStatement;)V

    .line 75
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->exec()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->internalClose()V

    .line 77
    new-instance p1, Ljava/sql/SQLException;

    const/16 v0, 0x65

    const-string v1, "query does not return ResultSet"

    const-string v2, "SQLITE_DONE"

    invoke-direct {p1, v1, v2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1
.end method

.method public executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    iput-boolean p2, v0, Lorg/sqlite/core/CoreResultSet;->closeStmt:Z

    .line 63
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->internalClose()V

    .line 95
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->sql:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 99
    invoke-static {p1}, Lorg/sqlite/ExtendedCommand;->parse(Ljava/lang/String;)Lorg/sqlite/ExtendedCommand$SQLExtension;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    invoke-interface {v1, v0}, Lorg/sqlite/ExtendedCommand$SQLExtension;->execute(Lorg/sqlite/core/DB;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 106
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->total_changes()I

    move-result v1

    .line 109
    invoke-virtual {v0, p1}, Lorg/sqlite/core/DB;->_exec(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 113
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->total_changes()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v1

    .line 116
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->internalClose()V

    :goto_0
    return p1

    :cond_1
    :try_start_1
    const-string v0, ""

    .line 111
    invoke-static {p1, v0}, Lorg/sqlite/core/DB;->newSQLException(ILjava/lang/String;)Lorg/sqlite/SQLiteException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 116
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->internalClose()V

    .line 117
    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->close()V

    return-void
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->conn:Lorg/sqlite/SQLiteConnection;

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    check-cast v0, Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->getFetchDirection()I

    move-result v0

    return v0
.end method

.method public getFetchSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    check-cast v0, Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->getFetchSize()I

    move-result v0

    return v0
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getSQLiteDatabaseMetaData()Lorg/sqlite/core/CoreDatabaseMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sqlite/core/CoreDatabaseMetaData;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getMaxFieldSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRows()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    iget v0, v0, Lorg/sqlite/core/CoreResultSet;->maxRows:I

    return v0
.end method

.method public getMoreResults()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3Statement;->getMoreResults(I)Z

    move-result v0

    return v0
.end method

.method public getMoreResults(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->checkOpen()V

    .line 352
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->internalClose()V

    const/4 p1, 0x0

    return p1
.end method

.method public getQueryTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getBusyTimeout()I

    move-result v0

    return v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->checkOpen()V

    .line 128
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 133
    iget-wide v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->pointer:J

    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->column_count(J)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    iget-object v1, v1, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 138
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    iget-wide v2, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->pointer:J

    invoke-virtual {v0, v2, v3}, Lorg/sqlite/core/DB;->column_names(J)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 141
    :cond_1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    iget-object v1, v1, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    iput-object v1, v0, Lorg/sqlite/core/CoreResultSet;->cols:[Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    iget-boolean v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->resultsWaiting:Z

    iput-boolean v1, v0, Lorg/sqlite/core/CoreResultSet;->open:Z

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->resultsWaiting:Z

    .line 145
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    check-cast v0, Ljava/sql/ResultSet;

    return-object v0

    .line 129
    :cond_2
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "ResultSet already requested"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResultSetConcurrency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3ef

    return v0
.end method

.method public getResultSetHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    return v0
.end method

.method public getResultSetType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3eb

    return v0
.end method

.method public getUpdateCount()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 156
    iget-wide v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->pointer:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v1}, Lorg/sqlite/core/CoreResultSet;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->resultsWaiting:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->pointer:J

    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->column_count(J)I

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->changes()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setEscapeProcessing(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unused()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setFetchDirection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    check-cast v0, Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->setFetchDirection(I)V

    return-void
.end method

.method public setFetchSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    check-cast v0, Ljava/sql/ResultSet;

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->setFetchSize(I)V

    return-void
.end method

.method public setMaxFieldSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-ltz p1, :cond_0

    return-void

    .line 298
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max field size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be negative"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxRows(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 283
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->rs:Lorg/sqlite/core/CoreResultSet;

    iput p1, v0, Lorg/sqlite/core/CoreResultSet;->maxRows:I

    return-void

    .line 282
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "max row count must be >= 0"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setQueryTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 264
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->conn:Lorg/sqlite/SQLiteConnection;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnection;->setBusyTimeout(I)V

    return-void

    .line 263
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "query timeout must be >= 0"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected unused()Ljava/sql/SQLException;
    .locals 2

    .line 387
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not implemented by SQLite JDBC driver"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
