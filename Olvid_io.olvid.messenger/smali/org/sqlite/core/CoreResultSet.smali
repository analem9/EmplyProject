.class public abstract Lorg/sqlite/core/CoreResultSet;
.super Ljava/lang/Object;
.source "CoreResultSet.java"

# interfaces
.implements Lorg/sqlite/core/Codes;


# instance fields
.field public closeStmt:Z

.field public cols:[Ljava/lang/String;

.field public colsMeta:[Ljava/lang/String;

.field protected columnNameToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lastCol:I

.field protected limitRows:I

.field public maxRows:I

.field protected meta:[[Z

.field public open:Z

.field protected row:I

.field protected final stmt:Lorg/sqlite/core/CoreStatement;


# direct methods
.method protected constructor <init>(Lorg/sqlite/core/CoreStatement;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->open:Z

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lorg/sqlite/core/CoreResultSet;->cols:[Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 36
    move-object v2, v1

    check-cast v2, [[Z

    iput-object v2, p0, Lorg/sqlite/core/CoreResultSet;->meta:[[Z

    .line 39
    iput v0, p0, Lorg/sqlite/core/CoreResultSet;->row:I

    .line 43
    iput-object v1, p0, Lorg/sqlite/core/CoreResultSet;->columnNameToIndex:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    return-void
.end method


# virtual methods
.method protected addColumnIndexInCache(Ljava/lang/String;I)I
    .locals 2

    .line 155
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->columnNameToIndex:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/sqlite/core/CoreResultSet;->cols:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/sqlite/core/CoreResultSet;->columnNameToIndex:Ljava/util/Map;

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->columnNameToIndex:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method public checkCol(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    .line 90
    array-length v0, v0

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 91
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of bounds [1,"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SQLite JDBC: inconsistent internal state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkMeta()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, v0}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    .line 114
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->meta:[[Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreStatement;->getDatbase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-object v1, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->column_metadata(J)[[Z

    move-result-object v0

    iput-object v0, p0, Lorg/sqlite/core/CoreResultSet;->meta:[[Z

    :cond_0
    return-void
.end method

.method protected checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 75
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->open:Z

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "ResultSet closed"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lorg/sqlite/core/CoreResultSet;->cols:[Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 122
    move-object v1, v0

    check-cast v1, [[Z

    iput-object v1, p0, Lorg/sqlite/core/CoreResultSet;->meta:[[Z

    const/4 v1, 0x0

    .line 123
    iput v1, p0, Lorg/sqlite/core/CoreResultSet;->limitRows:I

    .line 124
    iput v1, p0, Lorg/sqlite/core/CoreResultSet;->row:I

    const/4 v2, -0x1

    .line 125
    iput v2, p0, Lorg/sqlite/core/CoreResultSet;->lastCol:I

    .line 126
    iput-object v0, p0, Lorg/sqlite/core/CoreResultSet;->columnNameToIndex:Ljava/util/Map;

    .line 128
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->open:Z

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreStatement;->getDatbase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 133
    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v2, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 135
    iget-object v2, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {v0, v2, v3}, Lorg/sqlite/core/DB;->reset(J)I

    .line 137
    iget-boolean v2, p0, Lorg/sqlite/core/CoreResultSet;->closeStmt:Z

    if-eqz v2, :cond_1

    .line 138
    iput-boolean v1, p0, Lorg/sqlite/core/CoreResultSet;->closeStmt:Z

    .line 139
    iget-object v2, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    check-cast v2, Ljava/sql/Statement;

    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 142
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iput-boolean v1, p0, Lorg/sqlite/core/CoreResultSet;->open:Z

    return-void

    :catchall_0
    move-exception v1

    .line 142
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected findColumnIndexInCache(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->columnNameToIndex:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method protected getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreStatement;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getDatabase()Lorg/sqlite/core/DB;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreStatement;->getDatbase()Lorg/sqlite/core/DB;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->open:Z

    return v0
.end method

.method protected markCol(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->checkOpen()V

    .line 104
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    .line 105
    iput p1, p0, Lorg/sqlite/core/CoreResultSet;->lastCol:I

    add-int/lit8 p1, p1, -0x1

    return p1
.end method
