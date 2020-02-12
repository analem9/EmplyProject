.class public Lorg/sqlite/jdbc4/JDBC4Connection;
.super Lorg/sqlite/jdbc3/JDBC3Connection;
.source "JDBC4Connection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/sqlite/jdbc3/JDBC3Connection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method


# virtual methods
.method public createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lorg/sqlite/jdbc4/JDBC4Connection;->checkOpen()V

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/jdbc4/JDBC4Connection;->checkCursor(III)V

    .line 28
    new-instance p1, Lorg/sqlite/jdbc4/JDBC4Statement;

    invoke-direct {p1, p0}, Lorg/sqlite/jdbc4/JDBC4Statement;-><init>(Lorg/sqlite/SQLiteConnection;)V

    return-object p1
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 43
    invoke-super {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->isClosed()Z

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

    .line 76
    invoke-virtual {p0}, Lorg/sqlite/jdbc4/JDBC4Connection;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lorg/sqlite/jdbc4/JDBC4Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    :try_start_0
    const-string v0, "select 1"

    .line 81
    invoke-interface {p1, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    .line 84
    throw v0
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

    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lorg/sqlite/jdbc4/JDBC4Connection;->checkOpen()V

    .line 33
    invoke-virtual {p0, p2, p3, p4}, Lorg/sqlite/jdbc4/JDBC4Connection;->checkCursor(III)V

    .line 35
    new-instance p2, Lorg/sqlite/jdbc4/JDBC4PreparedStatement;

    invoke-direct {p2, p0, p1}, Lorg/sqlite/jdbc4/JDBC4PreparedStatement;-><init>(Lorg/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-object p2
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    return-void
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

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
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
