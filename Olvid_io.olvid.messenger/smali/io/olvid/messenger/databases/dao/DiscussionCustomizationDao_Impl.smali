.class public final Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;
.super Ljava/lang/Object;
.source "DiscussionCustomizationDao_Impl.java"

# interfaces
.implements Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfDiscussionCustomization:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfDiscussionCustomization:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfDiscussionCustomization:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
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
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    new-instance v0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$1;-><init>(Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__insertionAdapterOfDiscussionCustomization:Landroidx/room/EntityInsertionAdapter;

    .line 61
    new-instance v0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$2;-><init>(Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__deletionAdapterOfDiscussionCustomization:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 72
    new-instance v0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$3;-><init>(Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__updateAdapterOfDiscussionCustomization:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 22
    iget-object p0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public delete(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 119
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 121
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__deletionAdapterOfDiscussionCustomization:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 122
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 125
    throw p1
.end method

.method public get(J)Lio/olvid/messenger/databases/entity/DiscussionCustomization;
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM discussion_customization_table WHERE discussion_id = ?;"

    .line 143
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move-wide/from16 v3, p1

    .line 145
    invoke-virtual {v2, v0, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 146
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 147
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v6, "discussion_id"

    .line 149
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "serialized_color_json"

    .line 150
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "background_image_url"

    .line 151
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "pref_send_read_receipt"

    .line 152
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 154
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 156
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 158
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 160
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 163
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    goto :goto_0

    .line 166
    :cond_0
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    if-nez v6, :cond_1

    :goto_1
    move-object/from16 v16, v5

    goto :goto_3

    .line 168
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1

    .line 169
    :goto_3
    new-instance v0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_3
    move-object v0, v5

    .line 175
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 176
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 175
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 176
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 177
    throw v0
.end method

.method public getLiveData(J)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM discussion_customization_table WHERE discussion_id = ?;"

    .line 183
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 185
    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 186
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "discussion_customization_table"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$4;

    invoke-direct {v0, p0, v1}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$4;-><init>(Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)J
    .locals 2

    .line 105
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 106
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 108
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__insertionAdapterOfDiscussionCustomization:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 109
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 113
    throw p1
.end method

.method public update(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 131
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 133
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__updateAdapterOfDiscussionCustomization:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 134
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 137
    throw p1
.end method
