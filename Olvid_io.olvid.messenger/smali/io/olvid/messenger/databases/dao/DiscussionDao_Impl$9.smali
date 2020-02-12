.class Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$9;
.super Ljava/lang/Object;
.source "DiscussionDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->getAllActiveWithContactNamesOrderedByActivity([BLjava/lang/String;)Landroidx/lifecycle/LiveData;
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
        "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$9;->this$0:Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;

    iput-object p2, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$9;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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

    .line 786
    invoke-virtual {p0}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$9;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 789
    iget-object v0, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$9;->this$0:Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;

    invoke-static {v0}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;->access$000(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$9;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "disc_id"

    .line 791
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "disc_title"

    .line 792
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "disc_bytes_owned_identity"

    .line 793
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "disc_sender_thread_identifier"

    .line 794
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "disc_last_outbound_message_sequence_number"

    .line 795
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "disc_last_message_timestamp"

    .line 796
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "disc_bytes_contact_identity"

    .line 797
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "disc_bytes_group_owner_and_uid"

    .line 798
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "groupContactDisplayNames"

    .line 799
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "bytes_contact_identity"

    .line 800
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "bytes_owned_identity"

    .line 801
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "custom_display_name"

    .line 802
    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "display_name"

    .line 803
    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "identity_details"

    .line 804
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v1, "new_published_details"

    .line 805
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v11

    const-string v11, "device_count"

    .line 806
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    move/from16 v17, v11

    const-string v11, "established_channel_count"

    .line 807
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    move/from16 v18, v11

    .line 808
    new-instance v11, Ljava/util/ArrayList;

    move/from16 v19, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 809
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 812
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v20, v4

    move/from16 v21, v5

    const/4 v1, 0x0

    goto :goto_2

    .line 814
    :cond_1
    :goto_1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 816
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 819
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-static {v1}, Lio/olvid/messenger/databases/ObvTypeConverters;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v23

    .line 822
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 824
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 826
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 828
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v28

    .line 829
    new-instance v1, Lio/olvid/messenger/databases/entity/Discussion;

    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v29}, Lio/olvid/messenger/databases/entity/Discussion;-><init>(Ljava/lang/String;[BLjava/util/UUID;JJ[B[B)V

    move/from16 v20, v4

    move/from16 v21, v5

    .line 830
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    .line 835
    :goto_2
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move/from16 v4, v19

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move/from16 v5, v17

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_2

    goto :goto_4

    :cond_2
    move/from16 v19, v0

    move/from16 v18, v3

    const/4 v0, 0x0

    goto :goto_5

    :cond_3
    move/from16 v5, v17

    goto :goto_3

    :cond_4
    move/from16 v5, v17

    move/from16 v4, v19

    :cond_5
    :goto_3
    move/from16 v17, v0

    move/from16 v0, v18

    .line 837
    :goto_4
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v23

    .line 839
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 841
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 843
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 845
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 847
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 849
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 851
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 852
    new-instance v18, Lio/olvid/messenger/databases/entity/Contact;

    move-object/from16 v22, v18

    invoke-direct/range {v22 .. v30}, Lio/olvid/messenger/databases/entity/Contact;-><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v18, v3

    .line 856
    :goto_5
    new-instance v3, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;

    invoke-direct {v3}, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;-><init>()V

    move/from16 v22, v4

    move/from16 v4, v16

    move/from16 v16, v5

    .line 857
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;->groupContactDisplayNames:Ljava/lang/String;

    .line 858
    iput-object v1, v3, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    .line 859
    iput-object v0, v3, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;->oneToOneContact:Lio/olvid/messenger/databases/entity/Contact;

    .line 860
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, v17

    move/from16 v3, v18

    move/from16 v18, v19

    move/from16 v5, v21

    move/from16 v19, v22

    move/from16 v17, v16

    move/from16 v16, v4

    move/from16 v4, v20

    goto/16 :goto_0

    .line 864
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v11

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 865
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 870
    iget-object v0, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$9;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
