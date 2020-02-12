.class public final Lio/olvid/messenger/databases/dao/ContactDao_Impl;
.super Ljava/lang/Object;
.source "ContactDao_Impl.java"

# interfaces
.implements Lio/olvid/messenger/databases/dao/ContactDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfContact:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfContact:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfContact:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/Contact;",
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
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    new-instance v0, Lio/olvid/messenger/databases/dao/ContactDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$1;-><init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__insertionAdapterOfContact:Landroidx/room/EntityInsertionAdapter;

    .line 71
    new-instance v0, Lio/olvid/messenger/databases/dao/ContactDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$2;-><init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__deletionAdapterOfContact:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 91
    new-instance v0, Lio/olvid/messenger/databases/dao/ContactDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$3;-><init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__updateAdapterOfContact:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/dao/ContactDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 22
    iget-object p0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public delete(Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 156
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 158
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__deletionAdapterOfContact:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 159
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 162
    throw p1
.end method

.method public get([B[B)Lio/olvid/messenger/databases/entity/Contact;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-string v4, "SELECT * FROM contact_table WHERE bytes_contact_identity = ? AND bytes_owned_identity = ?"

    .line 455
    invoke-static {v4, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v2, :cond_0

    .line 458
    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {v4, v5, v2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez v0, :cond_1

    .line 464
    invoke-virtual {v4, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 466
    :cond_1
    invoke-virtual {v4, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 468
    :goto_1
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 469
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "bytes_contact_identity"

    .line 471
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "bytes_owned_identity"

    .line 472
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "custom_display_name"

    .line 473
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "display_name"

    .line 474
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "identity_details"

    .line 475
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "new_published_details"

    .line 476
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "device_count"

    .line 477
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "established_channel_count"

    .line 478
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 480
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 482
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 484
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 486
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 488
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 490
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 492
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 494
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 496
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 497
    new-instance v0, Lio/olvid/messenger/databases/entity/Contact;

    move-object v13, v0

    invoke-direct/range {v13 .. v21}, Lio/olvid/messenger/databases/entity/Contact;-><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 503
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 504
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 503
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 504
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 505
    throw v0
.end method

.method public getAllForOwnedIdentity([B)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM contact_table WHERE bytes_owned_identity = ?  ORDER BY CASE WHEN custom_display_name IS NULL THEN display_name ELSE custom_display_name END COLLATE NOCASE ASC"

    .line 180
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    .line 183
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 187
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v0, "contact_table"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lio/olvid/messenger/databases/dao/ContactDao_Impl$4;

    invoke-direct {v3, p0, v1}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$4;-><init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, v0, v2, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllForOwnedIdentitySync([B)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "SELECT * FROM contact_table WHERE bytes_owned_identity = ?  ORDER BY CASE WHEN custom_display_name IS NULL THEN display_name ELSE custom_display_name END COLLATE NOCASE ASC"

    .line 238
    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 245
    :goto_0
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 246
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "bytes_contact_identity"

    .line 248
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "bytes_owned_identity"

    .line 249
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "custom_display_name"

    .line 250
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "display_name"

    .line 251
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "identity_details"

    .line 252
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "new_published_details"

    .line 253
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_count"

    .line 254
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "established_channel_count"

    .line 255
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 256
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 260
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 262
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 264
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 266
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 268
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 270
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 272
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 274
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 275
    new-instance v12, Lio/olvid/messenger/databases/entity/Contact;

    move-object v13, v12

    invoke-direct/range {v13 .. v21}, Lio/olvid/messenger/databases/entity/Contact;-><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 276
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 280
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 281
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v11

    :catchall_0
    move-exception v0

    .line 280
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 281
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 282
    throw v0
.end method

.method public getAllForOwnedIdentityWithChannel([B)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM contact_table WHERE bytes_owned_identity = ?  AND established_channel_count > 0  ORDER BY CASE WHEN custom_display_name IS NULL THEN display_name ELSE custom_display_name END COLLATE NOCASE ASC"

    .line 288
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    .line 291
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 295
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v0, "contact_table"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lio/olvid/messenger/databases/dao/ContactDao_Impl$5;

    invoke-direct {v3, p0, v1}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$5;-><init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, v0, v2, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllForOwnedIdentityWithChannelExcludingGroup([B[B)Landroidx/lifecycle/LiveData;
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

    const/4 v0, 0x5

    const-string v1, " SELECT * FROM ( SELECT contact.* FROM contact_table AS contact  WHERE bytes_owned_identity = ?  AND established_channel_count > 0  EXCEPT SELECT contact.* FROM contact_table AS contact  INNER JOIN contact_group_join AS membersjoin  ON membersjoin.bytes_contact_identity = contact.bytes_contact_identity AND membersjoin.bytes_owned_identity = contact.bytes_owned_identity WHERE membersjoin.bytes_owned_identity = ?  AND membersjoin.bytes_group_owner_and_uid = ?  EXCEPT SELECT contact.* FROM contact_table AS contact  INNER JOIN pending_group_member_table AS pendingmember  ON pendingmember.bytes_identity = contact.bytes_contact_identity AND pendingmember.bytes_owned_identity = contact.bytes_owned_identity WHERE pendingmember.bytes_owned_identity = ?  AND pendingmember.bytes_group_owner_and_uid = ? ) ORDER BY CASE WHEN custom_display_name IS NULL THEN display_name ELSE custom_display_name END COLLATE NOCASE ASC"

    .line 641
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 644
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    const/4 v2, 0x2

    if-nez p1, :cond_1

    .line 650
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 652
    :cond_1
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_1
    const/4 v2, 0x3

    if-nez p2, :cond_2

    .line 656
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 658
    :cond_2
    invoke-virtual {v1, v2, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_2
    const/4 v2, 0x4

    if-nez p1, :cond_3

    .line 662
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_3

    .line 664
    :cond_3
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_3
    if-nez p2, :cond_4

    .line 668
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_4

    .line 670
    :cond_4
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 672
    :goto_4
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "contact_table"

    const-string v0, "contact_group_join"

    const-string v2, "pending_group_member_table"

    filled-new-array {p2, v0, v2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lio/olvid/messenger/databases/dao/ContactDao_Impl$9;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$9;-><init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllForOwnedIdentityWithChannelExcludingOne([B[B)Landroidx/lifecycle/LiveData;
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

    const-string v1, "SELECT * FROM contact_table WHERE bytes_owned_identity = ? AND bytes_contact_identity != ? AND established_channel_count > 0  ORDER BY CASE WHEN custom_display_name IS NULL THEN display_name ELSE custom_display_name END COLLATE NOCASE ASC"

    .line 347
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 350
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez p2, :cond_1

    .line 356
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 358
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 360
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "contact_table"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lio/olvid/messenger/databases/dao/ContactDao_Impl$6;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$6;-><init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllInGroupOrPending([B[B)Landroidx/lifecycle/LiveData;
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

    const/4 v0, 0x4

    const-string v1, "SELECT contact.* FROM contact_table AS contact  INNER JOIN contact_group_join AS membersjoin  ON membersjoin.bytes_contact_identity = contact.bytes_contact_identity AND membersjoin.bytes_owned_identity = contact.bytes_owned_identity WHERE membersjoin.bytes_owned_identity = ?  AND membersjoin.bytes_group_owner_and_uid = ?  UNION SELECT contact.* FROM contact_table AS contact  INNER JOIN pending_group_member_table AS pendingmember  ON pendingmember.bytes_identity = contact.bytes_contact_identity AND pendingmember.bytes_owned_identity = contact.bytes_owned_identity WHERE pendingmember.bytes_owned_identity = ?  AND pendingmember.bytes_group_owner_and_uid = ?"

    .line 724
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 727
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 729
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    const/4 v2, 0x2

    if-nez p2, :cond_1

    .line 733
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 735
    :cond_1
    invoke-virtual {v1, v2, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_1
    const/4 v2, 0x3

    if-nez p1, :cond_2

    .line 739
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 741
    :cond_2
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_2
    if-nez p2, :cond_3

    .line 745
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_3

    .line 747
    :cond_3
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 749
    :goto_3
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "contact_table"

    const-string v0, "contact_group_join"

    const-string v2, "pending_group_member_table"

    filled-new-array {p2, v0, v2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lio/olvid/messenger/databases/dao/ContactDao_Impl$10;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$10;-><init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllSync()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT * FROM contact_table"

    .line 411
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 412
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 413
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "bytes_contact_identity"

    .line 415
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "bytes_owned_identity"

    .line 416
    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "custom_display_name"

    .line 417
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "display_name"

    .line 418
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "identity_details"

    .line 419
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "new_published_details"

    .line 420
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_count"

    .line 421
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "established_channel_count"

    .line 422
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 423
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 424
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 427
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 429
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 431
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 433
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 435
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 437
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 439
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 441
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 442
    new-instance v12, Lio/olvid/messenger/databases/entity/Contact;

    move-object v13, v12

    invoke-direct/range {v13 .. v21}, Lio/olvid/messenger/databases/entity/Contact;-><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 443
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 447
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 448
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v11

    :catchall_0
    move-exception v0

    .line 447
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 448
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 449
    throw v0
.end method

.method public getAsList([B[B)Landroidx/lifecycle/LiveData;
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

    const-string v1, "SELECT * FROM contact_table WHERE bytes_contact_identity = ? AND bytes_owned_identity = ?"

    .line 576
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 579
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {v1, v2, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez p1, :cond_1

    .line 585
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 587
    :cond_1
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 589
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "contact_table"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lio/olvid/messenger/databases/dao/ContactDao_Impl$8;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$8;-><init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAsync([B[B)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "SELECT * FROM contact_table WHERE bytes_contact_identity = ? AND bytes_owned_identity = ?"

    .line 511
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 514
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez p2, :cond_1

    .line 520
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 522
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 524
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "contact_table"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lio/olvid/messenger/databases/dao/ContactDao_Impl$7;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$7;-><init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 144
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 146
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__insertionAdapterOfContact:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 147
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 150
    throw p1
.end method

.method public update(Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 168
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 170
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__updateAdapterOfContact:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 171
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 174
    throw p1
.end method
