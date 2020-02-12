.class Lio/olvid/engine/datatypes/DeferrablePreparedStatement;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/sql/PreparedStatement;


# instance fields
.field private final session:Lio/olvid/engine/datatypes/Session;

.field private final statement:Ljava/sql/PreparedStatement;


# direct methods
.method constructor <init>(Ljava/sql/PreparedStatement;Lio/olvid/engine/datatypes/Session;)V
    .locals 0

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    .line 677
    iput-object p2, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->session:Lio/olvid/engine/datatypes/Session;

    return-void
.end method


# virtual methods
.method public addBatch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->addBatch()V

    return-void
.end method

.method public addBatch(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1}, Ljava/sql/PreparedStatement;->addBatch(Ljava/lang/String;)V

    return-void
.end method

.method public cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1017
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->cancel()V

    return-void
.end method

.method public clearBatch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearBatch()V

    return-void
.end method

.method public clearParameters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearParameters()V

    return-void
.end method

.method public clearWarnings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearWarnings()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    return-void
.end method

.method public closeOnCompletion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1177
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->closeOnCompletion()V

    return-void
.end method

.method public execute()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 701
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1037
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1132
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1137
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1142
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeBatch()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1097
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 972
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeUpdate()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->getAutoCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    :try_start_0
    sget-object v0, Lio/olvid/engine/datatypes/Session;->globalWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 690
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    sget-object v1, Lio/olvid/engine/datatypes/Session;->globalWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    sget-object v1, Lio/olvid/engine/datatypes/Session;->globalWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 693
    throw v0

    .line 695
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 977
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1117
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1122
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1127
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1062
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getFetchDirection()I

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

    .line 1072
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getFetchSize()I

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

    .line 1112
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getGeneratedKeys()Ljava/sql/ResultSet;

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

    .line 982
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getMaxFieldSize()I

    move-result v0

    return v0
.end method

.method public getMaxRows()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 992
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getMaxRows()I

    move-result v0

    return v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getMoreResults()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getMoreResults()Z

    move-result v0

    return v0
.end method

.method public getMoreResults(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1107
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1}, Ljava/sql/PreparedStatement;->getMoreResults(I)Z

    move-result p1

    return p1
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getParameterMetaData()Ljava/sql/ParameterMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getQueryTimeout()I

    move-result v0

    return v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getResultSetConcurrency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1077
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getResultSetConcurrency()I

    move-result v0

    return v0
.end method

.method public getResultSetHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getResultSetType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getResultSetType()I

    move-result v0

    return v0
.end method

.method public getUpdateCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getUpdateCount()I

    move-result v0

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1022
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0

    return-object v0
.end method

.method public isCloseOnCompletion()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->isCloseOnCompletion()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1152
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isPoolable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->isPoolable()Z

    move-result v0

    return v0
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

    .line 1172
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1}, Ljava/sql/PreparedStatement;->isWrapperFor(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setArray(ILjava/sql/Array;)V

    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 937
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;)V

    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;)V

    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setBlob(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;)V

    return-void
.end method

.method public setBlob(ILjava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    return-void
.end method

.method public setBoolean(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    return-void
.end method

.method public setByte(IB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setByte(IB)V

    return-void
.end method

.method public setBytes(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public setClob(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 957
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;)V

    return-void
.end method

.method public setClob(ILjava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setClob(ILjava/sql/Clob;)V

    return-void
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1}, Ljava/sql/PreparedStatement;->setCursorName(Ljava/lang/String;)V

    return-void
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    return-void
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    return-void
.end method

.method public setDouble(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    return-void
.end method

.method public setEscapeProcessing(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1}, Ljava/sql/PreparedStatement;->setEscapeProcessing(Z)V

    return-void
.end method

.method public setFetchDirection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1}, Ljava/sql/PreparedStatement;->setFetchDirection(I)V

    return-void
.end method

.method public setFetchSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1}, Ljava/sql/PreparedStatement;->setFetchSize(I)V

    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    return-void
.end method

.method public setInt(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    return-void
.end method

.method public setLong(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    return-void
.end method

.method public setMaxFieldSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1}, Ljava/sql/PreparedStatement;->setMaxFieldSize(I)V

    return-void
.end method

.method public setMaxRows(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 997
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1}, Ljava/sql/PreparedStatement;->setMaxRows(I)V

    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public setNClob(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;)V

    return-void
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/sql/NClob;)V

    return-void
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNString(ILjava/lang/String;)V

    return-void
.end method

.method public setNull(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNull(II)V

    return-void
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setNull(IILjava/lang/String;)V

    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;I)V

    return-void
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;II)V

    return-void
.end method

.method public setPoolable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public setQueryTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1012
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1}, Ljava/sql/PreparedStatement;->setQueryTimeout(I)V

    return-void
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setRef(ILjava/sql/Ref;)V

    return-void
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setRowId(ILjava/sql/RowId;)V

    return-void
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 912
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setSQLXML(ILjava/sql/SQLXML;)V

    return-void
.end method

.method public setShort(IS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setShort(IS)V

    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    return-void
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;Ljava/util/Calendar;)V

    return-void
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    return-void
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 857
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V

    return-void
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setURL(ILjava/net/URL;)V

    return-void
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 787
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrablePreparedStatement;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setUnicodeStream(ILjava/io/InputStream;I)V

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

    const/4 p1, 0x0

    return-object p1
.end method
