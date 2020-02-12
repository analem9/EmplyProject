.class public abstract Lorg/sqlite/core/CoreStatement;
.super Ljava/lang/Object;
.source "CoreStatement.java"

# interfaces
.implements Lorg/sqlite/core/Codes;


# instance fields
.field protected batch:[Ljava/lang/Object;

.field protected batchPos:I

.field public final conn:Lorg/sqlite/SQLiteConnection;

.field public pointer:J

.field protected resultsWaiting:Z

.field protected final rs:Lorg/sqlite/core/CoreResultSet;

.field protected sql:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 38
    iput-object p1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 39
    new-instance p1, Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-direct {p1, p0}, Lorg/sqlite/jdbc4/JDBC4ResultSet;-><init>(Lorg/sqlite/core/CoreStatement;)V

    iput-object p1, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    return-void
.end method


# virtual methods
.method protected final checkOpen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 54
    iget-wide v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "statement is not executing"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected exec()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 80
    :try_start_0
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/sqlite/core/DB;->execute(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iput-boolean v1, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 88
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v1

    iget-wide v2, p0, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {v1, v2, v3}, Lorg/sqlite/core/DB;->column_count(J)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    .line 84
    iput-boolean v0, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 85
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/sqlite/core/DB;->finalize(Lorg/sqlite/core/CoreStatement;)I

    .line 86
    throw v1

    .line 75
    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "SQLite JDBC internal error: rs.isOpen() on exec."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "SQLiteJDBC internal error: sql==null"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected exec(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 101
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 107
    :try_start_0
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v1

    iget-object v2, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lorg/sqlite/core/DB;->execute(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iput-boolean p1, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 115
    iget-object p1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object p1

    iget-wide v1, p0, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p1, v1, v2}, Lorg/sqlite/core/DB;->column_count(J)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    .line 111
    iput-boolean v0, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 112
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/sqlite/core/DB;->finalize(Lorg/sqlite/core/CoreStatement;)I

    .line 113
    throw p1

    .line 102
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "SQLite JDBC internal error: rs.isOpen() on exec."

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "SQLiteJDBC internal error: sql==null"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDatbase()Lorg/sqlite/core/DB;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    return-object v0
.end method

.method protected internalClose()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 119
    iget-wide v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->close()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 128
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/sqlite/core/DB;->finalize(Lorg/sqlite/core/CoreStatement;)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/sqlite/core/DB;->throwex(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    const-string v1, "Connection is closed"

    .line 122
    invoke-static {v0, v1}, Lorg/sqlite/core/DB;->newSQLException(ILjava/lang/String;)Lorg/sqlite/SQLiteException;

    move-result-object v0

    throw v0
.end method

.method isOpen()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    iget-wide v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
