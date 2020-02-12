.class public final Lio/olvid/messenger/databases/dao/FyleDao_Impl;
.super Ljava/lang/Object;
.source "FyleDao_Impl.java"

# interfaces
.implements Lio/olvid/messenger/databases/dao/FyleDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfFyle:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/Fyle;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfFyle:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/olvid/messenger/databases/entity/Fyle;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfFyle:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/Fyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 35
    new-instance v0, Lio/olvid/messenger/databases/dao/FyleDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/FyleDao_Impl$1;-><init>(Lio/olvid/messenger/databases/dao/FyleDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__insertionAdapterOfFyle:Landroidx/room/EntityInsertionAdapter;

    .line 56
    new-instance v0, Lio/olvid/messenger/databases/dao/FyleDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/FyleDao_Impl$2;-><init>(Lio/olvid/messenger/databases/dao/FyleDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__deletionAdapterOfFyle:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 67
    new-instance v0, Lio/olvid/messenger/databases/dao/FyleDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/FyleDao_Impl$3;-><init>(Lio/olvid/messenger/databases/dao/FyleDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__updateAdapterOfFyle:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/dao/FyleDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public delete(Lio/olvid/messenger/databases/entity/Fyle;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 107
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 109
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__deletionAdapterOfFyle:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 110
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 113
    throw p1
.end method

.method public getById(J)Lio/olvid/messenger/databases/entity/Fyle;
    .locals 6

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM fyle_table WHERE id = ?"

    .line 220
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 223
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 224
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "id"

    .line 226
    invoke-static {p1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "permanent_file_path"

    .line 227
    invoke-static {p1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "sha256"

    .line 228
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 230
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 234
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 235
    new-instance v3, Lio/olvid/messenger/databases/entity/Fyle;

    invoke-direct {v3, p2, v2}, Lio/olvid/messenger/databases/entity/Fyle;-><init>(Ljava/lang/String;[B)V

    .line 236
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lio/olvid/messenger/databases/entity/Fyle;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v3

    .line 242
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 243
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 242
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 243
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 244
    throw p2
.end method

.method public getBySha256([B)Lio/olvid/messenger/databases/entity/Fyle;
    .locals 6

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM fyle_table WHERE sha256 = ?"

    .line 250
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    .line 253
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 257
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 258
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "id"

    .line 260
    invoke-static {p1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "permanent_file_path"

    .line 261
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "sha256"

    .line 262
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 264
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 269
    new-instance v4, Lio/olvid/messenger/databases/entity/Fyle;

    invoke-direct {v4, v2, v3}, Lio/olvid/messenger/databases/entity/Fyle;-><init>(Ljava/lang/String;[B)V

    .line 270
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v4, Lio/olvid/messenger/databases/entity/Fyle;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 276
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 277
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    .line 276
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 277
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 278
    throw v0
.end method

.method public getDiscussionDraftFyles(J)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT fyle.*, FMjoin.* FROM fyle_table AS fyle  INNER JOIN fyle_message_join_with_status AS FMjoin  ON fyle.id = FMjoin.fyle_id WHERE FMjoin.message_id =  ( SELECT id FROM message_table WHERE status = 5 AND discussion_id = ? )"

    .line 131
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 134
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "fyle_table"

    const-string v0, "fyle_message_join_with_status"

    const-string v2, "message_table"

    filled-new-array {p2, v0, v2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lio/olvid/messenger/databases/dao/FyleDao_Impl$4;

    invoke-direct {v0, p0, v1}, Lio/olvid/messenger/databases/dao/FyleDao_Impl$4;-><init>(Lio/olvid/messenger/databases/dao/FyleDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getStray()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Fyle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT fyle.* FROM fyle_table AS fyle  LEFT JOIN fyle_message_join_with_status AS FMJoin  ON fyle.id = FMjoin.fyle_id WHERE FMjoin.message_id IS NULL"

    .line 284
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 286
    iget-object v2, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v2, "id"

    .line 288
    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "permanent_file_path"

    .line 289
    invoke-static {v0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "sha256"

    .line 290
    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 291
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 295
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 297
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 298
    new-instance v8, Lio/olvid/messenger/databases/entity/Fyle;

    invoke-direct {v8, v6, v7}, Lio/olvid/messenger/databases/entity/Fyle;-><init>(Ljava/lang/String;[B)V

    .line 299
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v8, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    .line 300
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 305
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception v2

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 305
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 306
    throw v2
.end method

.method public insert(Lio/olvid/messenger/databases/entity/Fyle;)J
    .locals 2

    .line 93
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 94
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 96
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__insertionAdapterOfFyle:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 97
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 101
    throw p1
.end method

.method public update(Lio/olvid/messenger/databases/entity/Fyle;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 119
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 121
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__updateAdapterOfFyle:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 122
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 125
    throw p1
.end method
