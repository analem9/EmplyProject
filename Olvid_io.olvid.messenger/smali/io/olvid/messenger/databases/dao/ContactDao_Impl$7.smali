.class Lio/olvid/messenger/databases/dao/ContactDao_Impl$7;
.super Ljava/lang/Object;
.source "ContactDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/ContactDao_Impl;->getAsync([B[B)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/olvid/messenger/databases/entity/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/ContactDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl$7;->this$0:Lio/olvid/messenger/databases/dao/ContactDao_Impl;

    iput-object p2, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/olvid/messenger/databases/entity/Contact;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 527
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/ContactDao_Impl$7;->this$0:Lio/olvid/messenger/databases/dao/ContactDao_Impl;

    invoke-static {v0}, Lio/olvid/messenger/databases/dao/ContactDao_Impl;->access$000(Lio/olvid/messenger/databases/dao/ContactDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lio/olvid/messenger/databases/dao/ContactDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "bytes_contact_identity"

    .line 529
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "bytes_owned_identity"

    .line 530
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "custom_display_name"

    .line 531
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "display_name"

    .line 532
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "identity_details"

    .line 533
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "new_published_details"

    .line 534
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_count"

    .line 535
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "established_channel_count"

    .line 536
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 538
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 540
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 542
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 544
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 546
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 548
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 550
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 552
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 554
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 555
    new-instance v0, Lio/olvid/messenger/databases/entity/Contact;

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Lio/olvid/messenger/databases/entity/Contact;-><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 561
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 562
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$7;->call()Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .line 567
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
