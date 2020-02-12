.class public final Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;
.super Ljava/lang/Object;
.source "AnonymousUsageLogItemDao_Impl.java"

# interfaces
.implements Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfAnonymousUsageLogItem:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfAnonymousUsageLogItem:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    new-instance v0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl$1;-><init>(Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__insertionAdapterOfAnonymousUsageLogItem:Landroidx/room/EntityInsertionAdapter;

    .line 57
    new-instance v0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl$2;-><init>(Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__deletionAdapterOfAnonymousUsageLogItem:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method


# virtual methods
.method public delete(Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 85
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__deletionAdapterOfAnonymousUsageLogItem:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 88
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 91
    throw p1
.end method

.method public deleteMany(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 97
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 99
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__deletionAdapterOfAnonymousUsageLogItem:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 100
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 103
    throw p1
.end method

.method public getAll()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT * FROM anonymous_usage_log"

    .line 109
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 110
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 111
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 113
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "pseudo"

    .line 114
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "api_key"

    .line 115
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "timestamp"

    .line 116
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "type"

    .line 117
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "extra_count"

    .line 118
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 119
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 123
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 125
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 127
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 129
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 131
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v18, v4

    goto :goto_1

    .line 134
    :cond_0
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v18, v11

    .line 136
    :goto_1
    new-instance v11, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/Integer;)V

    .line 137
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v11, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->id:J

    .line 138
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 143
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v10

    :catchall_0
    move-exception v0

    .line 142
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 143
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 144
    throw v0
.end method

.method public insert(Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 73
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 75
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__insertionAdapterOfAnonymousUsageLogItem:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 79
    throw p1
.end method
