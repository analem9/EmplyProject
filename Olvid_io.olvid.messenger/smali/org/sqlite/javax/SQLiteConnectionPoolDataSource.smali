.class public Lorg/sqlite/javax/SQLiteConnectionPoolDataSource;
.super Lorg/sqlite/SQLiteDataSource;
.source "SQLiteConnectionPoolDataSource.java"

# interfaces
.implements Ljavax/sql/ConnectionPoolDataSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/sqlite/SQLiteDataSource;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/sqlite/SQLiteConfig;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/sqlite/SQLiteDataSource;-><init>(Lorg/sqlite/SQLiteConfig;)V

    return-void
.end method


# virtual methods
.method public getPooledConnection()Ljavax/sql/PooledConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0, v0}, Lorg/sqlite/javax/SQLiteConnectionPoolDataSource;->getPooledConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/PooledConnection;

    move-result-object v0

    return-object v0
.end method

.method public getPooledConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/PooledConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 49
    new-instance v0, Lorg/sqlite/javax/SQLitePooledConnection;

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/javax/SQLiteConnectionPoolDataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Lorg/sqlite/SQLiteConnection;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/sqlite/javax/SQLitePooledConnection;-><init>(Lorg/sqlite/SQLiteConnection;)V

    return-object v0
.end method
