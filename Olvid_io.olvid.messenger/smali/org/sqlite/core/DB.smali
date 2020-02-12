.class public abstract Lorg/sqlite/core/DB;
.super Ljava/lang/Object;
.source "DB.java"

# interfaces
.implements Lorg/sqlite/core/Codes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/core/DB$ProgressObserver;
    }
.end annotation


# instance fields
.field begin:J

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field commit:J

.field private final config:Lorg/sqlite/SQLiteConfig;

.field private final fileName:Ljava/lang/String;

.field private final stmts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/sqlite/core/CoreStatement;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/SQLiteConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/sqlite/core/DB;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lorg/sqlite/core/DB;->begin:J

    .line 53
    iput-wide v0, p0, Lorg/sqlite/core/DB;->commit:J

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/sqlite/core/DB;->stmts:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lorg/sqlite/core/DB;->url:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lorg/sqlite/core/DB;->fileName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lorg/sqlite/core/DB;->config:Lorg/sqlite/SQLiteConfig;

    return-void
.end method

.method private newSQLException(I)Lorg/sqlite/SQLiteException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 953
    invoke-virtual {p0}, Lorg/sqlite/core/DB;->errmsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/sqlite/core/DB;->newSQLException(ILjava/lang/String;)Lorg/sqlite/SQLiteException;

    move-result-object p1

    return-object p1
.end method

.method public static newSQLException(ILjava/lang/String;)Lorg/sqlite/SQLiteException;
    .locals 3

    .line 939
    invoke-static {p0}, Lorg/sqlite/SQLiteErrorCode;->getErrorCode(I)Lorg/sqlite/SQLiteErrorCode;

    move-result-object p0

    .line 940
    new-instance v0, Lorg/sqlite/SQLiteException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s (%s)"

    .line 941
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/sqlite/SQLiteException;-><init>(Ljava/lang/String;Lorg/sqlite/SQLiteErrorCode;)V

    return-object v0
.end method

.method static final throwex(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sqlite/SQLiteException;
        }
    .end annotation

    .line 928
    invoke-static {p0, p1}, Lorg/sqlite/core/DB;->newSQLException(ILjava/lang/String;)Lorg/sqlite/SQLiteException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected abstract _close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract _exec(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected abstract _open(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract backup(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/core/DB$ProgressObserver;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_blob(JI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_double(JID)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_int(JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_long(JIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_null(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_parameter_count(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_text(JILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract busy_handler(Lorg/sqlite/BusyHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract busy_timeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract changes()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clear_bindings(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clear_progress_handler()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public final declared-synchronized close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lorg/sqlite/core/DB;->stmts:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    :try_start_1
    iget-object v1, p0, Lorg/sqlite/core/DB;->stmts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 216
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 217
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 218
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/sqlite/core/CoreStatement;

    .line 219
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/sqlite/core/DB;->finalize(J)I

    if-eqz v5, :cond_0

    .line 221
    iput-wide v3, v5, Lorg/sqlite/core/CoreStatement;->pointer:J

    .line 223
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 225
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :try_start_2
    invoke-virtual {p0}, Lorg/sqlite/core/DB;->free_functions()V

    .line 231
    iget-wide v0, p0, Lorg/sqlite/core/DB;->begin:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_2

    .line 232
    iget-wide v0, p0, Lorg/sqlite/core/DB;->begin:J

    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->finalize(J)I

    .line 233
    iput-wide v3, p0, Lorg/sqlite/core/DB;->begin:J

    .line 235
    :cond_2
    iget-wide v0, p0, Lorg/sqlite/core/DB;->commit:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_3

    .line 236
    iget-wide v0, p0, Lorg/sqlite/core/DB;->commit:J

    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->finalize(J)I

    .line 237
    iput-wide v3, p0, Lorg/sqlite/core/DB;->commit:J

    .line 240
    :cond_3
    iget-object v0, p0, Lorg/sqlite/core/DB;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 241
    invoke-virtual {p0}, Lorg/sqlite/core/DB;->_close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 242
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 225
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract column_blob(JI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_count(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_decltype(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_double(JI)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_int(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_long(JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract column_metadata(J)[[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_name(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public final declared-synchronized column_names(J)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 722
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->column_count(J)I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 723
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 724
    invoke-virtual {p0, p1, p2, v1}, Lorg/sqlite/core/DB;->column_name(JI)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract column_table_name(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_text(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_type(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract create_function(Ljava/lang/String;Lorg/sqlite/Function;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract destroy_function(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract enable_load_extension(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method final ensureAutoCommit(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 993
    :cond_0
    iget-wide v0, p0, Lorg/sqlite/core/DB;->begin:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const-string p1, "begin;"

    .line 994
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->prepare(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/sqlite/core/DB;->begin:J

    .line 996
    :cond_1
    iget-wide v0, p0, Lorg/sqlite/core/DB;->commit:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    const-string p1, "commit;"

    .line 997
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->prepare(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/sqlite/core/DB;->commit:J

    .line 1001
    :cond_2
    :try_start_0
    iget-wide v0, p0, Lorg/sqlite/core/DB;->begin:J

    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->step(J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    .line 1013
    iget-wide v0, p0, Lorg/sqlite/core/DB;->begin:J

    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->reset(J)I

    .line 1014
    iget-wide v0, p0, Lorg/sqlite/core/DB;->commit:J

    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->reset(J)I

    return-void

    .line 1005
    :cond_3
    :try_start_1
    iget-wide v1, p0, Lorg/sqlite/core/DB;->commit:J

    invoke-virtual {p0, v1, v2}, Lorg/sqlite/core/DB;->step(J)I

    move-result p1

    if-eq p1, v0, :cond_4

    .line 1007
    iget-wide v0, p0, Lorg/sqlite/core/DB;->commit:J

    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->reset(J)I

    .line 1008
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->throwex(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    :cond_4
    iget-wide v0, p0, Lorg/sqlite/core/DB;->begin:J

    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->reset(J)I

    .line 1014
    iget-wide v0, p0, Lorg/sqlite/core/DB;->commit:J

    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->reset(J)I

    return-void

    :catchall_0
    move-exception p1

    .line 1013
    iget-wide v0, p0, Lorg/sqlite/core/DB;->begin:J

    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->reset(J)I

    .line 1014
    iget-wide v0, p0, Lorg/sqlite/core/DB;->commit:J

    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->reset(J)I

    .line 1015
    throw p1
.end method

.method abstract errmsg()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public final declared-synchronized exec(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 169
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->prepare(Ljava/lang/String;)J

    move-result-wide v0

    .line 170
    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->step(J)I

    move-result p1

    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    const/16 v2, 0x65

    if-eq p1, v2, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->throwex(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->finalize(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    :try_start_2
    invoke-virtual {p0, p2}, Lorg/sqlite/core/DB;->ensureAutoCommit(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :try_start_3
    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->finalize(J)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    monitor-exit p0

    return-void

    .line 182
    :cond_1
    :try_start_4
    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->finalize(J)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 182
    :try_start_5
    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->finalize(J)I

    .line 183
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized execute(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 870
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->_exec(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    .line 875
    invoke-virtual {p0, p2}, Lorg/sqlite/core/DB;->ensureAutoCommit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    monitor-exit p0

    return v0

    .line 880
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/sqlite/core/DB;->newSQLException(I)Lorg/sqlite/SQLiteException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x1

    .line 878
    monitor-exit p0

    return p1

    .line 873
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized execute(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 828
    :try_start_0
    iget-wide v1, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, v1, v2}, Lorg/sqlite/core/DB;->bind_parameter_count(J)I

    move-result v1

    .line 829
    array-length v2, p2

    if-gt v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 835
    iget-wide v3, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    aget-object v5, p2, v2

    invoke-virtual {p0, v3, v4, v2, v5}, Lorg/sqlite/core/DB;->sqlbind(JILjava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    invoke-virtual {p0, v3}, Lorg/sqlite/core/DB;->throwex(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 830
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assertion failure: param count ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") > value count ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 842
    :cond_2
    iget-wide v1, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, v1, v2}, Lorg/sqlite/core/DB;->step(J)I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v1, 0x5

    if-eq p2, v1, :cond_5

    const/4 v1, 0x6

    if-eq p2, v1, :cond_5

    const/16 v1, 0x13

    if-eq p2, v1, :cond_5

    const/16 v1, 0x15

    if-eq p2, v1, :cond_5

    const/16 v1, 0x64

    if-eq p2, v1, :cond_4

    const/16 v1, 0x65

    if-ne p2, v1, :cond_3

    .line 845
    iget-wide v1, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, v1, v2}, Lorg/sqlite/core/DB;->reset(J)I

    .line 846
    iget-object p1, p1, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->ensureAutoCommit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    monitor-exit p0

    return v0

    .line 856
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->finalize(Lorg/sqlite/core/CoreStatement;)I

    .line 857
    invoke-direct {p0, p2}, Lorg/sqlite/core/DB;->newSQLException(I)Lorg/sqlite/SQLiteException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    :cond_4
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 854
    :cond_5
    :try_start_2
    invoke-direct {p0, p2}, Lorg/sqlite/core/DB;->newSQLException(I)Lorg/sqlite/SQLiteException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized executeBatch(JI[Ljava/lang/Object;Z)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    if-lt p3, v0, :cond_5

    .line 784
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->bind_parameter_count(J)I

    move-result v0

    .line 787
    new-array v1, p3, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_4

    .line 791
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->reset(J)I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    mul-int v5, v3, v0

    add-int/2addr v5, v4

    .line 793
    aget-object v5, p4, v5

    invoke-virtual {p0, p1, p2, v4, v5}, Lorg/sqlite/core/DB;->sqlbind(JILjava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 795
    invoke-virtual {p0, v5}, Lorg/sqlite/core/DB;->throwex(I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 799
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->step(J)I

    move-result v4

    const/16 v5, 0x65

    if-eq v4, v5, :cond_3

    .line 801
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->reset(J)I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_2

    .line 805
    invoke-virtual {p0, v4}, Lorg/sqlite/core/DB;->throwex(I)V

    goto :goto_2

    .line 803
    :cond_2
    new-instance p1, Ljava/sql/BatchUpdateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "batch entry "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": query returns results"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;[I)V

    throw p1

    .line 808
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/sqlite/core/DB;->changes()I

    move-result v4

    aput v4, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 812
    :try_start_2
    invoke-virtual {p0, p5}, Lorg/sqlite/core/DB;->ensureAutoCommit(Z)V

    .line 813
    throw p1

    .line 812
    :cond_4
    invoke-virtual {p0, p5}, Lorg/sqlite/core/DB;->ensureAutoCommit(Z)V

    .line 815
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->reset(J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 816
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 781
    :cond_5
    :try_start_3
    new-instance p1, Ljava/sql/SQLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "count ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") < 1"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized executeUpdate(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 895
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->execute(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 899
    :try_start_1
    iget-wide v2, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_0

    iget-wide p1, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->reset(J)I

    .line 901
    :cond_0
    invoke-virtual {p0}, Lorg/sqlite/core/DB;->changes()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return p1

    .line 896
    :cond_1
    :try_start_2
    new-instance p2, Ljava/sql/SQLException;

    const-string v2, "query returns results"

    invoke-direct {p2, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    .line 899
    :try_start_3
    iget-wide v2, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    iget-wide v0, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->reset(J)I

    .line 900
    :cond_2
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract finalize(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public final declared-synchronized finalize(Lorg/sqlite/core/CoreStatement;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_0
    iget-wide v0, p1, Lorg/sqlite/core/CoreStatement;->pointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    .line 270
    monitor-exit p0

    return p1

    .line 274
    :cond_0
    :try_start_1
    iget-wide v0, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, v0, v1}, Lorg/sqlite/core/DB;->finalize(J)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :try_start_2
    iget-object v1, p0, Lorg/sqlite/core/DB;->stmts:Ljava/util/Map;

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iput-wide v2, p1, Lorg/sqlite/core/CoreStatement;->pointer:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 280
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 277
    :try_start_3
    iget-object v1, p0, Lorg/sqlite/core/DB;->stmts:Ljava/util/Map;

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iput-wide v2, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    .line 279
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method abstract free_functions()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public getConfig()Lorg/sqlite/SQLiteConfig;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/sqlite/core/DB;->config:Lorg/sqlite/SQLiteConfig;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/sqlite/core/DB;->url:Ljava/lang/String;

    return-object v0
.end method

.method public abstract interrupt()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public isClosed()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/sqlite/core/DB;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract libversion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public final declared-synchronized open(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 195
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->_open(Ljava/lang/String;I)V

    .line 196
    iget-object p1, p0, Lorg/sqlite/core/DB;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    iget-object p1, p0, Lorg/sqlite/core/DB;->fileName:Ljava/lang/String;

    const-string p2, "file:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/sqlite/core/DB;->fileName:Ljava/lang/String;

    const-string p2, "cache="

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 200
    iget-object p1, p0, Lorg/sqlite/core/DB;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig;->isEnabledSharedCache()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->shared_cache(Z)I

    .line 202
    :cond_0
    iget-object p1, p0, Lorg/sqlite/core/DB;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig;->isEnabledLoadExtension()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->enable_load_extension(Z)I

    .line 203
    iget-object p1, p0, Lorg/sqlite/core/DB;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig;->getBusyTimeout()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->busy_timeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract prepare(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public final declared-synchronized prepare(Lorg/sqlite/core/CoreStatement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p1, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 254
    iget-wide v0, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->finalize(Lorg/sqlite/core/CoreStatement;)I

    .line 257
    :cond_0
    iget-object v0, p1, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/sqlite/core/DB;->prepare(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    .line 258
    iget-object v0, p0, Lorg/sqlite/core/DB;->stmts:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    iget-wide v2, p1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 252
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract register_progress_handler(ILorg/sqlite/ProgressHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract reset(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract restore(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/core/DB$ProgressObserver;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_blob(J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_double(JD)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_error(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_int(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_long(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_null(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_text(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract shared_cache(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method final declared-synchronized sqlbind(JILjava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    add-int/lit8 v3, p3, 0x1

    if-nez p4, :cond_0

    .line 741
    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lorg/sqlite/core/DB;->bind_null(JI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 743
    :cond_0
    :try_start_1
    instance-of p3, p4, Ljava/lang/Integer;

    if-eqz p3, :cond_1

    .line 744
    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/sqlite/core/DB;->bind_int(JII)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 746
    :cond_1
    :try_start_2
    instance-of p3, p4, Ljava/lang/Short;

    if-eqz p3, :cond_2

    .line 747
    check-cast p4, Ljava/lang/Short;

    invoke-virtual {p4}, Ljava/lang/Short;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/sqlite/core/DB;->bind_int(JII)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 749
    :cond_2
    :try_start_3
    instance-of p3, p4, Ljava/lang/Long;

    if-eqz p3, :cond_3

    .line 750
    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/sqlite/core/DB;->bind_long(JIJ)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    .line 752
    :cond_3
    :try_start_4
    instance-of p3, p4, Ljava/lang/Float;

    if-eqz p3, :cond_4

    .line 753
    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v4

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/sqlite/core/DB;->bind_double(JID)I

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return p1

    .line 755
    :cond_4
    :try_start_5
    instance-of p3, p4, Ljava/lang/Double;

    if-eqz p3, :cond_5

    .line 756
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/sqlite/core/DB;->bind_double(JID)I

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return p1

    .line 758
    :cond_5
    :try_start_6
    instance-of p3, p4, Ljava/lang/String;

    if-eqz p3, :cond_6

    .line 759
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v3, p4}, Lorg/sqlite/core/DB;->bind_text(JILjava/lang/String;)I

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return p1

    .line 761
    :cond_6
    :try_start_7
    instance-of p3, p4, [B

    if-eqz p3, :cond_7

    .line 762
    check-cast p4, [B

    check-cast p4, [B

    invoke-virtual {p0, p1, p2, v3, p4}, Lorg/sqlite/core/DB;->bind_blob(JI[B)I

    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return p1

    .line 765
    :cond_7
    :try_start_8
    new-instance p1, Ljava/sql/SQLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected param type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract step(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method final throwex()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 909
    new-instance v0, Ljava/sql/SQLException;

    invoke-virtual {p0}, Lorg/sqlite/core/DB;->errmsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final throwex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 918
    invoke-direct {p0, p1}, Lorg/sqlite/core/DB;->newSQLException(I)Lorg/sqlite/SQLiteException;

    move-result-object p1

    throw p1
.end method

.method public abstract total_changes()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract value_blob(Lorg/sqlite/Function;I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract value_double(Lorg/sqlite/Function;I)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract value_int(Lorg/sqlite/Function;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract value_long(Lorg/sqlite/Function;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract value_text(Lorg/sqlite/Function;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract value_type(Lorg/sqlite/Function;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
