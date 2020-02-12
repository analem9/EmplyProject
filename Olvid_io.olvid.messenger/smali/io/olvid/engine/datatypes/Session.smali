.class public Lio/olvid/engine/datatypes/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/sql/Connection;


# static fields
.field static final globalWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final sessionPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/olvid/engine/datatypes/Session;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sessionPoolLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private final connection:Ljava/sql/Connection;

.field private final dbPath:Ljava/lang/String;

.field private final sessionCommitListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/olvid/engine/datatypes/ObvDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionIsForUpgradeTable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lio/olvid/engine/datatypes/Session;->globalWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/olvid/engine/datatypes/Session;->sessionPool:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lio/olvid/engine/datatypes/Session;->sessionPoolLock:Ljava/util/concurrent/locks/ReentrantLock;

    :try_start_0
    const-string v0, "org.sqlite.JDBC"

    .line 57
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Driver;

    invoke-static {v0}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 67
    iput-object p1, p0, Lio/olvid/engine/datatypes/Session;->dbPath:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/datatypes/Session;->sessionCommitListeners:Ljava/util/Set;

    .line 69
    iput-boolean p2, p0, Lio/olvid/engine/datatypes/Session;->sessionIsForUpgradeTable:Z

    const-string v0, "jdbc:sqlite:"

    if-eqz p2, :cond_0

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    goto :goto_0

    .line 74
    :cond_0
    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    const-string v1, "foreign_keys"

    const-string v2, "true"

    .line 75
    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    .line 77
    iget-object p1, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/sql/Connection;->setAutoCommit(Z)V

    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "dbPath is null, unable to createCurrentDevice a Session."

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getSession(Ljava/lang/String;)Lio/olvid/engine/datatypes/Session;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 84
    sget-object v0, Lio/olvid/engine/datatypes/Session;->sessionPoolLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 85
    sget-object v0, Lio/olvid/engine/datatypes/Session;->sessionPool:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/olvid/engine/datatypes/Session;

    .line 91
    sget-object v0, Lio/olvid/engine/datatypes/Session;->sessionPoolLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    sget-object v0, Lio/olvid/engine/datatypes/Session;->sessionPoolLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 88
    new-instance v0, Lio/olvid/engine/datatypes/Session;

    invoke-direct {v0, p0, v1}, Lio/olvid/engine/datatypes/Session;-><init>(Ljava/lang/String;Z)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static getUpgradeTablesSession(Ljava/lang/String;)Lio/olvid/engine/datatypes/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 97
    new-instance v0, Lio/olvid/engine/datatypes/Session;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/olvid/engine/datatypes/Session;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public abort(Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->abort(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->sessionCommitListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearWarnings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->clearWarnings()V

    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->sessionCommitListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "This Session cannot yet be closed: some modifications were committed and the corresponding hooks have not been called."

    .line 159
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->sessionCommitListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/datatypes/ObvDatabase;

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not committed entity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Trace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->getAutoCommit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->rollback()V

    .line 170
    :cond_2
    iget-boolean v0, p0, Lio/olvid/engine/datatypes/Session;->sessionIsForUpgradeTable:Z

    if-nez v0, :cond_5

    .line 171
    sget-object v0, Lio/olvid/engine/datatypes/Session;->sessionPoolLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 172
    sget-object v0, Lio/olvid/engine/datatypes/Session;->sessionPool:Ljava/util/HashMap;

    iget-object v1, p0, Lio/olvid/engine/datatypes/Session;->dbPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 174
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    sget-object v1, Lio/olvid/engine/datatypes/Session;->sessionPool:Ljava/util/HashMap;

    iget-object v2, p0, Lio/olvid/engine/datatypes/Session;->dbPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_4
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lio/olvid/engine/datatypes/Session;->sessionPoolLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_5
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->commit()V

    .line 117
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 118
    sget-object v0, Lio/olvid/engine/datatypes/Session;->globalWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->sessionCommitListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/datatypes/ObvDatabase;

    .line 121
    invoke-interface {v1}, Lio/olvid/engine/datatypes/ObvDatabase;->wasCommitted()V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->sessionCommitListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;

    move-result-object p1

    return-object p1
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createBlob()Ljava/sql/Blob;

    move-result-object v0

    return-object v0
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createClob()Ljava/sql/Clob;

    move-result-object v0

    return-object v0
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createNClob()Ljava/sql/NClob;

    move-result-object v0

    return-object v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createSQLXML()Ljava/sql/SQLXML;

    move-result-object v0

    return-object v0
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 143
    new-instance v0, Lio/olvid/engine/datatypes/DeferrableStatement;

    iget-object v1, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/olvid/engine/datatypes/DeferrableStatement;-><init>(Ljava/sql/Statement;Lio/olvid/engine/datatypes/Session;)V

    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createStatement(II)Ljava/sql/Statement;

    move-result-object p1

    return-object p1
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 313
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;

    move-result-object p1

    return-object p1
.end method

.method public getAutoCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v0

    return v0
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->getClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getClientInfo()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getHoldability()I

    move-result v0

    return v0
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getNetworkTimeout()I

    move-result v0

    return v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getSchema()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionIsolation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getTransactionIsolation()I

    move-result v0

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

    .line 263
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getTypeMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isInTransaction()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isValid(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->isValid(I)Z

    move-result p1

    return p1
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
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

    .line 398
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->isWrapperFor(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 288
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 283
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/Connection;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

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

    .line 323
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not implemented"

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

    .line 148
    new-instance v0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;

    iget-object v1, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v1, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;-><init>(Ljava/sql/PreparedStatement;Lio/olvid/engine/datatypes/Session;)V

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 153
    new-instance v0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;

    iget-object v1, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v1, p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;-><init>(Ljava/sql/PreparedStatement;Lio/olvid/engine/datatypes/Session;)V

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 318
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 328
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 333
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 308
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Savepoints not implemented"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rollback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->rollback()V

    .line 131
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 132
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->sessionCommitListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    sget-object v0, Lio/olvid/engine/datatypes/Session;->globalWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lio/olvid/engine/datatypes/Session;->globalWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 135
    throw v0

    :cond_0
    const-string v0, "Calling rollback on an autoCommit Session."

    .line 137
    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 303
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Savepoints not implemented"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAutoCommit(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "Calling setAutocommit on a Session is forbidden"

    .line 184
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/sql/SQLException;

    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setCatalog(Ljava/lang/String;)V

    return-void
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->setClientInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setClientInfo(Ljava/util/Properties;)V

    return-void
.end method

.method public setHoldability(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setHoldability(I)V

    return-void
.end method

.method public setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->setNetworkTimeout(Ljava/util/concurrent/Executor;I)V

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setReadOnly(Z)V

    return-void
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Savepoints not implemented"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 298
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Savepoints not implemented"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setSchema(Ljava/lang/String;)V

    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    return-void
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setTypeMap(Ljava/util/Map;)V

    return-void
.end method

.method public startTransaction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 109
    sget-object v0, Lio/olvid/engine/datatypes/Session;->globalWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 110
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    return-void
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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

    .line 393
    iget-object v0, p0, Lio/olvid/engine/datatypes/Session;->connection:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
