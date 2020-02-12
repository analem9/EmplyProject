.class Lio/olvid/messenger/databases/dao/MessageDao_Impl$8;
.super Ljava/lang/Object;
.source "MessageDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/MessageDao_Impl;->getLive(J)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/olvid/messenger/databases/entity/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/MessageDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/MessageDao_Impl$8;->this$0:Lio/olvid/messenger/databases/dao/MessageDao_Impl;

    iput-object p2, p0, Lio/olvid/messenger/databases/dao/MessageDao_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/olvid/messenger/databases/entity/Message;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 933
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/MessageDao_Impl$8;->this$0:Lio/olvid/messenger/databases/dao/MessageDao_Impl;

    invoke-static {v0}, Lio/olvid/messenger/databases/dao/MessageDao_Impl;->access$000(Lio/olvid/messenger/databases/dao/MessageDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lio/olvid/messenger/databases/dao/MessageDao_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 935
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "sender_sequence_number"

    .line 936
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "content_body"

    .line 937
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "json_reply"

    .line 938
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "json_return_receipt"

    .line 939
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sort_index"

    .line 940
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "timestamp"

    .line 941
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    .line 942
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "message_type"

    .line 943
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "discussion_id"

    .line 944
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "engine_message_identifier"

    .line 945
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "sender_identifier"

    .line 946
    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "sender_thread_identifier"

    .line 947
    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "total_attachment_count"

    .line 948
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v1, "image_count"

    .line 949
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 951
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 953
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 955
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 957
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 959
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 961
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    .line 963
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 965
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 967
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 969
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 971
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    .line 973
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    .line 976
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 977
    invoke-static {v4}, Lio/olvid/messenger/databases/ObvTypeConverters;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v34

    .line 979
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 981
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 982
    new-instance v1, Lio/olvid/messenger/databases/entity/Message;

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v36}, Lio/olvid/messenger/databases/entity/Message;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DJIIJ[B[BLjava/util/UUID;II)V

    .line 983
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lio/olvid/messenger/databases/entity/Message;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 989
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v16

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 990
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 930
    invoke-virtual {p0}, Lio/olvid/messenger/databases/dao/MessageDao_Impl$8;->call()Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .line 995
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/MessageDao_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
