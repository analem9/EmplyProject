.class public Lorg/sqlite/SQLiteDataSource;
.super Ljava/lang/Object;
.source "SQLiteDataSource.java"

# interfaces
.implements Ljavax/sql/DataSource;


# instance fields
.field private config:Lorg/sqlite/SQLiteConfig;

.field private databaseName:Ljava/lang/String;

.field private transient logger:Ljava/io/PrintWriter;

.field private loginTimeout:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lorg/sqlite/SQLiteDataSource;->loginTimeout:I

    const-string v0, "jdbc:sqlite:"

    .line 49
    iput-object v0, p0, Lorg/sqlite/SQLiteDataSource;->url:Ljava/lang/String;

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lorg/sqlite/SQLiteDataSource;->databaseName:Ljava/lang/String;

    .line 56
    new-instance v0, Lorg/sqlite/SQLiteConfig;

    invoke-direct {v0}, Lorg/sqlite/SQLiteConfig;-><init>()V

    iput-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    return-void
.end method

.method public constructor <init>(Lorg/sqlite/SQLiteConfig;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lorg/sqlite/SQLiteDataSource;->loginTimeout:I

    const-string v0, "jdbc:sqlite:"

    .line 49
    iput-object v0, p0, Lorg/sqlite/SQLiteDataSource;->url:Ljava/lang/String;

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lorg/sqlite/SQLiteDataSource;->databaseName:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    return-void
.end method


# virtual methods
.method public getConfig()Lorg/sqlite/SQLiteConfig;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    return-object v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, v0, v0}, Lorg/sqlite/SQLiteDataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Lorg/sqlite/SQLiteConnection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/SQLiteDataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Lorg/sqlite/SQLiteConnection;

    move-result-object p1

    return-object p1
.end method

.method public getConnection(Ljava/lang/String;Ljava/lang/String;)Lorg/sqlite/SQLiteConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConfig;->toProperties()Ljava/util/Properties;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "user"

    .line 407
    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "pass"

    .line 409
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_1
    iget-object p1, p0, Lorg/sqlite/SQLiteDataSource;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/sqlite/JDBC;->createConnection(Ljava/lang/String;Ljava/util/Properties;)Lorg/sqlite/SQLiteConnection;

    move-result-object p1

    return-object p1
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogWriter()Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->logger:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public getLoginTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 424
    iget v0, p0, Lorg/sqlite/SQLiteDataSource;->loginTimeout:I

    return v0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLFeatureNotSupportedException;
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "getParentLogger"

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 452
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setCacheSize(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setCacheSize(I)V

    return-void
.end method

.method public setCaseSensitiveLike(Z)V
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableCaseSensitiveLike(Z)V

    return-void
.end method

.method public setConfig(Lorg/sqlite/SQLiteConfig;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    return-void
.end method

.method public setCountChanges(Z)V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableCountChanges(Z)V

    return-void
.end method

.method public setDatabaseName(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/sqlite/SQLiteDataSource;->databaseName:Ljava/lang/String;

    return-void
.end method

.method public setDefaultCacheSize(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setDefaultCacheSize(I)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$Encoding;->getEncoding(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$Encoding;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setEncoding(Lorg/sqlite/SQLiteConfig$Encoding;)V

    return-void
.end method

.method public setEnforceForeignKeys(Z)V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enforceForeignKeys(Z)V

    return-void
.end method

.method public setFullColumnNames(Z)V
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableFullColumnNames(Z)V

    return-void
.end method

.method public setFullSync(Z)V
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableFullSync(Z)V

    return-void
.end method

.method public setIncrementalVacuum(I)V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->incrementalVacuum(I)V

    return-void
.end method

.method public setJournalMode(Ljava/lang/String;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$JournalMode;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$JournalMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setJournalMode(Lorg/sqlite/SQLiteConfig$JournalMode;)V

    return-void
.end method

.method public setJournalSizeLimit(I)V
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setJounalSizeLimit(I)V

    return-void
.end method

.method public setLegacyFileFormat(Z)V
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->useLegacyFileFormat(Z)V

    return-void
.end method

.method public setLoadExtension(Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableLoadExtension(Z)V

    return-void
.end method

.method public setLockingMode(Ljava/lang/String;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$LockingMode;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$LockingMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setLockingMode(Lorg/sqlite/SQLiteConfig$LockingMode;)V

    return-void
.end method

.method public setLogWriter(Ljava/io/PrintWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 435
    iput-object p1, p0, Lorg/sqlite/SQLiteDataSource;->logger:Ljava/io/PrintWriter;

    return-void
.end method

.method public setLoginTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 442
    iput p1, p0, Lorg/sqlite/SQLiteDataSource;->loginTimeout:I

    return-void
.end method

.method public setMaxPageCount(I)V
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setMaxPageCount(I)V

    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setPageSize(I)V

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setReadOnly(Z)V

    return-void
.end method

.method public setReadUncommited(Z)V
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setReadUncommited(Z)V

    return-void
.end method

.method public setRecursiveTriggers(Z)V
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableRecursiveTriggers(Z)V

    return-void
.end method

.method public setReverseUnorderedSelects(Z)V
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableReverseUnorderedSelects(Z)V

    return-void
.end method

.method public setSharedCache(Z)V
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setSharedCache(Z)V

    return-void
.end method

.method public setShortColumnNames(Z)V
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableShortColumnNames(Z)V

    return-void
.end method

.method public setSynchronous(Ljava/lang/String;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$SynchronousMode;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$SynchronousMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setSynchronous(Lorg/sqlite/SQLiteConfig$SynchronousMode;)V

    return-void
.end method

.method public setTempStore(Ljava/lang/String;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$TempStore;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TempStore;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setTempStore(Lorg/sqlite/SQLiteConfig$TempStore;)V

    return-void
.end method

.method public setTempStoreDirectory(Ljava/lang/String;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setTempStoreDirectory(Ljava/lang/String;)V

    return-void
.end method

.method public setTransactionMode(Ljava/lang/String;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setTransactionMode(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/sqlite/SQLiteDataSource;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserVersion(I)V
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setUserVersion(I)V

    return-void
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-object p0
.end method
