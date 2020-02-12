.class Lio/olvid/messenger/databases/dao/MessageDao_Impl$10;
.super Ljava/lang/Object;
.source "MessageDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/MessageDao_Impl;->getUnreadCountAndFirstMessage(J)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/MessageDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 1556
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/MessageDao_Impl$10;->this$0:Lio/olvid/messenger/databases/dao/MessageDao_Impl;

    iput-object p2, p0, Lio/olvid/messenger/databases/dao/MessageDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1559
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageDao_Impl$10;->this$0:Lio/olvid/messenger/databases/dao/MessageDao_Impl;

    invoke-static {v0}, Lio/olvid/messenger/databases/dao/MessageDao_Impl;->access$000(Lio/olvid/messenger/databases/dao/MessageDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/dao/MessageDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "unread_count"

    .line 1561
    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "message_id"

    .line 1562
    invoke-static {v0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "min_sort_index"

    .line 1563
    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1565
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1566
    new-instance v2, Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;

    invoke-direct {v2}, Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;-><init>()V

    .line 1567
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;->unreadCount:I

    .line 1568
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;->messageId:J

    .line 1569
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v2, Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;->minSortIndex:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1576
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1556
    invoke-virtual {p0}, Lio/olvid/messenger/databases/dao/MessageDao_Impl$10;->call()Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .line 1581
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
