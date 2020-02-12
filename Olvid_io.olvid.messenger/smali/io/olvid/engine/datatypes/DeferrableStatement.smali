.class Lio/olvid/engine/datatypes/DeferrableStatement;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/sql/Statement;


# instance fields
.field private final session:Lio/olvid/engine/datatypes/Session;

.field private final statement:Ljava/sql/Statement;


# direct methods
.method constructor <init>(Ljava/sql/Statement;Lio/olvid/engine/datatypes/Session;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    .line 436
    iput-object p2, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->session:Lio/olvid/engine/datatypes/Session;

    return-void
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->addBatch(Ljava/lang/String;)V

    return-void
.end method

.method public cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->cancel()V

    return-void
.end method

.method public clearBatch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->clearBatch()V

    return-void
.end method

.method public clearWarnings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->clearWarnings()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    return-void
.end method

.method public closeOnCompletion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->closeOnCompletion()V

    return-void
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->getAutoCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    :try_start_0
    sget-object v0, Lio/olvid/engine/datatypes/Session;->globalWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 449
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    sget-object v0, Lio/olvid/engine/datatypes/Session;->globalWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    sget-object v0, Lio/olvid/engine/datatypes/Session;->globalWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 452
    throw p1

    .line 454
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

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

    .line 615
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

    .line 620
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

    .line 625
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

    .line 580
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 465
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

    .line 600
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

    .line 605
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

    .line 610
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

    .line 585
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getConnection()Ljava/sql/Connection;

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

    .line 545
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getFetchDirection()I

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

    .line 555
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getFetchSize()I

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

    .line 595
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getGeneratedKeys()Ljava/sql/ResultSet;

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

    .line 470
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getMaxFieldSize()I

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

    .line 480
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getMaxRows()I

    move-result v0

    return v0
.end method

.method public getMoreResults()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getMoreResults()Z

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

    .line 590
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->getMoreResults(I)Z

    move-result p1

    return p1
.end method

.method public getQueryTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getQueryTimeout()I

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

    .line 525
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

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

    .line 560
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetConcurrency()I

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

    .line 630
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetHoldability()I

    move-result v0

    return v0
.end method

.method public getResultSetType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetType()I

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

    .line 530
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getUpdateCount()I

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

    .line 510
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getWarnings()Ljava/sql/SQLWarning;

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

    .line 665
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isCloseOnCompletion()Z

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

    .line 635
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isClosed()Z

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

    .line 645
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isPoolable()Z

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

    .line 655
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->isWrapperFor(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setCursorName(Ljava/lang/String;)V

    return-void
.end method

.method public setEscapeProcessing(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setEscapeProcessing(Z)V

    return-void
.end method

.method public setFetchDirection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setFetchDirection(I)V

    return-void
.end method

.method public setFetchSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setFetchSize(I)V

    return-void
.end method

.method public setMaxFieldSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setMaxFieldSize(I)V

    return-void
.end method

.method public setMaxRows(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setMaxRows(I)V

    return-void
.end method

.method public setPoolable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setPoolable(Z)V

    return-void
.end method

.method public setQueryTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setQueryTimeout(I)V

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

    .line 650
    iget-object v0, p0, Lio/olvid/engine/datatypes/DeferrableStatement;->statement:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
