.class public abstract Lorg/sqlite/BusyHandler;
.super Ljava/lang/Object;
.source "BusyHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clearHandler(Ljava/sql/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v0}, Lorg/sqlite/BusyHandler;->commitHandler(Ljava/sql/Connection;Lorg/sqlite/BusyHandler;)V

    return-void
.end method

.method private static commitHandler(Ljava/sql/Connection;Lorg/sqlite/BusyHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 21
    instance-of v0, p0, Lorg/sqlite/SQLiteConnection;

    if-eqz v0, :cond_1

    .line 25
    invoke-interface {p0}, Ljava/sql/Connection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    check-cast p0, Lorg/sqlite/SQLiteConnection;

    .line 30
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->busy_handler(Lorg/sqlite/BusyHandler;)V

    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/sql/SQLException;

    const-string p1, "connection closed"

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_1
    new-instance p0, Ljava/sql/SQLException;

    const-string p1, "connection must be to an SQLite db"

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final setHandler(Ljava/sql/Connection;Lorg/sqlite/BusyHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lorg/sqlite/BusyHandler;->commitHandler(Ljava/sql/Connection;Lorg/sqlite/BusyHandler;)V

    return-void
.end method


# virtual methods
.method protected abstract callback(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
