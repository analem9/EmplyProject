.class Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$4;
.super Ljava/lang/Object;
.source "ContactGroupJoinDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->getGroupContactsWithTimestamp([B[B)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$4;->this$0:Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;

    iput-object p2, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$4;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$4;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 251
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$4;->this$0:Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;

    invoke-static {v0}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;->access$000(Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$4;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "bytes_contact_identity"

    .line 253
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "bytes_owned_identity"

    .line 254
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "custom_display_name"

    .line 255
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "display_name"

    .line 256
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "identity_details"

    .line 257
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "new_published_details"

    .line 258
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_count"

    .line 259
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "established_channel_count"

    .line 260
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timestamp"

    .line 261
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 262
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 266
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_1

    :cond_0
    move-object v13, v3

    goto :goto_2

    .line 268
    :cond_1
    :goto_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 270
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 272
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 274
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 276
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 278
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 280
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 282
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 283
    new-instance v13, Lio/olvid/messenger/databases/entity/Contact;

    move-object v14, v13

    invoke-direct/range {v14 .. v22}, Lio/olvid/messenger/databases/entity/Contact;-><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 287
    :goto_2
    new-instance v14, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;

    invoke-direct {v14}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;-><init>()V

    move/from16 v16, v4

    .line 288
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v14, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;->timestamp:J

    .line 289
    iput-object v13, v14, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;->contact:Lio/olvid/messenger/databases/entity/Contact;

    .line 290
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, v16

    const/4 v3, 0x0

    goto :goto_0

    .line 294
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v12

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 295
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 300
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$4;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
