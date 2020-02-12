.class public final Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;
.super Ljava/lang/Object;
.source "PendingGroupMemberDao_Impl.java"

# interfaces
.implements Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfPendingGroupMember:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/PendingGroupMember;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfPendingGroupMember:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/olvid/messenger/databases/entity/PendingGroupMember;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfPendingGroupMember:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/PendingGroupMember;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$1;-><init>(Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__insertionAdapterOfPendingGroupMember:Landroidx/room/EntityInsertionAdapter;

    .line 67
    new-instance v0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$2;-><init>(Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__deletionAdapterOfPendingGroupMember:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 92
    new-instance v0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$3;-><init>(Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__updateAdapterOfPendingGroupMember:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 23
    iget-object p0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public delete(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 157
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 159
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__deletionAdapterOfPendingGroupMember:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 160
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 163
    throw p1
.end method

.method public get([B[B[B)Lio/olvid/messenger/databases/entity/PendingGroupMember;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x3

    const-string v5, "SELECT * FROM pending_group_member_table WHERE bytes_identity = ? AND bytes_owned_identity = ? AND bytes_group_owner_and_uid = ?"

    .line 182
    invoke-static {v5, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v5, v6, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    const/4 v0, 0x2

    if-nez v2, :cond_1

    .line 191
    invoke-virtual {v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {v5, v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_1
    if-nez v3, :cond_2

    .line 197
    invoke-virtual {v5, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 199
    :cond_2
    invoke-virtual {v5, v4, v3}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 201
    :goto_2
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 202
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v5, v3, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "bytes_identity"

    .line 204
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "display_name"

    .line 205
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "bytes_owned_identity"

    .line 206
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "bytes_group_owner_and_uid"

    .line 207
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "declined"

    .line 208
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 210
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 212
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 214
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 216
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 218
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 221
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    .line 223
    :goto_3
    new-instance v0, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lio/olvid/messenger/databases/entity/PendingGroupMember;-><init>([BLjava/lang/String;[B[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_4
    move-object v0, v2

    .line 229
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 230
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 229
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 230
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 231
    throw v0
.end method

.method public getGroupPendingMemberAndContactsLiveData([B[B)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "SELECT  pending.bytes_identity AS pending_bytes_identity,  pending.bytes_owned_identity AS pending_bytes_owned_identity,  pending.bytes_group_owner_and_uid AS pending_bytes_group_owner_and_uid,  pending.display_name AS pending_display_name,  pending.declined AS pending_declined,  contact.* FROM pending_group_member_table AS pending  LEFT JOIN contact_table AS contact  ON contact.bytes_owned_identity = pending.bytes_owned_identity AND contact.bytes_contact_identity = pending.bytes_identity WHERE pending.bytes_owned_identity = ?  AND pending.bytes_group_owner_and_uid = ?"

    .line 346
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 349
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez p2, :cond_1

    .line 355
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 357
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 359
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "pending_group_member_table"

    const-string v0, "contact_table"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$5;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$5;-><init>(Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getGroupPendingMembers([B[B)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/PendingGroupMember;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-string v4, "SELECT * FROM pending_group_member_table WHERE bytes_owned_identity = ? AND bytes_group_owner_and_uid = ?"

    .line 238
    invoke-static {v4, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {v4, v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez v2, :cond_1

    .line 247
    invoke-virtual {v4, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 249
    :cond_1
    invoke-virtual {v4, v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 251
    :goto_1
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 252
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v3, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "bytes_identity"

    .line 254
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "display_name"

    .line 255
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "bytes_owned_identity"

    .line 256
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "bytes_group_owner_and_uid"

    .line 257
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "declined"

    .line 258
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 259
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 263
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 265
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 267
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 269
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 272
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_2

    const/16 v17, 0x1

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    .line 274
    :goto_3
    new-instance v11, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    move-object v12, v11

    invoke-direct/range {v12 .. v17}, Lio/olvid/messenger/databases/entity/PendingGroupMember;-><init>([BLjava/lang/String;[B[BZ)V

    .line 275
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 279
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 280
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v10

    :catchall_0
    move-exception v0

    .line 279
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 280
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 281
    throw v0
.end method

.method public getGroupPendingMembersLiveData([B[B)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/PendingGroupMember;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "SELECT * FROM pending_group_member_table WHERE bytes_owned_identity = ? AND bytes_group_owner_and_uid = ?"

    .line 288
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 291
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez p2, :cond_1

    .line 297
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 299
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 301
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "pending_group_member_table"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$4;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$4;-><init>(Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 145
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__insertionAdapterOfPendingGroupMember:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 148
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 151
    throw p1
.end method

.method public update(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 169
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 171
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__updateAdapterOfPendingGroupMember:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 172
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 175
    throw p1
.end method
