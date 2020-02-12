.class Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;
.super Ljava/lang/Object;
.source "DiscussionDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->getAllDiscussionAndLastMessages([B)Landroidx/lifecycle/LiveData;
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
        "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;->this$0:Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;

    iput-object p2, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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

    .line 205
    invoke-virtual {p0}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 208
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;->this$0:Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;

    invoke-static {v0}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->access$000(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 210
    :try_start_0
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;->this$0:Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;

    invoke-static {v0}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->access$000(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v0, "disc_id"

    .line 212
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "disc_title"

    .line 213
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "disc_bytes_owned_identity"

    .line 214
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "disc_sender_thread_identifier"

    .line 215
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "disc_last_outbound_message_sequence_number"

    .line 216
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "disc_last_message_timestamp"

    .line 217
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "disc_bytes_contact_identity"

    .line 218
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "disc_bytes_group_owner_and_uid"

    .line 219
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 220
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "sender_sequence_number"

    .line 221
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "json_reply"

    .line 222
    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "json_return_receipt"

    .line 223
    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "content_body"

    .line 224
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "timestamp"

    .line 225
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "status"

    .line 226
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v1

    const-string v1, "message_type"

    .line 227
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "discussion_id"

    .line 228
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "engine_message_identifier"

    .line 229
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "sender_identifier"

    .line 230
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "sender_thread_identifier"

    .line 231
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "total_attachment_count"

    .line 232
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "image_count"

    .line 233
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "sort_index"

    .line 234
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "unread_count"

    .line 235
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "cust_discussion_id"

    .line 236
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "cust_serialized_color_json"

    .line 237
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "cust_background_image_url"

    .line 238
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "cust_pref_send_read_receipt"

    .line 239
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v30, v4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 244
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v31, v5

    move/from16 v32, v6

    const/4 v4, 0x0

    goto :goto_2

    .line 246
    :cond_1
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 248
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    .line 251
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-static {v4}, Lio/olvid/messenger/databases/ObvTypeConverters;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v34

    .line 254
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 256
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 258
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v40

    .line 260
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v39

    .line 261
    new-instance v4, Lio/olvid/messenger/databases/entity/Discussion;

    move-object/from16 v31, v4

    invoke-direct/range {v31 .. v40}, Lio/olvid/messenger/databases/entity/Discussion;-><init>(Ljava/lang/String;[BLjava/util/UUID;JJ[B[B)V

    move/from16 v31, v5

    move/from16 v32, v6

    .line 262
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    .line 267
    :goto_2
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move/from16 v5, v30

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move/from16 v6, v16

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_5

    move/from16 v16, v0

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_6

    move/from16 v17, v7

    move/from16 v7, v18

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v18, v8

    move/from16 v8, v19

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_8

    move/from16 v19, v9

    move/from16 v9, v20

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_9

    move/from16 v20, v10

    move/from16 v10, v21

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_a

    move/from16 v21, v11

    move/from16 v11, v22

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_b

    move-object/from16 v22, v1

    move/from16 v1, v23

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_c

    move-object/from16 v23, v4

    move/from16 v4, v24

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-nez v24, :cond_2

    goto :goto_4

    :cond_2
    move/from16 v24, v0

    move/from16 v30, v3

    move/from16 v33, v4

    move/from16 v0, v26

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_3
    move/from16 v6, v16

    goto :goto_3

    :cond_4
    move/from16 v6, v16

    move/from16 v5, v30

    :cond_5
    :goto_3
    move/from16 v16, v0

    move/from16 v0, v17

    :cond_6
    move/from16 v17, v7

    move/from16 v7, v18

    :cond_7
    move/from16 v18, v8

    move/from16 v8, v19

    :cond_8
    move/from16 v19, v9

    move/from16 v9, v20

    :cond_9
    move/from16 v20, v10

    move/from16 v10, v21

    :cond_a
    move/from16 v21, v11

    move/from16 v11, v22

    :cond_b
    move-object/from16 v22, v1

    move/from16 v1, v23

    :cond_c
    move-object/from16 v23, v4

    move/from16 v4, v24

    .line 269
    :goto_4
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 271
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 273
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 275
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 277
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 279
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 281
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 283
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    .line 285
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v47

    .line 287
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v48

    .line 290
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 291
    invoke-static/range {v24 .. v24}, Lio/olvid/messenger/databases/ObvTypeConverters;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v49

    .line 293
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    .line 295
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    .line 297
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v39

    move/from16 v24, v0

    .line 298
    new-instance v0, Lio/olvid/messenger/databases/entity/Message;

    move-object/from16 v33, v0

    invoke-direct/range {v33 .. v51}, Lio/olvid/messenger/databases/entity/Message;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DJIIJ[B[BLjava/util/UUID;II)V

    move/from16 v30, v3

    move/from16 v33, v4

    .line 299
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    move-object v3, v0

    move/from16 v0, v26

    .line 304
    :goto_5
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move/from16 v4, v27

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_e

    move/from16 v26, v1

    move/from16 v1, v28

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_10

    move/from16 v27, v5

    move/from16 v5, v29

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-nez v28, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v29, v0

    move/from16 v28, v1

    const/4 v0, 0x0

    goto :goto_b

    :cond_e
    move/from16 v26, v1

    move/from16 v27, v5

    move/from16 v1, v28

    goto :goto_6

    :cond_f
    move/from16 v26, v1

    move/from16 v4, v27

    move/from16 v1, v28

    :cond_10
    move/from16 v27, v5

    :goto_6
    move/from16 v5, v29

    .line 306
    :goto_7
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 308
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 310
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 313
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_11

    const/16 v28, 0x0

    goto :goto_8

    .line 316
    :cond_11
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    :goto_8
    if-nez v28, :cond_12

    const/16 v39, 0x0

    goto :goto_a

    .line 318
    :cond_12
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    if-eqz v28, :cond_13

    const/16 v28, 0x1

    goto :goto_9

    :cond_13
    const/16 v28, 0x0

    :goto_9
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v39, v28

    .line 319
    :goto_a
    new-instance v28, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    move-object/from16 v34, v28

    invoke-direct/range {v34 .. v39}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v28, v1

    .line 323
    :goto_b
    new-instance v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    invoke-direct {v1}, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;-><init>()V

    move/from16 v34, v4

    move/from16 v4, v25

    move/from16 v25, v5

    .line 324
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->unreadCount:I

    move-object/from16 v5, v23

    .line 325
    iput-object v5, v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    .line 326
    iput-object v3, v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->message:Lio/olvid/messenger/databases/entity/Message;

    .line 327
    iput-object v0, v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussionCustomization:Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    move-object/from16 v0, v22

    .line 328
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    move/from16 v22, v11

    move/from16 v0, v16

    move/from16 v11, v21

    move/from16 v23, v26

    move/from16 v26, v29

    move/from16 v3, v30

    move/from16 v5, v31

    move/from16 v16, v6

    move/from16 v21, v10

    move/from16 v10, v20

    move/from16 v29, v25

    move/from16 v30, v27

    move/from16 v6, v32

    move/from16 v27, v34

    move/from16 v25, v4

    move/from16 v20, v9

    move/from16 v9, v19

    move/from16 v19, v8

    move/from16 v8, v18

    move/from16 v18, v7

    move/from16 v7, v17

    move/from16 v17, v24

    move/from16 v24, v33

    goto/16 :goto_0

    :cond_14
    move-object v0, v1

    move-object/from16 v1, p0

    .line 330
    :try_start_3
    iget-object v3, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;->this$0:Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;

    invoke-static {v3}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->access$000(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 333
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 336
    iget-object v2, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;->this$0:Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;

    invoke-static {v2}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->access$000(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_c

    :catchall_1
    move-exception v0

    .line 333
    :goto_c
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 334
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 336
    iget-object v2, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;->this$0:Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;

    invoke-static {v2}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->access$000(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 337
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 342
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
