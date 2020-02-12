.class public final Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;
.super Ljava/lang/Object;
.source "MessageRecipientInfoDao_Impl.java"

# interfaces
.implements Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfMessageRecipientInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfMessageRecipientInfo:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfMessageRecipientInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 37
    new-instance v0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$1;-><init>(Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__insertionAdapterOfMessageRecipientInfo:Landroidx/room/EntityInsertionAdapter;

    .line 83
    new-instance v0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$2;-><init>(Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__deletionAdapterOfMessageRecipientInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 99
    new-instance v0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$3;-><init>(Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__updateAdapterOfMessageRecipientInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public varargs delete([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 168
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 170
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__deletionAdapterOfMessageRecipientInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 171
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 174
    throw p1
.end method

.method public get(J[B)Lio/olvid/messenger/databases/entity/MessageRecipientInfo;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const/4 v2, 0x2

    const-string v3, "SELECT * FROM message_recipient_info_table WHERE message_id = ?  AND bytes_contact_identity = ?"

    .line 436
    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    const/4 v4, 0x1

    move-wide/from16 v5, p1

    .line 438
    invoke-virtual {v3, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez v0, :cond_0

    .line 441
    invoke-virtual {v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 445
    :goto_0
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 446
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "message_id"

    .line 448
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "bytes_contact_identity"

    .line 449
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "return_receipt_nonce"

    .line 450
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "return_receipt_key"

    .line 451
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "engine_message_identifier"

    .line 452
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "timestamp_sent"

    .line 453
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "timestamp_delivered"

    .line 454
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timestamp_read"

    .line 455
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 457
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 459
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 461
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 463
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 465
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    .line 467
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 469
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v20, v4

    goto :goto_1

    .line 472
    :cond_1
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v20, v0

    .line 475
    :goto_1
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v21, v4

    goto :goto_2

    .line 478
    :cond_2
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v21, v0

    .line 481
    :goto_2
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    move-object/from16 v22, v4

    goto :goto_4

    .line 484
    :cond_3
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_3

    .line 486
    :goto_4
    new-instance v0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    move-object v13, v0

    invoke-direct/range {v13 .. v22}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;-><init>(J[B[B[B[BLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_4
    move-object v0, v4

    .line 492
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 493
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 492
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 493
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 494
    throw v0
.end method

.method public getAllByEngineMessageIdentifier([B)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "SELECT * FROM message_recipient_info_table WHERE engine_message_identifier = ?"

    .line 192
    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 199
    :goto_0
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 200
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "message_id"

    .line 202
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "bytes_contact_identity"

    .line 203
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "return_receipt_nonce"

    .line 204
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "return_receipt_key"

    .line 205
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "engine_message_identifier"

    .line 206
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "timestamp_sent"

    .line 207
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "timestamp_delivered"

    .line 208
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timestamp_read"

    .line 209
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 210
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 214
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 216
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 218
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    .line 220
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 222
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    .line 224
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v21, v4

    goto :goto_2

    .line 227
    :cond_1
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v21, v13

    .line 230
    :goto_2
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v22, v4

    goto :goto_3

    .line 233
    :cond_2
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v22, v13

    .line 236
    :goto_3
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v23, v4

    goto :goto_4

    .line 239
    :cond_3
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v23, v13

    .line 241
    :goto_4
    new-instance v13, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    move-object v14, v13

    invoke-direct/range {v14 .. v23}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;-><init>(J[B[B[B[BLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 242
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 246
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 247
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v12

    :catchall_0
    move-exception v0

    .line 246
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 247
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 248
    throw v0
.end method

.method public getAllByMessageId(J)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM message_recipient_info_table WHERE message_id = ?"

    .line 254
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move-wide/from16 v3, p1

    .line 256
    invoke-virtual {v2, v0, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 257
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 258
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "message_id"

    .line 260
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "bytes_contact_identity"

    .line 261
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "return_receipt_nonce"

    .line 262
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "return_receipt_key"

    .line 263
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "engine_message_identifier"

    .line 264
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "timestamp_sent"

    .line 265
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "timestamp_delivered"

    .line 266
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timestamp_read"

    .line 267
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 268
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 272
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 274
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 276
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    .line 278
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 280
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    .line 282
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v21, v3

    goto :goto_1

    .line 285
    :cond_0
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v21, v13

    .line 288
    :goto_1
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v22, v3

    goto :goto_2

    .line 291
    :cond_1
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v22, v13

    .line 294
    :goto_2
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v23, v3

    goto :goto_3

    .line 297
    :cond_2
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v23, v13

    .line 299
    :goto_3
    new-instance v13, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    move-object v14, v13

    invoke-direct/range {v14 .. v23}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;-><init>(J[B[B[B[BLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 300
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 304
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 305
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v12

    :catchall_0
    move-exception v0

    .line 304
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 305
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 306
    throw v0
.end method

.method public getAllByMessageIdLiveAndSorted(J)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM message_recipient_info_table WHERE message_id = ?  ORDER BY CASE WHEN timestamp_read IS NULL THEN 1 ELSE 0 END, timestamp_read,  CASE WHEN timestamp_delivered IS NULL THEN 1 ELSE 0 END, timestamp_delivered,  CASE WHEN timestamp_sent IS NULL THEN 1 ELSE 0 END, timestamp_sent"

    .line 312
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 314
    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 315
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "message_recipient_info_table"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$4;

    invoke-direct {v0, p0, v1}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$4;-><init>(Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllNotProcessedByContactIdentity([B[B)Ljava/util/List;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao$MessageRecipientInfoAndMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-string v4, "SELECT mri.message_id AS mri_message_id,  mri.bytes_contact_identity AS mri_bytes_contact_identity,  mri.return_receipt_nonce AS mri_return_receipt_nonce,  mri.return_receipt_key AS mri_return_receipt_key,  mri.engine_message_identifier AS mri_engine_message_identifier,  mri.timestamp_sent AS mri_timestamp_sent,  mri.timestamp_delivered AS mri_timestamp_delivered,  mri.timestamp_read AS mri_timestamp_read,  message.* FROM message_recipient_info_table AS mri  INNER JOIN message_table AS message  ON message.id = mri.message_id WHERE mri.bytes_contact_identity = ?  AND message.sender_identifier = ?  AND mri.engine_message_identifier IS NULL"

    .line 501
    invoke-static {v4, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 504
    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 506
    :cond_0
    invoke-virtual {v4, v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez v2, :cond_1

    .line 510
    invoke-virtual {v4, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 512
    :cond_1
    invoke-virtual {v4, v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 514
    :goto_1
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 515
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "mri_message_id"

    .line 517
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "mri_bytes_contact_identity"

    .line 518
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "mri_return_receipt_nonce"

    .line 519
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "mri_return_receipt_key"

    .line 520
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "mri_engine_message_identifier"

    .line 521
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "mri_timestamp_sent"

    .line 522
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "mri_timestamp_delivered"

    .line 523
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "mri_timestamp_read"

    .line 524
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 525
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "sender_sequence_number"

    .line 526
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "content_body"

    .line 527
    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "json_reply"

    .line 528
    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "json_return_receipt"

    .line 529
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v1, "sort_index"

    .line 530
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v4

    :try_start_1
    const-string v4, "timestamp"

    .line 531
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 p2, v4

    const-string v4, "status"

    .line 532
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v17, v4

    const-string v4, "message_type"

    .line 533
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    const-string v4, "discussion_id"

    .line 534
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    const-string v4, "engine_message_identifier"

    .line 535
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    const-string v4, "sender_identifier"

    .line 536
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    const-string v4, "sender_thread_identifier"

    .line 537
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "total_attachment_count"

    .line 538
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    const-string v4, "image_count"

    .line 539
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    .line 540
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v25, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 541
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 544
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_7

    .line 546
    :cond_3
    :goto_3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 548
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 550
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    .line 552
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v31

    .line 554
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    .line 556
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v33, 0x0

    goto :goto_4

    .line 559
    :cond_4
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v33, v1

    .line 562
    :goto_4
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v34, 0x0

    goto :goto_5

    .line 565
    :cond_5
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v34, v1

    .line 568
    :goto_5
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v35, 0x0

    goto :goto_6

    .line 571
    :cond_6
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v35, v1

    .line 573
    :goto_6
    new-instance v1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    move-object/from16 v26, v1

    invoke-direct/range {v26 .. v35}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;-><init>(J[B[B[B[BLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 578
    :goto_7
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_8

    move/from16 v26, v0

    move/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_9

    move/from16 v25, v5

    move/from16 v5, p2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_a

    move/from16 p2, v6

    move/from16 v6, v17

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v17, v7

    move/from16 v7, v18

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_c

    move/from16 v18, v8

    move/from16 v8, v19

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_d

    move/from16 v19, v9

    move/from16 v9, v20

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_e

    move/from16 v20, v10

    move/from16 v10, v21

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_f

    move/from16 v21, v11

    move/from16 v11, v22

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_10

    move-object/from16 v22, v4

    move/from16 v4, v23

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_11

    move-object/from16 v23, v1

    move/from16 v1, v24

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-nez v24, :cond_7

    goto :goto_8

    :cond_7
    move/from16 v24, v0

    move/from16 v27, v3

    move/from16 v28, v4

    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_8
    move/from16 v26, v0

    move/from16 v0, v25

    :cond_9
    move/from16 v25, v5

    move/from16 v5, p2

    :cond_a
    move/from16 p2, v6

    move/from16 v6, v17

    :cond_b
    move/from16 v17, v7

    move/from16 v7, v18

    :cond_c
    move/from16 v18, v8

    move/from16 v8, v19

    :cond_d
    move/from16 v19, v9

    move/from16 v9, v20

    :cond_e
    move/from16 v20, v10

    move/from16 v10, v21

    :cond_f
    move/from16 v21, v11

    move/from16 v11, v22

    :cond_10
    move-object/from16 v22, v4

    move/from16 v4, v23

    :cond_11
    move-object/from16 v23, v1

    move/from16 v1, v24

    .line 580
    :goto_8
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 582
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 584
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 586
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 588
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v33

    .line 590
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 592
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 594
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 596
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 598
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v41

    .line 600
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v42

    .line 603
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 604
    invoke-static/range {v24 .. v24}, Lio/olvid/messenger/databases/ObvTypeConverters;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v43

    .line 606
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 608
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    move/from16 v24, v0

    .line 609
    new-instance v0, Lio/olvid/messenger/databases/entity/Message;

    move-object/from16 v27, v0

    invoke-direct/range {v27 .. v45}, Lio/olvid/messenger/databases/entity/Message;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DJIIJ[B[BLjava/util/UUID;II)V

    move/from16 v27, v3

    move/from16 v28, v4

    .line 610
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    .line 614
    :goto_9
    new-instance v3, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao$MessageRecipientInfoAndMessage;

    invoke-direct {v3}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao$MessageRecipientInfoAndMessage;-><init>()V

    move-object/from16 v4, v23

    .line 615
    iput-object v4, v3, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao$MessageRecipientInfoAndMessage;->messageRecipientInfo:Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    .line 616
    iput-object v0, v3, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao$MessageRecipientInfoAndMessage;->message:Lio/olvid/messenger/databases/entity/Message;

    move-object/from16 v0, v22

    .line 617
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    move/from16 v22, v11

    move/from16 v11, v21

    move/from16 v0, v26

    move/from16 v3, v27

    move/from16 v23, v28

    move/from16 v21, v10

    move/from16 v10, v20

    move/from16 v20, v9

    move/from16 v9, v19

    move/from16 v19, v8

    move/from16 v8, v18

    move/from16 v18, v7

    move/from16 v7, v17

    move/from16 v17, v6

    move/from16 v6, p2

    move/from16 p2, v5

    move/from16 v5, v25

    move/from16 v25, v24

    move/from16 v24, v1

    goto/16 :goto_2

    :cond_12
    move-object v0, v4

    .line 621
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 622
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    .line 621
    :goto_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 622
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 623
    throw v0
.end method

.method public getAllNotSentByMessageId(J)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM message_recipient_info_table WHERE message_id = ?  AND timestamp_sent IS NULL"

    .line 378
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move-wide/from16 v3, p1

    .line 380
    invoke-virtual {v2, v0, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 381
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 382
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "message_id"

    .line 384
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "bytes_contact_identity"

    .line 385
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "return_receipt_nonce"

    .line 386
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "return_receipt_key"

    .line 387
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "engine_message_identifier"

    .line 388
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "timestamp_sent"

    .line 389
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "timestamp_delivered"

    .line 390
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timestamp_read"

    .line 391
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 392
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 396
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 398
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 400
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    .line 402
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 404
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    .line 406
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v21, v3

    goto :goto_1

    .line 409
    :cond_0
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v21, v13

    .line 412
    :goto_1
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v22, v3

    goto :goto_2

    .line 415
    :cond_1
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v22, v13

    .line 418
    :goto_2
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v23, v3

    goto :goto_3

    .line 421
    :cond_2
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v23, v13

    .line 423
    :goto_3
    new-instance v13, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    move-object v14, v13

    invoke-direct/range {v14 .. v23}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;-><init>(J[B[B[B[BLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 424
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 428
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 429
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v12

    :catchall_0
    move-exception v0

    .line 428
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 429
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 430
    throw v0
.end method

.method public getFromReturnReceipt([B[B[B)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x3

    const-string v5, "SELECT * FROM message_recipient_info_table WHERE bytes_contact_identity = ? AND return_receipt_nonce = ? AND return_receipt_key = ?"

    .line 656
    invoke-static {v5, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 659
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 661
    :cond_0
    invoke-virtual {v5, v6, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    const/4 v0, 0x2

    if-nez v2, :cond_1

    .line 665
    invoke-virtual {v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 667
    :cond_1
    invoke-virtual {v5, v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_1
    if-nez v3, :cond_2

    .line 671
    invoke-virtual {v5, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 673
    :cond_2
    invoke-virtual {v5, v4, v3}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 675
    :goto_2
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 676
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v5, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "message_id"

    .line 678
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "bytes_contact_identity"

    .line 679
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v6, "return_receipt_nonce"

    .line 680
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "return_receipt_key"

    .line 681
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "engine_message_identifier"

    .line 682
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "timestamp_sent"

    .line 683
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "timestamp_delivered"

    .line 684
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timestamp_read"

    .line 685
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 686
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 687
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 690
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 692
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 694
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    .line 696
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 698
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    .line 700
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v21, v3

    goto :goto_4

    .line 703
    :cond_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v21, v13

    .line 706
    :goto_4
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v22, v3

    goto :goto_5

    .line 709
    :cond_4
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v22, v13

    .line 712
    :goto_5
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v23, v3

    goto :goto_6

    .line 715
    :cond_5
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v23, v13

    .line 717
    :goto_6
    new-instance v13, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    move-object v14, v13

    invoke-direct/range {v14 .. v23}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;-><init>(J[B[B[B[BLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 718
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 722
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 723
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v12

    :catchall_0
    move-exception v0

    .line 722
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 723
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 724
    throw v0
.end method

.method public getReturnReceiptKeysForNonce([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT DISTINCT return_receipt_key FROM message_recipient_info_table WHERE return_receipt_nonce = ?"

    .line 629
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    .line 632
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 636
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 637
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 639
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 642
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 643
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 647
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 648
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 647
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 648
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 649
    throw v0
.end method

.method public varargs insert([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 156
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 158
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__insertionAdapterOfMessageRecipientInfo:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 159
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 162
    throw p1
.end method

.method public varargs update([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 180
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 182
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__updateAdapterOfMessageRecipientInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 183
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 186
    throw p1
.end method
