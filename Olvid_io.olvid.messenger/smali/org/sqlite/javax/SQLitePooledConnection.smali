.class public Lorg/sqlite/javax/SQLitePooledConnection;
.super Lorg/sqlite/jdbc4/JDBC4PooledConnection;
.source "SQLitePooledConnection.java"


# instance fields
.field protected volatile handleConn:Ljava/sql/Connection;

.field protected listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/sql/ConnectionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected physicalConn:Lorg/sqlite/SQLiteConnection;


# direct methods
.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/sqlite/jdbc4/JDBC4PooledConnection;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    return-void
.end method


# virtual methods
.method public addConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->handleConn:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->handleConn:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 82
    :try_start_0
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iput-object v1, p0, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    .line 85
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->handleConn:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->handleConn:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 96
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/sql/Connection;

    aput-object v3, v1, v2

    new-instance v2, Lorg/sqlite/javax/SQLitePooledConnection$1;

    invoke-direct {v2, p0}, Lorg/sqlite/javax/SQLitePooledConnection$1;-><init>(Lorg/sqlite/javax/SQLitePooledConnection;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    iput-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->handleConn:Ljava/sql/Connection;

    .line 148
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->handleConn:Ljava/sql/Connection;

    return-object v0
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/sql/ConnectionEventListener;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getPhysicalConn()Lorg/sqlite/SQLiteConnection;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    return-object v0
.end method

.method public removeConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
