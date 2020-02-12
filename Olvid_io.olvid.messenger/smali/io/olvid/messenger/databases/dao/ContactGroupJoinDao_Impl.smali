.class public final Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;
.super Ljava/lang/Object;
.source "ContactGroupJoinDao_Impl.java"

# interfaces
.implements Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfContactGroupJoin:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/ContactGroupJoin;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfContactGroupJoin:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/olvid/messenger/databases/entity/ContactGroupJoin;",
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
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    new-instance v0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$1;-><init>(Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__insertionAdapterOfContactGroupJoin:Landroidx/room/EntityInsertionAdapter;

    .line 59
    new-instance v0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$2;-><init>(Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__deletionAdapterOfContactGroupJoin:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public countContactGroups([B[B)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x2

    const-string v1, "SELECT COUNT(*) FROM contact_group_join WHERE bytes_contact_identity = ?  AND bytes_owned_identity = ?"

    .line 360
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 363
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {v1, v2, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez p1, :cond_1

    .line 369
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 371
    :cond_1
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 373
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 374
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 377
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 382
    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_3
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 391
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 390
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 391
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 392
    throw p2
.end method

.method public delete(Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 101
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 103
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__deletionAdapterOfContactGroupJoin:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 104
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 107
    throw p1
.end method

.method public get([B[B[B)Lio/olvid/messenger/databases/entity/ContactGroupJoin;
    .locals 11

    const/4 v0, 0x3

    const-string v1, "SELECT * FROM contact_group_join WHERE bytes_group_owner_and_uid = ? AND bytes_contact_identity = ? AND bytes_owned_identity = ?"

    .line 309
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 312
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    const/4 p1, 0x2

    if-nez p3, :cond_1

    .line 318
    invoke-virtual {v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 320
    :cond_1
    invoke-virtual {v1, p1, p3}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_1
    if-nez p2, :cond_2

    .line 324
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 326
    :cond_2
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 328
    :goto_2
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 329
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p1, v1, p2, p3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "bytes_group_owner_and_uid"

    .line 331
    invoke-static {p1, p2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v0, "bytes_contact_identity"

    .line 332
    invoke-static {p1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "bytes_owned_identity"

    .line 333
    invoke-static {p1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "timestamp"

    .line 334
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 336
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 338
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 340
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 342
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 344
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 345
    new-instance p2, Lio/olvid/messenger/databases/entity/ContactGroupJoin;

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Lio/olvid/messenger/databases/entity/ContactGroupJoin;-><init>([B[B[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    move-object p2, p3

    .line 351
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 352
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 351
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 352
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 353
    throw p2
.end method

.method public getGroupContacts([B[B)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "SELECT contact.* FROM contact_table AS contact  INNER JOIN contact_group_join AS CGjoin  ON contact.bytes_contact_identity = CGjoin.bytes_contact_identity AND contact.bytes_owned_identity = CGjoin.bytes_owned_identity WHERE CGjoin.bytes_owned_identity = ?  AND CGjoin.bytes_group_owner_and_uid = ?  ORDER BY CASE WHEN contact.custom_display_name IS NULL THEN contact.display_name ELSE contact.custom_display_name END COLLATE NOCASE ASC"

    .line 170
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 173
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez p2, :cond_1

    .line 179
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 183
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "contact_table"

    const-string v0, "contact_group_join"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$3;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$3;-><init>(Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getGroupContactsSync([B[B)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-string v4, "SELECT contact.* FROM contact_table AS contact  INNER JOIN contact_group_join AS CGjoin  ON contact.bytes_contact_identity = CGjoin.bytes_contact_identity AND contact.bytes_owned_identity = CGjoin.bytes_owned_identity WHERE CGjoin.bytes_owned_identity = ?  AND CGjoin.bytes_group_owner_and_uid = ?"

    .line 113
    invoke-static {v4, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v4, v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez v2, :cond_1

    .line 122
    invoke-virtual {v4, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {v4, v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 126
    :goto_1
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 127
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "bytes_contact_identity"

    .line 129
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "bytes_owned_identity"

    .line 130
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "custom_display_name"

    .line 131
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "display_name"

    .line 132
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "identity_details"

    .line 133
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "new_published_details"

    .line 134
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_count"

    .line 135
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "established_channel_count"

    .line 136
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 137
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 141
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 143
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 145
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 147
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 149
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 151
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 153
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 155
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 156
    new-instance v12, Lio/olvid/messenger/databases/entity/Contact;

    move-object v13, v12

    invoke-direct/range {v13 .. v21}, Lio/olvid/messenger/databases/entity/Contact;-><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 157
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 161
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v11

    :catchall_0
    move-exception v0

    .line 161
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 163
    throw v0
.end method

.method public getGroupContactsWithTimestamp([B[B)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "SELECT contact.*, CDJoin.timestamp AS timestamp FROM contact_table AS contact  INNER JOIN contact_group_join AS CDjoin  ON contact.bytes_contact_identity = CDjoin.bytes_contact_identity AND contact.bytes_owned_identity = CDjoin.bytes_owned_identity INNER JOIN group_table AS groop  ON CDjoin.bytes_group_owner_and_uid = groop.bytes_group_owner_and_uid WHERE CDjoin.bytes_group_owner_and_uid = ?  AND CDjoin.bytes_owned_identity = ? ORDER BY (groop.bytes_group_owner_identity = contact.bytes_contact_identity) DESC,  CASE WHEN contact.custom_display_name IS NULL THEN contact.display_name ELSE contact.custom_display_name END COLLATE NOCASE ASC"

    .line 235
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 238
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {v1, v2, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez p1, :cond_1

    .line 244
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 246
    :cond_1
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 248
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "contact_table"

    const-string v0, "contact_group_join"

    const-string v2, "group_table"

    filled-new-array {p2, v0, v2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$4;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$4;-><init>(Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 89
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 91
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__insertionAdapterOfContactGroupJoin:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 95
    throw p1
.end method
