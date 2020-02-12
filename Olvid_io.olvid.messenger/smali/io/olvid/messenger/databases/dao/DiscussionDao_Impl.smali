.class public final Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;
.super Lio/olvid/messenger/databases/dao/DiscussionDao;
.source "DiscussionDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfDiscussion:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfDiscussion:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteEmptyLockedDiscussions:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfDiscussion:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lio/olvid/messenger/databases/dao/DiscussionDao;-><init>()V

    .line 42
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 43
    new-instance v0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$1;-><init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__insertionAdapterOfDiscussion:Landroidx/room/EntityInsertionAdapter;

    .line 83
    new-instance v0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$2;-><init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__deletionAdapterOfDiscussion:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 94
    new-instance v0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$3;-><init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__updateAdapterOfDiscussion:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 135
    new-instance v0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$4;-><init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__preparedStmtOfDeleteEmptyLockedDiscussions:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public delete(Lio/olvid/messenger/databases/entity/Discussion;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 160
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 162
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__deletionAdapterOfDiscussion:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 163
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 166
    throw p1
.end method

.method public deleteEmptyLockedDiscussions()V
    .locals 3

    .line 183
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 184
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__preparedStmtOfDeleteEmptyLockedDiscussions:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 187
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 188
    iget-object v1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 191
    iget-object v1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__preparedStmtOfDeleteEmptyLockedDiscussions:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 190
    iget-object v2, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 191
    iget-object v2, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__preparedStmtOfDeleteEmptyLockedDiscussions:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 192
    throw v1
.end method

.method public getAllActiveWithContactNamesOrderedByActivity([BLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "SELECT disc.id AS disc_id,  disc.title AS disc_title,  disc.bytes_owned_identity AS disc_bytes_owned_identity,  disc.sender_thread_identifier AS disc_sender_thread_identifier,  disc.last_outbound_message_sequence_number AS disc_last_outbound_message_sequence_number,  disc.last_message_timestamp AS disc_last_message_timestamp,  disc.bytes_contact_identity AS disc_bytes_contact_identity,  disc.bytes_group_owner_and_uid AS disc_bytes_group_owner_and_uid, group_concat(group_contact.display_name, ?) AS groupContactDisplayNames, contact.* FROM discussion_table AS disc  LEFT JOIN contact_group_join AS group_join  ON disc.bytes_group_owner_and_uid = group_join.bytes_group_owner_and_uid AND disc.bytes_owned_identity = group_join.bytes_owned_identity LEFT JOIN contact_table AS group_contact  ON group_contact.bytes_contact_identity = group_join.bytes_contact_identity AND group_contact.bytes_owned_identity = group_join.bytes_owned_identity LEFT JOIN contact_table AS contact  ON contact.bytes_contact_identity = disc.bytes_contact_identity AND contact.bytes_owned_identity = disc.bytes_owned_identity LEFT JOIN ( SELECT discussion_id, MAX(timestamp) AS maxTimestamp FROM message_table WHERE status != 5 AND message_type = 1 GROUP BY discussion_id) AS message  ON disc.id = message.discussion_id WHERE disc.bytes_owned_identity = ?  AND (disc.bytes_contact_identity IS NOT NULL  OR disc.bytes_group_owner_and_uid IS NOT NULL)  GROUP BY disc.id  ORDER BY message.maxTimestamp DESC"

    .line 773
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 776
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 778
    :cond_0
    invoke-virtual {v1, v2, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez p1, :cond_1

    .line 782
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 784
    :cond_1
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 786
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "discussion_table"

    const-string v0, "contact_group_join"

    const-string v2, "contact_table"

    const-string v3, "message_table"

    filled-new-array {p2, v0, v2, v3}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$9;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$9;-><init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllDiscussionAndLastMessages([B)Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT disc.id AS disc_id,  disc.title AS disc_title,  disc.bytes_owned_identity AS disc_bytes_owned_identity,  disc.sender_thread_identifier AS disc_sender_thread_identifier,  disc.last_outbound_message_sequence_number AS disc_last_outbound_message_sequence_number,  disc.last_message_timestamp AS disc_last_message_timestamp,  disc.bytes_contact_identity AS disc_bytes_contact_identity,  disc.bytes_group_owner_and_uid AS disc_bytes_group_owner_and_uid,  message.*, unread.count AS unread_count, cust.discussion_id AS cust_discussion_id, cust.serialized_color_json AS cust_serialized_color_json, cust.background_image_url AS cust_background_image_url, cust.pref_send_read_receipt AS cust_pref_send_read_receipt FROM discussion_table AS disc  INNER JOIN ( SELECT id, sender_sequence_number, json_reply, json_return_receipt, content_body, timestamp, status, message_type, discussion_id, engine_message_identifier, sender_identifier, sender_thread_identifier, total_attachment_count, image_count,  MAX(sort_index) AS sort_index FROM message_table WHERE status != 5 GROUP BY discussion_id ) AS message  ON message.discussion_id = disc.id  LEFT JOIN ( SELECT COUNT(*) AS count, discussion_id FROM message_table WHERE status = 3 GROUP BY discussion_id ) AS unread  ON unread.discussion_id = disc.id  LEFT JOIN discussion_customization_table AS cust  ON cust.discussion_id = disc.id  WHERE disc.bytes_owned_identity = ?  ORDER BY disc.last_message_timestamp DESC"

    .line 198
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    .line 201
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 205
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v2, "discussion_table"

    const-string v3, "message_table"

    const-string v4, "discussion_customization_table"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;

    invoke-direct {v3, p0, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;-><init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, v2, v0, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllWithContactNames([BLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "SELECT disc.id AS disc_id,  disc.title AS disc_title,  disc.bytes_owned_identity AS disc_bytes_owned_identity,  disc.sender_thread_identifier AS disc_sender_thread_identifier,  disc.last_outbound_message_sequence_number AS disc_last_outbound_message_sequence_number,  disc.last_message_timestamp AS disc_last_message_timestamp,  disc.bytes_contact_identity AS disc_bytes_contact_identity,  disc.bytes_group_owner_and_uid AS disc_bytes_group_owner_and_uid, group_concat(group_contact.display_name, ?) AS groupContactDisplayNames, contact.* FROM discussion_table AS disc  LEFT JOIN contact_group_join AS group_join  ON disc.bytes_group_owner_and_uid = group_join.bytes_group_owner_and_uid AND disc.bytes_owned_identity = group_join.bytes_owned_identity LEFT JOIN contact_table AS group_contact  ON group_contact.bytes_contact_identity = group_join.bytes_contact_identity AND group_contact.bytes_owned_identity = group_join.bytes_owned_identity LEFT JOIN contact_table AS contact  ON contact.bytes_contact_identity = disc.bytes_contact_identity AND contact.bytes_owned_identity = disc.bytes_owned_identity WHERE disc.bytes_owned_identity = ?  GROUP BY disc.id ORDER BY disc.title COLLATE NOCASE ASC"

    .line 667
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 670
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 672
    :cond_0
    invoke-virtual {v1, v2, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez p1, :cond_1

    .line 676
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 678
    :cond_1
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 680
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "discussion_table"

    const-string v0, "contact_group_join"

    const-string v2, "contact_table"

    filled-new-array {p2, v0, v2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$8;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$8;-><init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getByContact([B[B)Lio/olvid/messenger/databases/entity/Discussion;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-string v4, "SELECT * FROM discussion_table WHERE bytes_owned_identity = ? AND bytes_contact_identity = ?"

    .line 453
    invoke-static {v4, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {v4, v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez v2, :cond_1

    .line 462
    invoke-virtual {v4, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 464
    :cond_1
    invoke-virtual {v4, v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 466
    :goto_1
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 467
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 469
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "title"

    .line 470
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "bytes_owned_identity"

    .line 471
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sender_thread_identifier"

    .line 472
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "last_outbound_message_sequence_number"

    .line 473
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "last_message_timestamp"

    .line 474
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "bytes_group_owner_and_uid"

    .line 475
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "bytes_contact_identity"

    .line 476
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 478
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 480
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 482
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 485
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 486
    invoke-static {v3}, Lio/olvid/messenger/databases/ObvTypeConverters;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v16

    .line 488
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 490
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 492
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 494
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 495
    new-instance v3, Lio/olvid/messenger/databases/entity/Discussion;

    move-object v13, v3

    invoke-direct/range {v13 .. v22}, Lio/olvid/messenger/databases/entity/Discussion;-><init>(Ljava/lang/String;[BLjava/util/UUID;JJ[B[B)V

    .line 496
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lio/olvid/messenger/databases/entity/Discussion;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 503
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 502
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 503
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 504
    throw v0
.end method

.method public getByGroupOwnerAndUid([B[B)Lio/olvid/messenger/databases/entity/Discussion;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-string v4, "SELECT * FROM discussion_table WHERE bytes_group_owner_and_uid = ? AND bytes_owned_identity = ?"

    .line 511
    invoke-static {v4, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v2, :cond_0

    .line 514
    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {v4, v5, v2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_0
    if-nez v0, :cond_1

    .line 520
    invoke-virtual {v4, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 522
    :cond_1
    invoke-virtual {v4, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 524
    :goto_1
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 525
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 527
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "title"

    .line 528
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "bytes_owned_identity"

    .line 529
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sender_thread_identifier"

    .line 530
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "last_outbound_message_sequence_number"

    .line 531
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "last_message_timestamp"

    .line 532
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "bytes_group_owner_and_uid"

    .line 533
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "bytes_contact_identity"

    .line 534
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 536
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 538
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 540
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 543
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 544
    invoke-static {v3}, Lio/olvid/messenger/databases/ObvTypeConverters;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v16

    .line 546
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 548
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 550
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 552
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 553
    new-instance v3, Lio/olvid/messenger/databases/entity/Discussion;

    move-object v13, v3

    invoke-direct/range {v13 .. v22}, Lio/olvid/messenger/databases/entity/Discussion;-><init>(Ljava/lang/String;[BLjava/util/UUID;JJ[B[B)V

    .line 554
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lio/olvid/messenger/databases/entity/Discussion;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 561
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 560
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 561
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 562
    throw v0
.end method

.method public getById(J)Lio/olvid/messenger/databases/entity/Discussion;
    .locals 23

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM discussion_table WHERE id = ?"

    .line 350
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move-wide/from16 v3, p1

    .line 352
    invoke-virtual {v2, v0, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 353
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 354
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    .line 356
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "title"

    .line 357
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "bytes_owned_identity"

    .line 358
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sender_thread_identifier"

    .line 359
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "last_outbound_message_sequence_number"

    .line 360
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "last_message_timestamp"

    .line 361
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "bytes_group_owner_and_uid"

    .line 362
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "bytes_contact_identity"

    .line 363
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 365
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 367
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 369
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 372
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-static {v3}, Lio/olvid/messenger/databases/ObvTypeConverters;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v16

    .line 375
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 377
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 379
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 381
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 382
    new-instance v3, Lio/olvid/messenger/databases/entity/Discussion;

    move-object v13, v3

    invoke-direct/range {v13 .. v22}, Lio/olvid/messenger/databases/entity/Discussion;-><init>(Ljava/lang/String;[BLjava/util/UUID;JJ[B[B)V

    .line 383
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lio/olvid/messenger/databases/entity/Discussion;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 390
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 389
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 390
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 391
    throw v0
.end method

.method public getByIdAsync(J)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM discussion_table WHERE id = ?"

    .line 397
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 399
    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 400
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "discussion_table"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$6;

    invoke-direct {v0, p0, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$6;-><init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getContactActiveGroupDiscussionsWithContactNames([B[BLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x3

    const-string v1, "SELECT disc.id AS disc_id,  disc.title AS disc_title,  disc.bytes_owned_identity AS disc_bytes_owned_identity,  disc.sender_thread_identifier AS disc_sender_thread_identifier,  disc.last_outbound_message_sequence_number AS disc_last_outbound_message_sequence_number,  disc.last_message_timestamp AS disc_last_message_timestamp,  disc.bytes_contact_identity AS disc_bytes_contact_identity,  disc.bytes_group_owner_and_uid AS disc_bytes_group_owner_and_uid,  group_concat(contact.display_name, ?) AS groupContactDisplayNames,  NULL AS bytes_contact_identity, NULL AS bytes_owned_identity,  NULL AS custom_display_name,  NULL AS display_name,  NULL AS identity_details,  0 AS new_published_details,  0 AS device_count, 0 AS established_channel_count FROM discussion_table AS disc  INNER JOIN ( SELECT * FROM contact_group_join WHERE bytes_contact_identity = ? AND bytes_owned_identity = ? ) AS groop_one  ON disc.bytes_group_owner_and_uid = groop_one.bytes_group_owner_and_uid AND disc.bytes_owned_identity = groop_one.bytes_owned_identity INNER JOIN contact_group_join AS groop  ON disc.bytes_group_owner_and_uid = groop.bytes_group_owner_and_uid AND disc.bytes_owned_identity = groop.bytes_owned_identity INNER JOIN contact_table AS contact  ON contact.bytes_contact_identity = groop.bytes_contact_identity AND contact.bytes_owned_identity = groop.bytes_owned_identity GROUP BY disc.id  ORDER BY disc.title COLLATE NOCASE ASC"

    .line 879
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p3, :cond_0

    .line 882
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 884
    :cond_0
    invoke-virtual {v1, v2, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p3, 0x2

    if-nez p1, :cond_1

    .line 888
    invoke-virtual {v1, p3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 890
    :cond_1
    invoke-virtual {v1, p3, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    :goto_1
    if-nez p2, :cond_2

    .line 894
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 896
    :cond_2
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 898
    :goto_2
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "discussion_table"

    const-string p3, "contact_group_join"

    const-string v0, "contact_table"

    filled-new-array {p2, p3, v0}, [Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-instance v0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$10;

    invoke-direct {v0, p0, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$10;-><init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, p3, v0}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getLatestDiscussionsInWhichYouWrote()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT discussion.* FROM discussion_table AS discussion  INNER JOIN ( SELECT discussion_id, MAX(timestamp) AS maxTimestamp FROM message_table WHERE status != 5 AND message_type = 1 GROUP BY discussion_id) AS message  ON discussion.id = message.discussion_id WHERE discussion.bytes_group_owner_and_uid NOT NULL OR  discussion.bytes_contact_identity NOT NULL  GROUP BY discussion.id  ORDER BY maxTimestamp DESC"

    .line 568
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 569
    iget-object v2, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "discussion_table"

    const-string v4, "message_table"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$7;

    invoke-direct {v4, p0, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$7;-><init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v0, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getLatestDiscussionsInWhichYouWroteSync()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT discussion.* FROM discussion_table AS discussion  INNER JOIN ( SELECT discussion_id, MAX(timestamp) AS maxTimestamp FROM message_table WHERE status != 5 AND message_type = 1 GROUP BY discussion_id) AS message  ON discussion.id = message.discussion_id WHERE discussion.bytes_group_owner_and_uid NOT NULL OR  discussion.bytes_contact_identity NOT NULL  GROUP BY discussion.id  ORDER BY maxTimestamp DESC"

    .line 621
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 622
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 623
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 625
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "title"

    .line 626
    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "bytes_owned_identity"

    .line 627
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "sender_thread_identifier"

    .line 628
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "last_outbound_message_sequence_number"

    .line 629
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "last_message_timestamp"

    .line 630
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "bytes_group_owner_and_uid"

    .line 631
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "bytes_contact_identity"

    .line 632
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 633
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 634
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 637
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 639
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 642
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 643
    invoke-static {v12}, Lio/olvid/messenger/databases/ObvTypeConverters;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v16

    .line 645
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 647
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 649
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 651
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 652
    new-instance v12, Lio/olvid/messenger/databases/entity/Discussion;

    move-object v13, v12

    invoke-direct/range {v13 .. v22}, Lio/olvid/messenger/databases/entity/Discussion;-><init>(Ljava/lang/String;[BLjava/util/UUID;JJ[B[B)V

    .line 653
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v12, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    .line 654
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 658
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 659
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v11

    :catchall_0
    move-exception v0

    .line 658
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 659
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 660
    throw v0
.end method

.method public insert(Lio/olvid/messenger/databases/entity/Discussion;)J
    .locals 2

    .line 146
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 147
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 149
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__insertionAdapterOfDiscussion:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 150
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 154
    throw p1
.end method

.method public update(Lio/olvid/messenger/databases/entity/Discussion;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 172
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 174
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__updateAdapterOfDiscussion:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 175
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 178
    throw p1
.end method
