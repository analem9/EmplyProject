.class public final Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;
.super Ljava/lang/Object;
.source "FyleMessageJoinWithStatusDao_Impl.java"

# interfaces
.implements Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfFyleMessageJoinWithStatus:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfFyleMessageJoinWithStatus:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfFyleMessageJoinWithStatus:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 39
    new-instance v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$1;-><init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__insertionAdapterOfFyleMessageJoinWithStatus:Landroidx/room/EntityInsertionAdapter;

    .line 84
    new-instance v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$2;-><init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__deletionAdapterOfFyleMessageJoinWithStatus:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 96
    new-instance v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$3;-><init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__updateAdapterOfFyleMessageJoinWithStatus:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 143
    new-instance v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$4;-><init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public countFylesForMessage(J)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT COUNT(*) FROM fyle_message_join_with_status WHERE message_id = ?"

    .line 235
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 237
    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 238
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 239
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 242
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 256
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 255
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 256
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 257
    throw p2
.end method

.method public countMessageForFyle(J)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT COUNT(*) FROM fyle_message_join_with_status WHERE fyle_id = ?"

    .line 263
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 266
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 267
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 270
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 284
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 283
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 284
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 285
    throw p2
.end method

.method public delete(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 167
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 169
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__deletionAdapterOfFyleMessageJoinWithStatus:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 170
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 173
    throw p1
.end method

.method public deleteById(JJ)V
    .locals 2

    .line 190
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 191
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 193
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 195
    invoke-interface {v0, p1, p3, p4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 196
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 198
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 199
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 202
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 201
    iget-object p2, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 202
    iget-object p2, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 203
    throw p1
.end method

.method public get(JJ)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;
    .locals 31

    move-object/from16 v1, p0

    const/4 v0, 0x2

    const-string v2, "SELECT * FROM fyle_message_join_with_status WHERE fyle_id = ? AND message_id = ?"

    .line 759
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v3, 0x1

    move-wide/from16 v4, p1

    .line 761
    invoke-virtual {v2, v3, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v3, p3

    .line 763
    invoke-virtual {v2, v0, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 764
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 765
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "fyle_id"

    .line 767
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "message_id"

    .line 768
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "bytes_owned_identity"

    .line 769
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_path"

    .line 770
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_name"

    .line 771
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "file_type"

    .line 772
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    .line 773
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "size"

    .line 774
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    .line 775
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "engine_message_identifier"

    .line 776
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "engine_number"

    .line 777
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 779
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 781
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 783
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 785
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 787
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 789
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 791
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 793
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 795
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 797
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v28

    .line 799
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 801
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move-object/from16 v30, v3

    goto :goto_1

    .line 804
    :cond_0
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 806
    :goto_1
    new-instance v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v30}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;-><init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    move-object v0, v3

    .line 812
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 813
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 812
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 813
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 814
    throw v0
.end method

.method public getByEngineIdentifierAndNumber([BI)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x2

    const-string v3, "SELECT * FROM fyle_message_join_with_status WHERE engine_message_identifier = ? AND engine_number = ?"

    .line 521
    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 524
    invoke-virtual {v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 526
    :cond_0
    invoke-virtual {v3, v4, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    move/from16 v0, p2

    int-to-long v4, v0

    .line 529
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 530
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 531
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "fyle_id"

    .line 533
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "message_id"

    .line 534
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "bytes_owned_identity"

    .line 535
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_path"

    .line 536
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_name"

    .line 537
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "file_type"

    .line 538
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    .line 539
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "size"

    .line 540
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    .line 541
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "engine_message_identifier"

    .line 542
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "engine_number"

    .line 543
    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 545
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 547
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 549
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 551
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 553
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 555
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 557
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 559
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 561
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 563
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v28

    .line 565
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 567
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    move-object/from16 v30, v4

    goto :goto_2

    .line 570
    :cond_1
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 572
    :goto_2
    new-instance v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v30}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;-><init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_2
    move-object v0, v4

    .line 578
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 579
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 578
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 579
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 580
    throw v0
.end method

.method public getDownloading()Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT * FROM fyle_message_join_with_status WHERE status IN (1,0)"

    .line 643
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 644
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 645
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "fyle_id"

    .line 647
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "message_id"

    .line 648
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "bytes_owned_identity"

    .line 649
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_path"

    .line 650
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_name"

    .line 651
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "file_type"

    .line 652
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    .line 653
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "size"

    .line 654
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    .line 655
    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "engine_message_identifier"

    .line 656
    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "engine_number"

    .line 657
    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 658
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 659
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 662
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 664
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 666
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 668
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 670
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 672
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 674
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 676
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 678
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v28

    .line 680
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 682
    invoke-interface {v3, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v30, 0x0

    goto :goto_1

    .line 685
    :cond_0
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v30, v4

    .line 687
    :goto_1
    new-instance v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v30}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;-><init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V

    .line 688
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 692
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 693
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v15

    :catchall_0
    move-exception v0

    .line 692
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 693
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 694
    throw v0
.end method

.method public getForFyleId(J)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM fyle_message_join_with_status WHERE fyle_id = ?"

    .line 700
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move-wide/from16 v3, p1

    .line 702
    invoke-virtual {v2, v0, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 703
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 704
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "fyle_id"

    .line 706
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "message_id"

    .line 707
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "bytes_owned_identity"

    .line 708
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_path"

    .line 709
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_name"

    .line 710
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "file_type"

    .line 711
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    .line 712
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "size"

    .line 713
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    .line 714
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "engine_message_identifier"

    .line 715
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "engine_number"

    .line 716
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 717
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 718
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 721
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 723
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 725
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 727
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 729
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 731
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 733
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 735
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 737
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v28

    .line 739
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 741
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v30, 0x0

    goto :goto_1

    .line 744
    :cond_0
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v30, v3

    .line 746
    :goto_1
    new-instance v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v30}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;-><init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V

    .line 747
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 751
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 752
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v15

    :catchall_0
    move-exception v0

    .line 751
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 752
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 753
    throw v0
.end method

.method public getFylesAndStatusForMessage(J)Landroidx/lifecycle/LiveData;
    .locals 2
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

    const-string v1, "SELECT fyle.*, FMjoin.* FROM fyle_table AS fyle  INNER JOIN fyle_message_join_with_status AS FMjoin  ON fyle.id = FMjoin.fyle_id WHERE FMjoin.message_id = ? ORDER BY FMjoin.engine_number ASC"

    .line 431
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 433
    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 434
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "fyle_table"

    const-string v0, "fyle_message_join_with_status"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$5;

    invoke-direct {v0, p0, v1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$5;-><init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getFylesAndStatusForMessageSync(J)Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT fyle.*, FMjoin.* FROM fyle_table AS fyle  INNER JOIN fyle_message_join_with_status AS FMjoin  ON fyle.id = FMjoin.fyle_id WHERE FMjoin.message_id = ? ORDER BY FMjoin.engine_number ASC"

    .line 291
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move-wide/from16 v3, p1

    .line 293
    invoke-virtual {v2, v0, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 294
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 295
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    .line 297
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "permanent_file_path"

    .line 298
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "sha256"

    .line 299
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "fyle_id"

    .line 300
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "message_id"

    .line 301
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "bytes_owned_identity"

    .line 302
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "file_path"

    .line 303
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "file_name"

    .line 304
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "file_type"

    .line 305
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "status"

    .line 306
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "size"

    .line 307
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "progress"

    .line 308
    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "engine_message_identifier"

    .line 309
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v1, "engine_number"

    .line 310
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 311
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    move/from16 p2, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 315
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v17, v5

    move/from16 v18, v6

    const/4 v6, 0x0

    move-object v5, v2

    goto :goto_2

    .line 317
    :cond_1
    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v17, v5

    .line 319
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    move/from16 v18, v6

    .line 320
    new-instance v6, Lio/olvid/messenger/databases/entity/Fyle;

    invoke-direct {v6, v1, v5}, Lio/olvid/messenger/databases/entity/Fyle;-><init>(Ljava/lang/String;[B)V

    move-object v5, v2

    .line 321
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    .line 326
    :goto_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v1, p2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    move/from16 p2, v0

    const/4 v2, 0x0

    goto :goto_5

    :cond_3
    move/from16 v1, p2

    .line 328
    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 330
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 332
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 334
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 336
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 338
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 340
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 342
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 344
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v31

    .line 346
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    .line 348
    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v33, 0x0

    goto :goto_4

    .line 351
    :cond_4
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v33, v2

    .line 353
    :goto_4
    new-instance v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v33}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;-><init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V

    move/from16 p2, v0

    .line 357
    :goto_5
    new-instance v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    invoke-direct {v0}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;-><init>()V

    .line 358
    iput-object v6, v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    .line 359
    iput-object v2, v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 360
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, p2

    move/from16 p2, v1

    move-object v2, v5

    move/from16 v5, v17

    move/from16 v6, v18

    goto/16 :goto_0

    :cond_5
    move-object v5, v2

    .line 364
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 365
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 364
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 365
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 366
    throw v0
.end method

.method public getMessageIdsForFyleSync(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT message_id FROM fyle_message_join_with_status WHERE fyle_id = ?"

    .line 209
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 211
    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 212
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 213
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 215
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    goto :goto_1

    .line 221
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 223
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 227
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 228
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception p2

    .line 227
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 228
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 229
    throw p2
.end method

.method public getStatusForMessage(J)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM fyle_message_join_with_status WHERE message_id = ?"

    .line 372
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move-wide/from16 v3, p1

    .line 374
    invoke-virtual {v2, v0, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 375
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 376
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "fyle_id"

    .line 378
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "message_id"

    .line 379
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "bytes_owned_identity"

    .line 380
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_path"

    .line 381
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_name"

    .line 382
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "file_type"

    .line 383
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    .line 384
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "size"

    .line 385
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    .line 386
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "engine_message_identifier"

    .line 387
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "engine_number"

    .line 388
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 389
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 390
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 395
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 397
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 399
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 401
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 403
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 405
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 407
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 409
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v28

    .line 411
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 413
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v30, 0x0

    goto :goto_1

    .line 416
    :cond_0
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v30, v3

    .line 418
    :goto_1
    new-instance v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v30}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;-><init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V

    .line 419
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 423
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 424
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v15

    :catchall_0
    move-exception v0

    .line 423
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 424
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 425
    throw v0
.end method

.method public getUploading()Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT * FROM fyle_message_join_with_status WHERE status = 3"

    .line 586
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 587
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 588
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "fyle_id"

    .line 590
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "message_id"

    .line 591
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "bytes_owned_identity"

    .line 592
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_path"

    .line 593
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_name"

    .line 594
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "file_type"

    .line 595
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    .line 596
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "size"

    .line 597
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    .line 598
    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "engine_message_identifier"

    .line 599
    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "engine_number"

    .line 600
    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 601
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 602
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 605
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 607
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 609
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 611
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 613
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 615
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 617
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 619
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 621
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v28

    .line 623
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 625
    invoke-interface {v3, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v30, 0x0

    goto :goto_1

    .line 628
    :cond_0
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v30, v4

    .line 630
    :goto_1
    new-instance v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v30}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;-><init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V

    .line 631
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 635
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 636
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v15

    :catchall_0
    move-exception v0

    .line 635
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 636
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 637
    throw v0
.end method

.method public insert(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 155
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 157
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__insertionAdapterOfFyleMessageJoinWithStatus:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 161
    throw p1
.end method

.method public update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 179
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 181
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__updateAdapterOfFyleMessageJoinWithStatus:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 182
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 185
    throw p1
.end method
