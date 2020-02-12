.class public Lio/olvid/messenger/EngineNotificationProcessor;
.super Ljava/lang/Object;
.source "EngineNotificationProcessor.java"

# interfaces
.implements Lio/olvid/engine/engine/types/EngineNotificationListener;


# instance fields
.field private final db:Lio/olvid/messenger/databases/AppDatabase;

.field private final engine:Lio/olvid/engine/engine/Engine;

.field private registrationNumber:J


# direct methods
.method constructor <init>(Lio/olvid/engine/engine/Engine;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, v0, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    .line 52
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v2

    iput-object v2, v0, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    const-string v3, "engine_notification_channel_confirmed_or_deleted"

    const-string v4, "engine_notification_new_message"

    const-string v5, "engine_notification_new_contact"

    const-string v6, "engine_notification_contact_deleted"

    const-string v7, "engine_notification_ui_dialog"

    const-string v8, "engine_notification_ui_dialog_deleted"

    const-string v9, "engine_notification_new_contact_device"

    const-string v10, "engine_notification_download_attachment_progress"

    const-string v11, "engine_notification_upload_attachment_progress"

    const-string v12, "engine_notification_attachment_downloaded"

    const-string v13, "engine_notification_attachment_uploaded"

    const-string v14, "engine_notification_attachment_failed"

    const-string v15, "engine_notification_message_uploaded"

    const-string v16, "engine_notification_group_created"

    const-string v17, "engine_notification_group_deleted"

    const-string v18, "engine_notification_group_member_added"

    const-string v19, "engine_notification_group_member_removed"

    const-string v20, "engine_notification_pending_group_member_added"

    const-string v21, "engine_notification_pending_group_member_removed"

    const-string v22, "engine_notification_pending_group_member_decline_toggled"

    const-string v23, "engine_notification_api_key_accepted"

    const-string v24, "engine_notification_api_key_rejected"

    const-string v25, "engine_notification_owned_identity_display_name_changed"

    const-string v26, "engine_notification_contact_published_details_trusted"

    const-string v27, "engine_notification_new_contact_photo"

    const-string v28, "engine_notification_new_contact_published_details"

    const-string v29, "engine_notification_group_published_details_updated"

    const-string v30, "engine_notification_group_published_details_trusted"

    const-string v31, "engine_notification_new_group_published_details"

    const-string v32, "engine_notification_owned_identity_latest_details_updated"

    const-string v33, "engine_notification_return_receipt_received"

    .line 54
    filled-new-array/range {v3 .. v33}, [Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 87
    invoke-virtual {v1, v5, v0}, Lio/olvid/engine/engine/Engine;->addNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;
    .locals 0

    .line 45
    iget-object p0, p0, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    return-object p0
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 94
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "engine_notification_contact_deleted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "engine_notification_pending_group_member_added"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "engine_notification_new_group_published_details"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "engine_notification_owned_identity_latest_details_updated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "engine_notification_ui_dialog"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "engine_notification_new_contact_photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "engine_notification_api_key_rejected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "engine_notification_contact_published_details_trusted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "engine_notification_attachment_uploaded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "engine_notification_attachment_failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "engine_notification_return_receipt_received"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "engine_notification_api_key_accepted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "engine_notification_group_published_details_updated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "engine_notification_download_attachment_progress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "engine_notification_ui_dialog_deleted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "engine_notification_message_uploaded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "engine_notification_group_published_details_trusted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "engine_notification_attachment_downloaded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "engine_notification_owned_identity_display_name_changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "engine_notification_group_member_removed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "engine_notification_new_contact_published_details"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "engine_notification_group_deleted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_16
    const-string v2, "engine_notification_channel_confirmed_or_deleted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_17
    const-string v2, "engine_notification_new_contact_device"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_18
    const-string v2, "engine_notification_pending_group_member_decline_toggled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_19
    const-string v2, "engine_notification_pending_group_member_removed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_1a
    const-string v2, "engine_notification_new_message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1b
    const-string v2, "engine_notification_new_contact"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1c
    const-string v2, "engine_notification_group_created"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_1d
    const-string v2, "engine_notification_upload_attachment_progress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_1e
    const-string v2, "engine_notification_group_member_added"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v2, "%f %l (%p @ %c)"

    const-string v12, "attachment_number"

    const-string v13, "message_identifier"

    const-string v14, "bytes_contact_identity"

    const-string v15, "bytes_group_uid"

    const-string v10, "contact_identity"

    const-string v11, "owned_identity"

    const-string v9, "bytes_owned_identity"

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_2
    :pswitch_0
    move-object v6, v7

    goto/16 :goto_28

    .line 1017
    :pswitch_1
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const-string v2, "has_unpublished"

    .line 1018
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1020
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->get([B)Lio/olvid/messenger/databases/entity/OwnedIdentity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    .line 1022
    iget v2, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->unpublishedDetails:I

    if-nez v2, :cond_2

    .line 1023
    iput v6, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->unpublishedDetails:I

    .line 1024
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->update(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    goto :goto_2

    :cond_2
    if-nez v1, :cond_1

    .line 1025
    iget v1, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->unpublishedDetails:I

    if-ne v1, v6, :cond_1

    .line 1026
    iput v8, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->unpublishedDetails:I

    .line 1027
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->update(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    goto :goto_2

    .line 1002
    :pswitch_2
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 1003
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 1005
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/olvid/messenger/databases/dao/GroupDao;->get([B[B)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1008
    :try_start_0
    iput v6, v0, Lio/olvid/messenger/databases/entity/Group;->newPublishedDetails:I

    .line 1009
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/GroupDao;->update(Lio/olvid/messenger/databases/entity/Group;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1011
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 984
    :pswitch_3
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 985
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    const-string v3, "group_details"

    .line 986
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-nez v1, :cond_3

    goto/16 :goto_2

    .line 990
    :cond_3
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto/16 :goto_2

    .line 994
    :cond_4
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lio/olvid/messenger/databases/dao/GroupDao;->get([B[B)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 996
    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-eqz v3, :cond_1

    .line 997
    new-instance v3, Lio/olvid/messenger/databases/tasks/UpdateGroupNameTask;

    invoke-direct {v3, v0, v2, v1}, Lio/olvid/messenger/databases/tasks/UpdateGroupNameTask;-><init>([B[BLjava/lang/String;)V

    invoke-static {v3}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 970
    :pswitch_4
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 971
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    const-string v3, "group_name"

    .line 972
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-nez v1, :cond_5

    goto/16 :goto_2

    .line 976
    :cond_5
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lio/olvid/messenger/databases/dao/GroupDao;->get([B[B)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 978
    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-nez v3, :cond_1

    .line 979
    new-instance v3, Lio/olvid/messenger/databases/tasks/UpdateGroupNameTask;

    invoke-direct {v3, v0, v2, v1}, Lio/olvid/messenger/databases/tasks/UpdateGroupNameTask;-><init>([B[BLjava/lang/String;)V

    invoke-static {v3}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 951
    :pswitch_5
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 952
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 954
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 957
    :try_start_1
    iput v6, v0, Lio/olvid/messenger/databases/entity/Contact;->newPublishedDetails:I

    .line 958
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/ContactDao;->update(Lio/olvid/messenger/databases/entity/Contact;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    .line 960
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 940
    :pswitch_6
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 941
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    const-string v3, "identity_details"

    .line 942
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    .line 944
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 946
    new-instance v3, Lio/olvid/messenger/databases/tasks/UpdateContactDisplayNameTask;

    invoke-direct {v3, v2, v0, v1}, Lio/olvid/messenger/databases/tasks/UpdateContactDisplayNameTask;-><init>([B[BLio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)V

    invoke-static {v3}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 929
    :pswitch_7
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const-string v2, "display_name"

    .line 930
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 931
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->get([B)Lio/olvid/messenger/databases/entity/OwnedIdentity;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 933
    invoke-static {v0}, Lio/olvid/messenger/customClasses/InitialView;->invalidateCache([B)V

    .line 934
    iput-object v1, v2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    .line 935
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->update(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    goto/16 :goto_2

    .line 918
    :pswitch_8
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_1

    .line 920
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->get([B)Lio/olvid/messenger/databases/entity/OwnedIdentity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 921
    iget v1, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->apiKeyStatus:I

    if-eq v1, v5, :cond_1

    .line 922
    iput v5, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->apiKeyStatus:I

    .line 923
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->update(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    goto/16 :goto_2

    .line 907
    :pswitch_9
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_1

    .line 909
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->get([B)Lio/olvid/messenger/databases/entity/OwnedIdentity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 910
    iget v1, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->apiKeyStatus:I

    if-eq v1, v6, :cond_1

    .line 911
    iput v6, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->apiKeyStatus:I

    .line 912
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->update(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    goto/16 :goto_2

    .line 891
    :pswitch_a
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 892
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    .line 893
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    const-string v4, "declined"

    .line 894
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-nez v0, :cond_6

    goto/16 :goto_2

    .line 899
    :cond_6
    iget-object v4, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v4

    invoke-interface {v4, v3, v2, v0}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->get([B[B[B)Lio/olvid/messenger/databases/entity/PendingGroupMember;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 901
    iput-boolean v1, v0, Lio/olvid/messenger/databases/entity/PendingGroupMember;->declined:Z

    .line 902
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->update(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V

    goto/16 :goto_2

    .line 874
    :pswitch_b
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 875
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    .line 876
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-nez v0, :cond_7

    goto/16 :goto_2

    .line 881
    :cond_7
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lio/olvid/messenger/databases/dao/GroupDao;->get([B[B)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 883
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v3

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v1

    invoke-interface {v3, v1, v2, v0}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->get([B[B[B)Lio/olvid/messenger/databases/entity/PendingGroupMember;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 885
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->delete(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V

    goto/16 :goto_2

    .line 853
    :pswitch_c
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v15, v0

    check-cast v15, [B

    .line 854
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v14, v0

    check-cast v14, [B

    .line 855
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    if-eqz v14, :cond_1

    if-eqz v0, :cond_1

    if-nez v15, :cond_8

    goto/16 :goto_2

    .line 860
    :cond_8
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v1

    invoke-interface {v1, v14, v15}, Lio/olvid/messenger/databases/dao/GroupDao;->get([B[B)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 862
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v1

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v3

    invoke-interface {v1, v3, v14, v15}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->get([B[B[B)Lio/olvid/messenger/databases/entity/PendingGroupMember;

    move-result-object v1

    if-nez v1, :cond_9

    .line 864
    new-instance v1, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v12

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lio/olvid/messenger/databases/entity/PendingGroupMember;-><init>([BLjava/lang/String;[B[BZ)V

    .line 865
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->insert(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V

    goto/16 :goto_2

    .line 867
    :cond_9
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/olvid/messenger/databases/entity/PendingGroupMember;->displayName:Ljava/lang/String;

    .line 868
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->update(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V

    goto/16 :goto_2

    .line 819
    :pswitch_d
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 820
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    .line 821
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-nez v0, :cond_a

    goto/16 :goto_2

    .line 826
    :cond_a
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lio/olvid/messenger/databases/dao/GroupDao;->get([B[B)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 828
    iget-object v4, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 830
    iget-object v4, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByGroupOwnerAndUid([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v4

    if-nez v4, :cond_b

    .line 832
    invoke-virtual {v3}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lio/olvid/messenger/databases/entity/Discussion;->createGroupDiscussion(Ljava/lang/String;[B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v4

    .line 833
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v2

    invoke-virtual {v2, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->insert(Lio/olvid/messenger/databases/entity/Discussion;)J

    move-result-wide v2

    iput-wide v2, v4, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    .line 835
    :cond_b
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v2

    iget-object v3, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v5, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-interface {v2, v0, v3, v5}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->get([B[B[B)Lio/olvid/messenger/databases/entity/ContactGroupJoin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 837
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->delete(Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V

    .line 838
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    iget-wide v2, v4, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v0, v2, v3, v1}, Lio/olvid/messenger/databases/entity/Message;->createMemberLeftGroupMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    .line 839
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    .line 840
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lio/olvid/messenger/databases/entity/Discussion;->updateLastMessageTimestamp(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    goto/16 :goto_2

    :cond_c
    const-string v0, "Contact not found while processing a \"Group Member Removed\" notification."

    .line 845
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const-string v0, "Trying to remove a group member from a non-existing group"

    .line 848
    invoke-static {v0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_e
    const-string v0, "group_uid"

    .line 777
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 778
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    .line 779
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-nez v0, :cond_e

    goto/16 :goto_2

    .line 784
    :cond_e
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lio/olvid/messenger/databases/dao/GroupDao;->get([B[B)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 786
    iget-object v4, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 788
    iget-object v4, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByGroupOwnerAndUid([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v4

    if-nez v4, :cond_f

    .line 790
    invoke-virtual {v3}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v0}, Lio/olvid/messenger/databases/entity/Discussion;->createGroupDiscussion(Ljava/lang/String;[B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v4

    .line 791
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v2

    invoke-virtual {v2, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->insert(Lio/olvid/messenger/databases/entity/Discussion;)J

    move-result-wide v9

    iput-wide v9, v4, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    .line 793
    :cond_f
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v2

    iget-object v5, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v9, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-interface {v2, v0, v5, v9}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->get([B[B[B)Lio/olvid/messenger/databases/entity/ContactGroupJoin;

    move-result-object v2

    if-nez v2, :cond_11

    .line 795
    new-instance v2, Lio/olvid/messenger/databases/entity/ContactGroupJoin;

    iget-object v5, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v9, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-direct {v2, v0, v5, v9}, Lio/olvid/messenger/databases/entity/ContactGroupJoin;-><init>([B[B[B)V

    .line 796
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->insert(Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V

    .line 797
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    iget-wide v9, v4, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iget-object v2, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v0, v9, v10, v2}, Lio/olvid/messenger/databases/entity/Message;->createMemberJoinedGroupMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    .line 798
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    .line 799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lio/olvid/messenger/databases/entity/Discussion;->updateLastMessageTimestamp(J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 800
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    .line 802
    :cond_10
    iget-wide v4, v4, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {v3, v1, v6, v4, v5}, Lio/olvid/messenger/AndroidNotificationManager;->displayGroupMemberNotification(Lio/olvid/messenger/databases/entity/Group;Lio/olvid/messenger/databases/entity/Contact;ZJ)V

    .line 806
    :cond_11
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    iget-object v1, v3, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    iget-object v2, v3, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->getUnprocessedGroupMessages([B[B)Ljava/util/List;

    move-result-object v0

    .line 807
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/Message;

    .line 808
    invoke-virtual {v1, v8}, Lio/olvid/messenger/databases/entity/Message;->post(Z)V

    goto :goto_3

    :cond_12
    const-string v0, "Contact not found while processing a \"Group Member Added\" notification."

    .line 811
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const-string v0, "Trying to add group member to a non-existing (yet) group"

    .line 814
    invoke-static {v0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_f
    const-string v0, "bytes_group_owner_and_uid"

    .line 760
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 761
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    if-eqz v0, :cond_1

    if-nez v1, :cond_14

    goto/16 :goto_2

    .line 766
    :cond_14
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lio/olvid/messenger/databases/dao/GroupDao;->get([B[B)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 768
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByGroupOwnerAndUid([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 770
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/entity/Discussion;->lockWithMessage(Lio/olvid/messenger/databases/AppDatabase;)V

    .line 772
    :cond_15
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/olvid/messenger/databases/dao/GroupDao;->delete(Lio/olvid/messenger/databases/entity/Group;)V

    goto/16 :goto_2

    :pswitch_10
    const-string v0, "group"

    .line 661
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/olvid/engine/engine/types/identities/ObvGroup;

    if-nez v5, :cond_16

    goto/16 :goto_2

    .line 665
    :cond_16
    invoke-virtual {v5}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesGroupOwnerAndUid()[B

    move-result-object v0

    .line 667
    invoke-virtual {v5}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v9

    .line 668
    invoke-virtual {v5}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesOwnedIdentity()[B

    move-result-object v4

    .line 670
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lio/olvid/messenger/databases/dao/GroupDao;->get([B[B)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v1

    if-nez v1, :cond_17

    .line 672
    iget-object v8, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    new-instance v10, Lio/olvid/messenger/EngineNotificationProcessor$4;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lio/olvid/messenger/EngineNotificationProcessor$4;-><init>(Lio/olvid/messenger/EngineNotificationProcessor;[B[BLio/olvid/engine/engine/types/identities/ObvGroup;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 717
    :cond_17
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByGroupOwnerAndUid([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v1

    if-nez v1, :cond_18

    .line 719
    invoke-static {v9, v4, v0}, Lio/olvid/messenger/databases/entity/Discussion;->createGroupDiscussion(Ljava/lang/String;[B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v1

    .line 720
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao;->insert(Lio/olvid/messenger/databases/entity/Discussion;)J

    move-result-wide v9

    iput-wide v9, v1, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    .line 725
    :cond_18
    invoke-virtual {v5}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesGroupMembersIdentities()[[B

    move-result-object v3

    array-length v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v10, v9, :cond_1a

    aget-object v12, v3, v10

    .line 726
    iget-object v13, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v13}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v13

    invoke-interface {v13, v4, v12}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v12

    if-eqz v12, :cond_19

    .line 728
    iget-object v13, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v13}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v13

    iget-object v14, v12, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v15, v12, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-interface {v13, v0, v14, v15}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->get([B[B[B)Lio/olvid/messenger/databases/entity/ContactGroupJoin;

    move-result-object v13

    if-nez v13, :cond_19

    .line 730
    new-instance v11, Lio/olvid/messenger/databases/entity/ContactGroupJoin;

    iget-object v13, v12, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v14, v12, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-direct {v11, v0, v13, v14}, Lio/olvid/messenger/databases/entity/ContactGroupJoin;-><init>([B[B[B)V

    .line 731
    iget-object v13, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v13}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v13

    invoke-interface {v13, v11}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->insert(Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V

    .line 732
    iget-object v11, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    iget-wide v13, v1, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iget-object v12, v12, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v11, v13, v14, v12}, Lio/olvid/messenger/databases/entity/Message;->createMemberJoinedGroupMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v11

    .line 733
    iget-object v12, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v12

    invoke-interface {v12, v11}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    const/4 v11, 0x1

    :cond_19
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_1a
    if-eqz v11, :cond_1b

    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lio/olvid/messenger/databases/entity/Discussion;->updateLastMessageTimestamp(J)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 740
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    .line 745
    :cond_1b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 746
    invoke-virtual {v5}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesDeclinedPendingMembers()[[B

    move-result-object v3

    array-length v6, v3

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_1c

    aget-object v10, v3, v9

    .line 747
    new-instance v11, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-direct {v11, v10}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 749
    :cond_1c
    invoke-virtual {v5}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getPendingGroupMembers()[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v3

    array-length v5, v3

    :goto_6
    if-ge v8, v5, :cond_1

    aget-object v6, v3, v8

    .line 750
    iget-object v9, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v9}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v9

    invoke-virtual {v6}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v10

    invoke-interface {v9, v10, v4, v0}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->get([B[B[B)Lio/olvid/messenger/databases/entity/PendingGroupMember;

    move-result-object v9

    if-nez v9, :cond_1d

    .line 752
    new-instance v15, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    invoke-virtual {v6}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v10

    invoke-virtual {v6}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v9

    invoke-virtual {v9, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v9, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {v6}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v6

    invoke-direct {v9, v6}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    move-object v9, v15

    move-object v12, v4

    move-object v13, v0

    invoke-direct/range {v9 .. v14}, Lio/olvid/messenger/databases/entity/PendingGroupMember;-><init>([BLjava/lang/String;[B[BZ)V

    .line 753
    iget-object v6, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v6

    invoke-interface {v6, v15}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->insert(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 650
    :pswitch_11
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 651
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "progress"

    .line 652
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 653
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getByEngineIdentifierAndNumber([BI)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 655
    iput v1, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    .line 656
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    goto/16 :goto_2

    :pswitch_12
    const-string v0, "identifier"

    .line 629
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const-string v2, "timestamp_from_server"

    .line 630
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 632
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->getAllByEngineMessageIdentifier([B)Ljava/util/List;

    move-result-object v0

    .line 633
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 634
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    iget-wide v2, v2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->messageId:J

    .line 635
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    .line 636
    iput-object v1, v5, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    goto :goto_7

    .line 638
    :cond_1e
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v1

    new-array v4, v8, [Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->update([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V

    .line 640
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->get(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message;->refreshOutboundStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V

    goto/16 :goto_2

    .line 616
    :pswitch_13
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 617
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 619
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getByEngineIdentifierAndNumber([BI)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 621
    iput v3, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    .line 622
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    goto/16 :goto_2

    .line 604
    :pswitch_14
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 605
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 607
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getByEngineIdentifierAndNumber([BI)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 609
    iput v4, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    .line 610
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    goto/16 :goto_2

    .line 593
    :pswitch_15
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 594
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "progress"

    .line 595
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 596
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getByEngineIdentifierAndNumber([BI)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 598
    iput v1, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    .line 599
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    goto/16 :goto_2

    :pswitch_16
    const-string v0, "attachment"

    .line 518
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/ObvAttachment;

    if-nez v0, :cond_1f

    goto/16 :goto_2

    .line 524
    :cond_1f
    :try_start_2
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v1

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvAttachment;->getMessageIdentifier()[B

    move-result-object v2

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvAttachment;->getNumber()I

    move-result v5

    invoke-interface {v1, v2, v5}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getByEngineIdentifierAndNumber([BI)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 526
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object v2

    iget-wide v9, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fyleId:J

    invoke-interface {v2, v9, v10}, Lio/olvid/messenger/databases/dao/FyleDao;->getById(J)Lio/olvid/messenger/databases/entity/Fyle;

    move-result-object v2

    .line 527
    iget-object v5, v2, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    .line 528
    invoke-static {v5}, Lio/olvid/messenger/databases/entity/Fyle;->acquireLock([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 530
    :try_start_3
    new-instance v9, Ljava/io/File;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvAttachment;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Lio/olvid/messenger/databases/entity/Fyle;->computeSHA256(Landroid/net/Uri;)Lio/olvid/messenger/databases/entity/Fyle$SizeAndSha256;

    move-result-object v9

    if-eqz v9, :cond_22

    .line 531
    iget-object v9, v9, Lio/olvid/messenger/databases/entity/Fyle$SizeAndSha256;->sha256:[B

    invoke-static {v5, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_20

    goto :goto_9

    .line 556
    :cond_20
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvAttachment;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lio/olvid/messenger/databases/entity/Fyle;->moveToFyleDirectory(Ljava/lang/String;)V

    .line 557
    iget-object v8, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v8}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object v8

    invoke-interface {v8, v2}, Lio/olvid/messenger/databases/dao/FyleDao;->update(Lio/olvid/messenger/databases/entity/Fyle;)V

    .line 560
    iput v4, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    const/high16 v8, 0x3f800000    # 1.0f

    .line 561
    iput v8, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    .line 562
    iget-object v8, v2, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    iput-object v8, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->filePath:Ljava/lang/String;

    .line 563
    iget-object v8, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v8}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v8

    invoke-interface {v8, v1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    .line 566
    iget-object v8, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v8}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v8

    iget-wide v9, v2, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    invoke-interface {v8, v9, v10}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getForFyleId(J)Ljava/util/List;

    move-result-object v2

    .line 567
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 568
    iget v9, v8, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    if-eqz v9, :cond_21

    if-eq v9, v6, :cond_21

    if-eq v9, v3, :cond_21

    goto :goto_8

    .line 572
    :cond_21
    iput v4, v8, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    const/high16 v9, 0x3f800000    # 1.0f

    .line 573
    iput v9, v8, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    .line 574
    iget-object v9, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->filePath:Ljava/lang/String;

    iput-object v9, v8, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->filePath:Ljava/lang/String;

    .line 575
    iget-wide v9, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->size:J

    iput-wide v9, v8, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->size:J

    .line 576
    iget-object v9, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v9}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v9

    invoke-interface {v9, v8}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    .line 577
    iget-object v9, v7, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    iget-object v10, v8, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    iget-object v8, v8, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v10, v8}, Lio/olvid/engine/engine/Engine;->deleteAttachment([BI)V

    goto :goto_8

    .line 533
    :cond_22
    :goto_9
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v3

    iget-wide v9, v2, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    invoke-interface {v3, v9, v10}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getMessageIdsForFyleSync(J)Ljava/util/List;

    move-result-object v3

    .line 534
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_23

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v9, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->messageId:J

    cmp-long v6, v3, v9

    if-nez v6, :cond_23

    .line 535
    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Fyle;->delete()V

    goto :goto_a

    .line 537
    :cond_23
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->delete(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    .line 540
    :goto_a
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v2

    iget-wide v3, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->messageId:J

    invoke-interface {v2, v3, v4}, Lio/olvid/messenger/databases/dao/MessageDao;->get(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 544
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v2

    iget-wide v3, v1, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v2, v3, v4}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getStatusForMessage(J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 545
    sget-object v6, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->imageAndVideoPattern:Ljava/util/regex/Pattern;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_24

    add-int/lit8 v3, v3, 0x1

    :cond_24
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 550
    :cond_25
    iput v8, v1, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    .line 551
    iput v3, v1, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    .line 552
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 583
    :cond_26
    :try_start_4
    invoke-static {v5}, Lio/olvid/messenger/databases/entity/Fyle;->releaseLock([B)V

    goto :goto_c

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lio/olvid/messenger/databases/entity/Fyle;->releaseLock([B)V

    .line 584
    throw v0

    .line 586
    :cond_27
    :goto_c
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v1, v0}, Lio/olvid/engine/engine/Engine;->deleteAttachment(Lio/olvid/engine/engine/types/ObvAttachment;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    .line 588
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 504
    :pswitch_17
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 505
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 506
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 509
    :try_start_5
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v3, v1, v0}, Lio/olvid/engine/engine/Engine;->getContactDeviceCount([B[B)I

    move-result v0

    iput v0, v2, Lio/olvid/messenger/databases/entity/Contact;->deviceCount:I

    .line 510
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/olvid/messenger/databases/dao/ContactDao;->update(Lio/olvid/messenger/databases/entity/Contact;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 491
    :pswitch_18
    new-instance v0, Lio/olvid/messenger/EngineNotificationProcessor$3;

    invoke-direct {v0, v7, v1}, Lio/olvid/messenger/EngineNotificationProcessor$3;-><init>(Lio/olvid/messenger/EngineNotificationProcessor;Ljava/util/HashMap;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_19
    const-string v0, "uuid"

    .line 454
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 455
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->invitationDao()Lio/olvid/messenger/databases/dao/InvitationDao;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/olvid/messenger/databases/dao/InvitationDao;->getByDialogUuid(Ljava/util/UUID;)Lio/olvid/messenger/databases/entity/Invitation;

    move-result-object v0

    const-string v2, "dialog"

    .line 456
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/engine/types/ObvDialog;

    const-string v3, "creation_timestamp"

    .line 457
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    if-nez v2, :cond_28

    goto/16 :goto_2

    .line 461
    :cond_28
    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_2

    .line 479
    :pswitch_1a
    new-instance v1, Lio/olvid/messenger/databases/entity/Invitation;

    invoke-direct {v1, v2, v3, v4}, Lio/olvid/messenger/databases/entity/Invitation;-><init>(Lio/olvid/engine/engine/types/ObvDialog;J)V

    .line 480
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->invitationDao()Lio/olvid/messenger/databases/dao/InvitationDao;

    move-result-object v2

    new-array v3, v6, [Lio/olvid/messenger/databases/entity/Invitation;

    aput-object v1, v3, v8

    invoke-interface {v2, v3}, Lio/olvid/messenger/databases/dao/InvitationDao;->insert([Lio/olvid/messenger/databases/entity/Invitation;)V

    if-eqz v0, :cond_29

    .line 482
    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v0

    iget-object v2, v1, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 483
    :cond_29
    invoke-static {v1}, Lio/olvid/messenger/AndroidNotificationManager;->displayInvitationNotification(Lio/olvid/messenger/databases/entity/Invitation;)V

    goto/16 :goto_2

    .line 467
    :pswitch_1b
    new-instance v0, Lio/olvid/messenger/databases/entity/Invitation;

    invoke-direct {v0, v2, v3, v4}, Lio/olvid/messenger/databases/entity/Invitation;-><init>(Lio/olvid/engine/engine/types/ObvDialog;J)V

    .line 468
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->invitationDao()Lio/olvid/messenger/databases/dao/InvitationDao;

    move-result-object v1

    new-array v2, v6, [Lio/olvid/messenger/databases/entity/Invitation;

    aput-object v0, v2, v8

    invoke-interface {v1, v2}, Lio/olvid/messenger/databases/dao/InvitationDao;->insert([Lio/olvid/messenger/databases/entity/Invitation;)V

    goto/16 :goto_2

    .line 434
    :pswitch_1c
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 435
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 436
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v1, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    new-instance v2, Lio/olvid/messenger/EngineNotificationProcessor$2;

    invoke-direct {v2, v7, v0}, Lio/olvid/messenger/EngineNotificationProcessor$2;-><init>(Lio/olvid/messenger/EngineNotificationProcessor;Lio/olvid/messenger/databases/entity/Contact;)V

    invoke-virtual {v1, v2}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 401
    :pswitch_1d
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 402
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    if-eqz v0, :cond_1

    if-nez v1, :cond_2a

    goto/16 :goto_2

    .line 406
    :cond_2a
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v2

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v2

    if-nez v2, :cond_1

    .line 408
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    new-instance v3, Lio/olvid/messenger/EngineNotificationProcessor$1;

    invoke-direct {v3, v7, v1, v0}, Lio/olvid/messenger/EngineNotificationProcessor$1;-><init>(Lio/olvid/messenger/EngineNotificationProcessor;Lio/olvid/engine/engine/types/identities/ObvIdentity;[B)V

    invoke-virtual {v2, v3}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    .line 422
    iget-object v2, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v2

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v2

    .line 424
    :try_start_6
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lio/olvid/engine/engine/Engine;->getContactDeviceCount([B[B)I

    move-result v3

    iput v3, v2, Lio/olvid/messenger/databases/entity/Contact;->deviceCount:I

    .line 425
    iget-object v3, v7, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lio/olvid/engine/engine/Engine;->getContactEstablishedChannelsCount([B[B)I

    move-result v0

    iput v0, v2, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 429
    :goto_d
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/olvid/messenger/databases/dao/ContactDao;->update(Lio/olvid/messenger/databases/entity/Contact;)V

    goto/16 :goto_2

    :pswitch_1e
    const-string v0, "message_key"

    .line 194
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/olvid/engine/engine/types/ObvMessage;

    if-nez v1, :cond_2b

    goto/16 :goto_2

    .line 198
    :cond_2b
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getIdentifier()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->getCountForEngineIdentifier([B)I

    move-result v0

    if-lez v0, :cond_2c

    .line 201
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/Engine;->deleteMessage([B)V

    goto/16 :goto_2

    .line 205
    :cond_2c
    :try_start_7
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getMessagePayload()[B

    move-result-object v2

    const-class v3, Lio/olvid/messenger/databases/entity/Message$JsonPayload;

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Message$JsonPayload;

    .line 206
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message$JsonPayload;->getJsonReturnReceipt()Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;

    move-result-object v2

    .line 207
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message$JsonPayload;->getJsonMessage()Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    move-result-object v21

    if-nez v21, :cond_2d

    .line 209
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/Engine;->deleteMessage([B)V

    goto/16 :goto_2

    .line 213
    :cond_2d
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getBytesFromIdentity()[B

    move-result-object v0

    .line 214
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getBytesToIdentity()[B

    move-result-object v3

    .line 215
    iget-object v4, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v4

    if-nez v4, :cond_2e

    const-string v0, "Received an message from un unknown contact!!!"

    .line 217
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 218
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/Engine;->deleteMessage([B)V

    goto/16 :goto_2

    .line 223
    :cond_2e
    invoke-virtual/range {v21 .. v21}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getGroupUid()[B

    move-result-object v5

    .line 224
    invoke-virtual/range {v21 .. v21}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getGroupOwner()[B

    move-result-object v9

    if-nez v5, :cond_2f

    if-nez v9, :cond_2f

    .line 227
    iget-object v5, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByContact([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v0

    :goto_e
    move-object v5, v0

    goto :goto_f

    :cond_2f
    if-eqz v5, :cond_40

    if-nez v9, :cond_30

    goto/16 :goto_1f

    .line 234
    :cond_30
    array-length v10, v5

    array-length v11, v9

    add-int/2addr v10, v11

    new-array v10, v10, [B

    .line 235
    array-length v11, v9

    invoke-static {v9, v8, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    array-length v9, v9

    array-length v11, v5

    invoke-static {v5, v8, v10, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object v5, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v5

    invoke-interface {v5, v10, v3, v0}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->get([B[B[B)Lio/olvid/messenger/databases/entity/ContactGroupJoin;

    move-result-object v5

    if-nez v5, :cond_31

    iget-object v5, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    .line 240
    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v5

    invoke-interface {v5, v0, v3, v10}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->get([B[B[B)Lio/olvid/messenger/databases/entity/PendingGroupMember;

    move-result-object v0

    if-nez v0, :cond_31

    const-string v0, "Received a group message for an unknown group, or from someone not in the group, DISCARDING IT!"

    .line 241
    invoke-static {v0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 242
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/Engine;->deleteMessage([B)V

    goto/16 :goto_2

    .line 246
    :cond_31
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0, v3, v10}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByGroupOwnerAndUid([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v0

    goto :goto_e

    .line 249
    :goto_f
    invoke-virtual/range {v21 .. v21}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getAttachments()[Lio/olvid/engine/engine/types/ObvAttachment;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_32

    .line 251
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/Engine;->deleteMessage([B)V

    goto/16 :goto_2

    .line 255
    :cond_32
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getAttachments()[Lio/olvid/engine/engine/types/ObvAttachment;

    move-result-object v0

    array-length v0, v0

    new-array v9, v0, [Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;

    const/4 v0, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 259
    :goto_10
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getAttachments()[Lio/olvid/engine/engine/types/ObvAttachment;

    move-result-object v10

    array-length v10, v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    if-ge v0, v10, :cond_34

    .line 261
    :try_start_8
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v10

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getAttachments()[Lio/olvid/engine/engine/types/ObvAttachment;

    move-result-object v11

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lio/olvid/engine/engine/types/ObvAttachment;->getMetadata()[B

    move-result-object v11

    const-class v12, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;

    invoke-virtual {v10, v11, v12}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;

    aput-object v10, v9, v0

    .line 262
    sget-object v10, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->imageAndVideoPattern:Ljava/util/regex/Pattern;

    aget-object v11, v9, v0

    invoke-virtual {v11}, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    if-eqz v10, :cond_33

    add-int/lit8 v33, v33, 0x1

    :cond_33
    add-int/lit8 v32, v32, 0x1

    const/4 v10, 0x0

    goto :goto_11

    :catch_5
    const/4 v10, 0x0

    .line 267
    :try_start_9
    aput-object v10, v9, v0

    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 271
    :cond_34
    new-instance v10, Lio/olvid/messenger/databases/entity/Message;

    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    .line 273
    invoke-virtual/range {v21 .. v21}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getSenderSequenceNumber()J

    move-result-wide v19

    .line 276
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getServerTimestamp()J

    move-result-wide v23

    const/16 v25, 0x3

    const/16 v26, 0x0

    iget-wide v11, v5, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    .line 280
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getIdentifier()[B

    move-result-object v29

    iget-object v13, v4, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    .line 282
    invoke-virtual/range {v21 .. v21}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getSenderThreadIdentifier()Ljava/util/UUID;

    move-result-object v31

    move-object/from16 v17, v10

    move-object/from16 v18, v0

    move-object/from16 v22, v2

    move-wide/from16 v27, v11

    move-object/from16 v30, v13

    invoke-direct/range {v17 .. v33}, Lio/olvid/messenger/databases/entity/Message;-><init>(Lio/olvid/messenger/databases/AppDatabase;JLio/olvid/messenger/databases/entity/Message$JsonMessage;Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;JIIJ[B[BLjava/util/UUID;II)V

    .line 286
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    invoke-interface {v0, v10}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    move-result-wide v11

    iput-wide v11, v10, Lio/olvid/messenger/databases/entity/Message;->id:J

    .line 287
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getServerTimestamp()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lio/olvid/messenger/databases/entity/Discussion;->updateLastMessageTimestamp(J)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 288
    iget-object v0, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0, v5}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    :cond_35
    if-eqz v2, :cond_36

    .line 293
    invoke-virtual {v10, v5, v6}, Lio/olvid/messenger/databases/entity/Message;->sendReturnReceipt(Lio/olvid/messenger/databases/entity/Discussion;I)V

    .line 296
    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 298
    :goto_12
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getAttachments()[Lio/olvid/engine/engine/types/ObvAttachment;

    move-result-object v0

    array-length v0, v0

    if-ge v11, v0, :cond_3d

    .line 299
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvMessage;->getAttachments()[Lio/olvid/engine/engine/types/ObvAttachment;

    move-result-object v0

    aget-object v12, v0, v11

    .line 300
    aget-object v0, v9, v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    if-nez v12, :cond_37

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v18, v9

    move-object v1, v10

    goto/16 :goto_1d

    :cond_37
    if-eqz v0, :cond_3c

    .line 308
    :try_start_a
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->getSha256()[B

    move-result-object v13

    .line 309
    invoke-static {v13}, Lio/olvid/messenger/databases/entity/Fyle;->acquireLock([B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 311
    :try_start_b
    iget-object v14, v7, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v14}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object v14

    invoke-interface {v14, v13}, Lio/olvid/messenger/databases/dao/FyleDao;->getBySha256([B)Lio/olvid/messenger/databases/entity/Fyle;

    move-result-object v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    if-eqz v14, :cond_3a

    .line 314
    :try_start_c
    invoke-virtual {v14}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v15, :cond_38

    .line 316
    :try_start_d
    new-instance v15, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v18, v9

    :try_start_e
    iget-wide v8, v14, Lio/olvid/messenger/databases/entity/Fyle;->id:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    iget-wide v6, v10, Lio/olvid/messenger/databases/entity/Message;->id:J

    iget-object v14, v14, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    .line 321
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->getFileName()Ljava/lang/String;

    move-result-object v29

    .line 322
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->getType()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x4

    .line 324
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getExpectedLength()J

    move-result-wide v32

    const/high16 v34, 0x3f800000    # 1.0f

    .line 326
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getMessageIdentifier()[B

    move-result-object v35

    .line 327
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v22, v15

    move-wide/from16 v23, v8

    move-wide/from16 v25, v6

    move-object/from16 v27, v3

    move-object/from16 v28, v14

    invoke-direct/range {v22 .. v36}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;-><init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object/from16 v6, p0

    .line 329
    :try_start_10
    iget-object v0, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v0

    invoke-interface {v0, v15}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->insert(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    .line 330
    iget-object v0, v6, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v0, v12}, Lio/olvid/engine/engine/Engine;->deleteAttachment(Lio/olvid/engine/engine/types/ObvAttachment;)V

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object v4, v5

    :goto_13
    move-object v1, v10

    goto/16 :goto_19

    :catchall_1
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    move-object v6, v7

    goto :goto_15

    :catchall_3
    move-exception v0

    move-object v6, v7

    move-object/from16 v18, v9

    goto :goto_15

    :cond_38
    move-object v6, v7

    move-object/from16 v18, v9

    .line 333
    new-instance v7, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-wide v8, v14, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    iget-wide v14, v10, Lio/olvid/messenger/databases/entity/Message;->id:J

    .line 337
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getUrl()Ljava/lang/String;

    move-result-object v28

    .line 338
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->getFileName()Ljava/lang/String;

    move-result-object v29

    .line 339
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->getType()Ljava/lang/String;

    move-result-object v30

    .line 340
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->isDownloadRequested()Z

    move-result v0

    if-eqz v0, :cond_39

    const/16 v31, 0x1

    goto :goto_14

    :cond_39
    const/16 v31, 0x0

    .line 341
    :goto_14
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getExpectedLength()J

    move-result-wide v32
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move-object/from16 p1, v1

    .line 342
    :try_start_11
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getReceivedLength()J

    move-result-wide v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    long-to-float v0, v0

    move-object/from16 p2, v4

    move-object v1, v5

    :try_start_12
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getExpectedLength()J

    move-result-wide v4

    long-to-float v4, v4

    div-float v34, v0, v4

    .line 343
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getMessageIdentifier()[B

    move-result-object v35

    .line 344
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v22, v7

    move-wide/from16 v23, v8

    move-wide/from16 v25, v14

    move-object/from16 v27, v3

    invoke-direct/range {v22 .. v36}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;-><init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V

    .line 346
    iget-object v0, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v0

    invoke-interface {v0, v7}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->insert(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    .line 347
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    goto :goto_13

    :catchall_4
    move-exception v0

    goto :goto_16

    :catchall_5
    move-exception v0

    :goto_15
    move-object/from16 p1, v1

    :goto_16
    move-object/from16 p2, v4

    goto :goto_17

    :catchall_6
    move-exception v0

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object v6, v7

    move-object/from16 v18, v9

    :goto_17
    move-object v4, v5

    goto/16 :goto_1a

    :cond_3a
    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object v1, v5

    move-object v6, v7

    move-object/from16 v18, v9

    .line 352
    new-instance v4, Lio/olvid/messenger/databases/entity/Fyle;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->getSha256()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lio/olvid/messenger/databases/entity/Fyle;-><init>([B)V

    .line 353
    iget-object v5, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object v5

    invoke-interface {v5, v4}, Lio/olvid/messenger/databases/dao/FyleDao;->insert(Lio/olvid/messenger/databases/entity/Fyle;)J

    move-result-wide v7

    iput-wide v7, v4, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    .line 354
    new-instance v5, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-wide v7, v4, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    iget-wide v14, v10, Lio/olvid/messenger/databases/entity/Message;->id:J

    .line 358
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getUrl()Ljava/lang/String;

    move-result-object v28

    .line 359
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->getFileName()Ljava/lang/String;

    move-result-object v29

    .line 360
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->getType()Ljava/lang/String;

    move-result-object v30

    .line 361
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->isDownloadRequested()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v31, 0x1

    goto :goto_18

    :cond_3b
    const/16 v31, 0x0

    .line 362
    :goto_18
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getExpectedLength()J

    move-result-wide v32
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    move-object v4, v1

    .line 363
    :try_start_13
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getReceivedLength()J

    move-result-wide v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    long-to-float v0, v0

    move-object v1, v10

    :try_start_14
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getExpectedLength()J

    move-result-wide v9

    long-to-float v9, v9

    div-float v34, v0, v9

    .line 364
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getMessageIdentifier()[B

    move-result-object v35

    .line 365
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvAttachment;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v22, v5

    move-wide/from16 v23, v7

    move-wide/from16 v25, v14

    move-object/from16 v27, v3

    invoke-direct/range {v22 .. v36}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;-><init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V

    .line 367
    iget-object v0, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v0

    invoke-interface {v0, v5}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->insert(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    .line 368
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 371
    :goto_19
    :try_start_15
    invoke-static {v13}, Lio/olvid/messenger/databases/entity/Fyle;->releaseLock([B)V

    goto :goto_1d

    :catchall_7
    move-exception v0

    goto :goto_1b

    :catchall_8
    move-exception v0

    goto :goto_1a

    :catchall_9
    move-exception v0

    move-object v4, v1

    goto :goto_1a

    :catchall_a
    move-exception v0

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v18, v9

    :goto_1a
    move-object v1, v10

    :goto_1b
    invoke-static {v13}, Lio/olvid/messenger/databases/entity/Fyle;->releaseLock([B)V

    .line 372
    throw v0

    :catch_6
    move-exception v0

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v18, v9

    move-object v1, v10

    goto :goto_1c

    :cond_3c
    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v18, v9

    move-object v1, v10

    .line 306
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    :catch_7
    move-exception v0

    .line 374
    :goto_1c
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Error reading an attachment creating the fyle"

    .line 375
    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 376
    iget-object v0, v6, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v0, v12}, Lio/olvid/engine/engine/Engine;->deleteAttachment(Lio/olvid/engine/engine/types/ObvAttachment;)V

    :goto_1d
    add-int/lit8 v11, v11, 0x1

    move-object v10, v1

    move-object v5, v4

    move-object v7, v6

    move-object/from16 v9, v18

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    goto/16 :goto_12

    :cond_3d
    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object v4, v5

    move-object v6, v7

    move-object v1, v10

    .line 379
    iget-object v0, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v0

    move-object/from16 v3, p2

    iget-object v5, v3, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    invoke-interface {v0, v5}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->get([B)Lio/olvid/messenger/databases/entity/OwnedIdentity;

    move-result-object v0

    .line 380
    invoke-static {v4, v1, v3, v0}, Lio/olvid/messenger/AndroidNotificationManager;->displayReceivedMessageNotification(Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/entity/Message;Lio/olvid/messenger/databases/entity/Contact;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    .line 382
    iget-object v0, v6, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual/range {p1 .. p1}, Lio/olvid/engine/engine/types/ObvMessage;->getIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/Engine;->deleteMessage([B)V

    .line 385
    invoke-static {}, Lio/olvid/messenger/activities/SettingsActivity;->getAutoDownloadSize()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4f

    .line 387
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    const-wide/16 v4, -0x1

    cmp-long v7, v0, v4

    if-eqz v7, :cond_3f

    .line 388
    iget-wide v4, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->size:J

    cmp-long v7, v4, v0

    if-gez v7, :cond_3e

    .line 389
    :cond_3f
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v4

    iget-object v5, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    iget-object v7, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Lio/olvid/engine/engine/Engine;->downloadSmallAttachment([BI)V

    const/4 v4, 0x1

    .line 390
    iput v4, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    .line 391
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    goto :goto_1e

    :cond_40
    :goto_1f
    move-object/from16 p1, v1

    move-object v6, v7

    const-string v0, "Received a group message with one of groupOwner or groupUid null, DISCARDING IT!"

    .line 230
    invoke-static {v0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 231
    iget-object v0, v6, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual/range {p1 .. p1}, Lio/olvid/engine/engine/types/ObvMessage;->getIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/Engine;->deleteMessage([B)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    goto/16 :goto_28

    :catch_8
    move-exception v0

    goto :goto_20

    :catch_9
    move-exception v0

    move-object v6, v7

    .line 396
    :goto_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_28

    :pswitch_1f
    move-object v6, v7

    const/4 v10, 0x0

    .line 130
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const-string v2, "server_uid"

    .line 131
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    const-string v3, "nonce"

    .line 132
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    const-string v4, "encrypted_payload"

    .line 133
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    const-string v7, "timestamp"

    .line 134
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 136
    iget-object v1, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v1

    invoke-interface {v1, v3}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->getReturnReceiptKeysForNonce([B)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v9, v10

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 141
    iget-object v11, v6, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v11, v9, v4}, Lio/olvid/engine/engine/Engine;->decryptReturnReceipt([B[B)Lio/olvid/engine/engine/types/ObvReturnReceipt;

    move-result-object v11

    if-eqz v11, :cond_41

    move-object v10, v9

    move-object v9, v11

    goto :goto_22

    :cond_41
    move-object v9, v11

    goto :goto_21

    :cond_42
    :goto_22
    if-eqz v9, :cond_4c

    .line 149
    iget-object v1, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v1

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/ObvReturnReceipt;->getBytesContactIdentity()[B

    move-result-object v4

    invoke-interface {v1, v4, v3, v10}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->getFromReturnReceipt([B[B[B)Ljava/util/List;

    move-result-object v1

    .line 150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_43
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    .line 151
    invoke-virtual {v9}, Lio/olvid/engine/engine/types/ObvReturnReceipt;->getStatus()I

    move-result v4

    const/4 v10, 0x1

    if-eq v4, v10, :cond_49

    if-eq v4, v5, :cond_45

    :cond_44
    :goto_24
    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    goto :goto_23

    .line 169
    :cond_45
    iget-object v4, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    if-nez v4, :cond_44

    .line 170
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    .line 171
    iget-object v4, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    if-nez v4, :cond_46

    const/4 v4, 0x0

    new-array v10, v4, [B

    .line 172
    iput-object v10, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    .line 174
    :cond_46
    iget-object v4, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    const-wide/16 v10, 0x0

    if-nez v4, :cond_47

    .line 175
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    .line 177
    :cond_47
    iget-object v4, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    if-nez v4, :cond_48

    .line 178
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    .line 180
    :cond_48
    iget-object v4, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v4

    const/4 v10, 0x1

    new-array v11, v10, [Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    const/4 v10, 0x0

    aput-object v3, v11, v10

    invoke-interface {v4, v11}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->update([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V

    .line 181
    iget-object v4, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v4

    iget-wide v10, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->messageId:J

    invoke-interface {v4, v10, v11}, Lio/olvid/messenger/databases/dao/MessageDao;->get(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 182
    invoke-virtual {v3}, Lio/olvid/messenger/databases/entity/Message;->refreshOutboundStatus()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 183
    iget-object v4, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V

    goto :goto_24

    .line 153
    :cond_49
    iget-object v4, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    if-nez v4, :cond_44

    .line 154
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    .line 155
    iget-object v4, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    if-nez v4, :cond_4a

    const/4 v4, 0x0

    new-array v10, v4, [B

    .line 156
    iput-object v10, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    .line 158
    :cond_4a
    iget-object v4, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    const-wide/16 v10, 0x0

    if-nez v4, :cond_4b

    .line 159
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    .line 161
    :cond_4b
    iget-object v4, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v4

    const/4 v12, 0x1

    new-array v13, v12, [Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-interface {v4, v13}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->update([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V

    .line 162
    iget-object v4, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v4

    iget-wide v13, v3, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->messageId:J

    invoke-interface {v4, v13, v14}, Lio/olvid/messenger/databases/dao/MessageDao;->get(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 163
    invoke-virtual {v3}, Lio/olvid/messenger/databases/entity/Message;->refreshOutboundStatus()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 164
    iget-object v4, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V

    goto/16 :goto_23

    .line 190
    :cond_4c
    iget-object v1, v6, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    invoke-virtual {v1, v0, v2}, Lio/olvid/engine/engine/Engine;->deleteReturnReceipt([B[B)V

    goto/16 :goto_28

    :pswitch_20
    move-object v6, v7

    .line 96
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 97
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 98
    iget-object v2, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 101
    :try_start_17
    iget-object v1, v6, Lio/olvid/messenger/EngineNotificationProcessor;->engine:Lio/olvid/engine/engine/Engine;

    iget-object v2, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iget-object v3, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    invoke-virtual {v1, v2, v3}, Lio/olvid/engine/engine/Engine;->getContactEstablishedChannelsCount([B[B)I

    move-result v1

    iput v1, v0, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    .line 102
    iget-object v1, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/ContactDao;->update(Lio/olvid/messenger/databases/entity/Contact;)V

    .line 104
    iget v1, v0, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    if-lez v1, :cond_4f

    .line 107
    iget-object v1, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    iget-object v2, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v3, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->getUnprocessedMessagesForContact([B[B)Ljava/util/List;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/entity/Message;

    const/4 v3, 0x0

    .line 109
    invoke-virtual {v2, v3}, Lio/olvid/messenger/databases/entity/Message;->post(Z)V

    goto :goto_25

    .line 112
    :cond_4d
    iget-object v1, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    iget-object v2, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v3, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->getUnprocessedGroupMessagesForContact([B[B)Ljava/util/List;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/entity/Message;

    const/4 v3, 0x0

    .line 114
    invoke-virtual {v2, v3}, Lio/olvid/messenger/databases/entity/Message;->post(Z)V

    goto :goto_26

    .line 118
    :cond_4e
    iget-object v1, v6, Lio/olvid/messenger/EngineNotificationProcessor;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v1

    iget-object v2, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    invoke-interface {v1, v2, v0}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->getAllNotProcessedByContactIdentity([B[B)Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao$MessageRecipientInfoAndMessage;

    .line 120
    iget-object v2, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao$MessageRecipientInfoAndMessage;->message:Lio/olvid/messenger/databases/entity/Message;

    iget-object v1, v1, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao$MessageRecipientInfoAndMessage;->messageRecipientInfo:Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-virtual {v2, v1}, Lio/olvid/messenger/databases/entity/Message;->repost(Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    goto :goto_27

    :catch_a
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4f
    :goto_28
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a7d254e -> :sswitch_1e
        -0x79c1569e -> :sswitch_1d
        -0x784a0b0f -> :sswitch_1c
        -0x76200576 -> :sswitch_1b
        -0x75ec298f -> :sswitch_1a
        -0x6ac153c6 -> :sswitch_19
        -0x657a82df -> :sswitch_18
        -0x5bafee55 -> :sswitch_17
        -0x5a24a290 -> :sswitch_16
        -0x592e59de -> :sswitch_15
        -0x50527d84 -> :sswitch_14
        -0x4a46926e -> :sswitch_13
        -0x3d24ded3 -> :sswitch_12
        -0x36c84574 -> :sswitch_11
        -0x2bddf28e -> :sswitch_10
        -0x2712e0d1 -> :sswitch_f
        -0xd68538a -> :sswitch_e
        -0x8407f57 -> :sswitch_d
        0x4a6d936 -> :sswitch_c
        0x957cf23 -> :sswitch_b
        0x30b433c0 -> :sswitch_a
        0x44c0f622 -> :sswitch_9
        0x4d521b05 -> :sswitch_8
        0x4f51c593 -> :sswitch_7
        0x650443fa -> :sswitch_6
        0x69100c3d -> :sswitch_5
        0x71ab319c -> :sswitch_4
        0x72dc96d6 -> :sswitch_3
        0x74a80d9b -> :sswitch_2
        0x7717a35a -> :sswitch_1
        0x7ae1d483 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1a
        :pswitch_1b
        :pswitch_1a
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public getEngineNotificationListenerRegistrationNumber()J
    .locals 2

    .line 1043
    iget-wide v0, p0, Lio/olvid/messenger/EngineNotificationProcessor;->registrationNumber:J

    return-wide v0
.end method

.method public setEngineNotificationListenerRegistrationNumber(J)V
    .locals 0

    .line 1038
    iput-wide p1, p0, Lio/olvid/messenger/EngineNotificationProcessor;->registrationNumber:J

    return-void
.end method
