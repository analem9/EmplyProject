.class public final Lio/olvid/messenger/databases/dao/InvitationDao_Impl;
.super Ljava/lang/Object;
.source "InvitationDao_Impl.java"

# interfaces
.implements Lio/olvid/messenger/databases/dao/InvitationDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfInvitation:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/olvid/messenger/databases/entity/Invitation;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfInvitation:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/olvid/messenger/databases/entity/Invitation;",
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
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/InvitationDao_Impl$1;-><init>(Lio/olvid/messenger/databases/dao/InvitationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__insertionAdapterOfInvitation:Landroidx/room/EntityInsertionAdapter;

    .line 64
    new-instance v0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/InvitationDao_Impl$2;-><init>(Lio/olvid/messenger/databases/dao/InvitationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__deletionAdapterOfInvitation:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/dao/InvitationDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 25
    iget-object p0, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public varargs delete([Lio/olvid/messenger/databases/entity/Invitation;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 98
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 100
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__deletionAdapterOfInvitation:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 101
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 104
    throw p1
.end method

.method public getAll([B)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Invitation;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM invitation_table WHERE bytes_owned_identity = ? ORDER BY invitation_timestamp DESC"

    .line 110
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    .line 113
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 117
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v0, "invitation_table"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lio/olvid/messenger/databases/dao/InvitationDao_Impl$3;

    invoke-direct {v3, p0, v1}, Lio/olvid/messenger/databases/dao/InvitationDao_Impl$3;-><init>(Lio/olvid/messenger/databases/dao/InvitationDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, v0, v2, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getByDialogUuid(Ljava/util/UUID;)Lio/olvid/messenger/databases/entity/Invitation;
    .locals 12

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM invitation_table WHERE dialog_uuid = ?"

    .line 160
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 163
    invoke-static {p1}, Lio/olvid/messenger/databases/ObvTypeConverters;->uuidToString(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 165
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 169
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 170
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "dialog_uuid"

    .line 172
    invoke-static {p1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "bytes_owned_identity"

    .line 173
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "associated_dialog"

    .line 174
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "invitation_timestamp"

    .line 175
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 177
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lio/olvid/messenger/databases/ObvTypeConverters;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    .line 183
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 186
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 187
    invoke-static {v0}, Lio/olvid/messenger/databases/ObvTypeConverters;->obvDialogFromBytes([B)Lio/olvid/engine/engine/types/ObvDialog;

    move-result-object v9

    .line 189
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 190
    new-instance v0, Lio/olvid/messenger/databases/entity/Invitation;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lio/olvid/messenger/databases/entity/Invitation;-><init>(Ljava/util/UUID;[BLio/olvid/engine/engine/types/ObvDialog;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 196
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 197
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 196
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 197
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 198
    throw v0
.end method

.method public varargs insert([Lio/olvid/messenger/databases/entity/Invitation;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 86
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__insertionAdapterOfInvitation:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 92
    throw p1
.end method
