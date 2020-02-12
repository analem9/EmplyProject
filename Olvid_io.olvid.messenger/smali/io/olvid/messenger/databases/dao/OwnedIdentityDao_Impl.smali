.class public final Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;
.super Ljava/lang/Object;
.source "OwnedIdentityDao_Impl.java"

# interfaces
.implements Lio/olvid/messenger/databases/dao/OwnedIdentityDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfOwnedIdentity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfOwnedIdentity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfOwnedIdentity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    new-instance v0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$1;-><init>(Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__insertionAdapterOfOwnedIdentity:Landroidx/room/EntityInsertionAdapter;

    .line 55
    new-instance v0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$2;-><init>(Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__deletionAdapterOfOwnedIdentity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 70
    new-instance v0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$3;-><init>(Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__updateAdapterOfOwnedIdentity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 22
    iget-object p0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public delete(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 114
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 116
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__deletionAdapterOfOwnedIdentity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 117
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 120
    throw p1
.end method

.method public get([B)Lio/olvid/messenger/databases/entity/OwnedIdentity;
    .locals 7

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM identity_table WHERE bytes_owned_identity = ?"

    .line 210
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    .line 213
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 217
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 218
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "bytes_owned_identity"

    .line 220
    invoke-static {p1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "display_name"

    .line 221
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "api_key_status"

    .line 222
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "unpublished_details"

    .line 223
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 225
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 227
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 229
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 233
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 234
    new-instance v5, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-direct {v5, v0, v2, v3, v4}, Lio/olvid/messenger/databases/entity/OwnedIdentity;-><init>([BLjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    .line 240
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 241
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    .line 240
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 241
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 242
    throw v0
.end method

.method public getAll()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM identity_table"

    .line 138
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "identity_table"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$4;

    invoke-direct {v4, p0, v1}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$4;-><init>(Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v0, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAllSync()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM identity_table"

    .line 178
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 180
    iget-object v2, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v2, "bytes_owned_identity"

    .line 182
    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "display_name"

    .line 183
    invoke-static {v0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "api_key_status"

    .line 184
    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "unpublished_details"

    .line 185
    invoke-static {v0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 186
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 190
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 192
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 194
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 196
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 197
    new-instance v11, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-direct {v11, v7, v8, v9, v10}, Lio/olvid/messenger/databases/entity/OwnedIdentity;-><init>([BLjava/lang/String;II)V

    .line 198
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v2

    .line 202
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 204
    throw v2
.end method

.method public insert(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 102
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 104
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__insertionAdapterOfOwnedIdentity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 105
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 108
    throw p1
.end method

.method public update(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 126
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 128
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__updateAdapterOfOwnedIdentity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 129
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 132
    throw p1
.end method
