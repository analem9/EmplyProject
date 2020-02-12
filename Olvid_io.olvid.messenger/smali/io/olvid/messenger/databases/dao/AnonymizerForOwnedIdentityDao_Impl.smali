.class public final Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;
.super Ljava/lang/Object;
.source "AnonymizerForOwnedIdentityDao_Impl.java"

# interfaces
.implements Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfAnonymizerForOwnedIdentity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    new-instance v0, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl$1;-><init>(Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;->__insertionAdapterOfAnonymizerForOwnedIdentity:Landroidx/room/EntityInsertionAdapter;

    return-void
.end method


# virtual methods
.method public get([B)Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;
    .locals 5

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM anonymizer_for_owned_identity WHERE bytes_owned_identity = ?"

    .line 60
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 67
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 68
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "bytes_owned_identity"

    .line 70
    invoke-static {p1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "pseudo"

    .line 71
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 73
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 77
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    new-instance v3, Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;

    invoke-direct {v3, v0, v2}, Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 84
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 85
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    .line 84
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 85
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 86
    throw v0
.end method

.method public insert(Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 48
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 50
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;->__insertionAdapterOfAnonymizerForOwnedIdentity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 54
    throw p1
.end method
