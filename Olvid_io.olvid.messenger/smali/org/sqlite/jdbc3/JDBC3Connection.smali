.class public abstract Lorg/sqlite/jdbc3/JDBC3Connection;
.super Lorg/sqlite/SQLiteConnection;
.source "JDBC3Connection.java"


# instance fields
.field private final savePoint:Ljava/util/concurrent/atomic/AtomicInteger;

.field private typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/sqlite/SQLiteConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->savePoint:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public clearWarnings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    const/4 v2, 0x2

    .line 152
    invoke-virtual {p0, v0, v1, v2}, Lorg/sqlite/jdbc3/JDBC3Connection;->createStatement(III)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 162
    invoke-virtual {p0, p1, p2, v0}, Lorg/sqlite/jdbc3/JDBC3Connection;->createStatement(III)Ljava/sql/Statement;

    move-result-object p1

    return-object p1
.end method

.method public abstract createStatement(III)Ljava/sql/Statement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 319
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "unsupported by SQLite"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->checkOpen()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->checkOpen()V

    const/4 v0, 0x2

    return v0
.end method

.method public getTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->typeMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->typeMap:Ljava/util/Map;

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->typeMap:Ljava/util/Map;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

.method public isReadOnly()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConfig;->getOpenModeFlags()I

    move-result v0

    sget-object v1, Lorg/sqlite/SQLiteOpenMode;->READONLY:Lorg/sqlite/SQLiteOpenMode;

    iget v1, v1, Lorg/sqlite/SQLiteOpenMode;->flag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    const/4 v2, 0x2

    .line 177
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 187
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 196
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "SQLite does not support Stored Procedures"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    .line 205
    invoke-virtual {p0, p1, v0, v1}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 241
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public abstract prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->checkOpen()V

    .line 295
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->getAutoCommit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "RELEASE SAVEPOINT %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    return-void

    .line 296
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "database in auto-commit mode"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->checkOpen()V

    .line 308
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->getAutoCommit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "ROLLBACK TO SAVEPOINT %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->getAutoCommit()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    return-void

    .line 309
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "database in auto-commit mode"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->checkOpen()V

    return-void
.end method

.method public setHoldability(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->checkOpen()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "SQLite only supports CLOSE_CURSORS_AT_COMMIT"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReadOnly(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->isReadOnly()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Cannot change read-only flag after establishing a connection. Use SQLiteConfig#setReadOnly and SQLiteConfig.createConnection()."

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->checkOpen()V

    .line 257
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->getAutoCommit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/sqlite/SQLiteConnectionConfig;->setAutoCommit(Z)V

    .line 264
    :cond_0
    new-instance v0, Lorg/sqlite/jdbc3/JDBC3Savepoint;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->savePoint:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/sqlite/jdbc3/JDBC3Savepoint;-><init>(I)V

    .line 265
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "SAVEPOINT %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->checkOpen()V

    .line 276
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->getAutoCommit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/sqlite/SQLiteConnectionConfig;->setAutoCommit(Z)V

    .line 283
    :cond_0
    new-instance v0, Lorg/sqlite/jdbc3/JDBC3Savepoint;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->savePoint:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v0, v2, p1}, Lorg/sqlite/jdbc3/JDBC3Savepoint;-><init>(ILjava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "SAVEPOINT %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->typeMap:Ljava/util/Map;

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
