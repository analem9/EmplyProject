.class public Lio/olvid/messenger/activities/NotificationActionService;
.super Landroid/app/IntentService;
.source "NotificationActionService.java"


# static fields
.field public static final ACTION_ACCEPT_INVITATION:Ljava/lang/String; = "accept_invitation"

.field public static final ACTION_DISCUSSION_CLEAR:Ljava/lang/String; = "discussion_clear"

.field public static final ACTION_DISCUSSION_MARK_AS_READ:Ljava/lang/String; = "mark_as_read"

.field public static final ACTION_DISCUSSION_REPLY:Ljava/lang/String; = "discussion_reply"

.field public static final ACTION_GROUP_CLEAR:Ljava/lang/String; = "group_clear"

.field public static final ACTION_REJECT_INVITATION:Ljava/lang/String; = "reject_invitation"

.field public static final EXTRA_BYTES_GROUP_OWNER_AND_UID:Ljava/lang/String; = "group_id"

.field public static final EXTRA_BYTES_OWNED_IDENTITY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final EXTRA_DISCUSSION_ID:Ljava/lang/String; = "discussion_id"

.field public static final EXTRA_INVITATION_DIALOG_UUID:Ljava/lang/String; = "dialog_uuid"

.field public static final KEY_TEXT_REPLY:Ljava/lang/String; = "text_reply"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "NotificationActionService"

    .line 45
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$markAllDiscussionMessagesRead$1(JLjava/util/List;)V
    .locals 1

    .line 329
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object p0

    .line 330
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/entity/Message;

    const/4 v0, 0x2

    .line 331
    invoke-virtual {p2, p0, v0}, Lio/olvid/messenger/databases/entity/Message;->sendReturnReceipt(Lio/olvid/messenger/databases/entity/Discussion;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$onHandleIntent$0(Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/AppDatabase;Ljava/lang/String;J)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v11, p3

    .line 141
    iget-wide v3, v0, Lio/olvid/messenger/databases/entity/Discussion;->lastOutboundMessageSequenceNumber:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lio/olvid/messenger/databases/entity/Discussion;->lastOutboundMessageSequenceNumber:J

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lio/olvid/messenger/databases/entity/Discussion;->updateLastMessageTimestamp(J)Z

    .line 143
    invoke-virtual/range {p1 .. p1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    .line 144
    new-instance v13, Lio/olvid/messenger/databases/entity/Message;

    move-object v1, v13

    iget-wide v3, v0, Lio/olvid/messenger/databases/entity/Discussion;->lastOutboundMessageSequenceNumber:J

    new-instance v6, Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    move-object v5, v6

    move-object/from16 v7, p2

    invoke-direct {v6, v7}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v14, v0, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v15, v0, Lio/olvid/messenger/databases/entity/Discussion;->senderThreadIdentifier:Ljava/util/UUID;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v16, 0x0

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lio/olvid/messenger/databases/entity/Message;-><init>(Lio/olvid/messenger/databases/AppDatabase;JLio/olvid/messenger/databases/entity/Message$JsonMessage;Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;JIIJ[B[BLjava/util/UUID;II)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-interface {v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    move-result-wide v3

    iput-wide v3, v2, Lio/olvid/messenger/databases/entity/Message;->id:J

    const/4 v1, 0x0

    .line 160
    invoke-virtual {v2, v1}, Lio/olvid/messenger/databases/entity/Message;->post(Z)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v1

    iget-object v3, v0, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    invoke-interface {v1, v3}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->get([B)Lio/olvid/messenger/databases/entity/OwnedIdentity;

    move-result-object v1

    const/4 v3, 0x0

    .line 163
    invoke-static {v0, v2, v3, v1}, Lio/olvid/messenger/AndroidNotificationManager;->displayReceivedMessageNotification(Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/entity/Message;Lio/olvid/messenger/databases/entity/Contact;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method

.method private markAllDiscussionMessagesRead(J)V
    .locals 2

    .line 319
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;->get(J)Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v1, v0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 322
    iget-object v0, v0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {}, Lio/olvid/messenger/activities/SettingsActivity;->getDefaultSendReturnReceipt()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 327
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/olvid/messenger/databases/dao/MessageDao;->getAllUnreadDiscussionMessagesSync(J)Ljava/util/List;

    move-result-object v0

    .line 328
    new-instance v1, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$zh9AkwleAFyYuvCp4oc8WMir2cs;

    invoke-direct {v1, p1, p2, v0}, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$zh9AkwleAFyYuvCp4oc8WMir2cs;-><init>(JLjava/util/List;)V

    invoke-static {v1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    .line 335
    :cond_1
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/olvid/messenger/databases/dao/MessageDao;->markAllDiscussionMessagesRead(J)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_10

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 53
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "reject_invitation"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    const-string v4, "group_clear"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v4, "discussion_reply"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v4, "discussion_clear"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v4, "accept_invitation"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_5
    const-string v4, "mark_as_read"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x4

    :cond_1
    :goto_0
    const-string v2, "Bad dialog category"

    const/16 v4, 0x8

    const/4 v11, 0x6

    const-string v12, "dialog_uuid"

    if-eqz v3, :cond_c

    if-eq v3, v10, :cond_8

    const-string v2, "discussion_id"

    const-wide/16 v9, -0x1

    if-eq v3, v8, :cond_7

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_2

    goto/16 :goto_3

    .line 129
    :cond_2
    invoke-virtual {v0, v2, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v9

    if-eqz v4, :cond_10

    .line 131
    invoke-static/range {p1 .. p1}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v4, "text_reply"

    .line 133
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 135
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 136
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 139
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 140
    new-instance v4, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$7S5qCFIm-sXi9P27VnHvmDw-W0E;

    move-object v11, v4

    move-object v13, v0

    move-wide v15, v2

    invoke-direct/range {v11 .. v16}, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$7S5qCFIm-sXi9P27VnHvmDw-W0E;-><init>(Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/AppDatabase;Ljava/lang/String;J)V

    invoke-virtual {v0, v4}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    .line 165
    invoke-direct {v1, v2, v3}, Lio/olvid/messenger/activities/NotificationActionService;->markAllDiscussionMessagesRead(J)V

    goto/16 :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 167
    invoke-static {v12, v0, v0, v0}, Lio/olvid/messenger/AndroidNotificationManager;->displayReceivedMessageNotification(Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/entity/Message;Lio/olvid/messenger/databases/entity/Contact;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    goto/16 :goto_3

    .line 173
    :cond_4
    invoke-static {v2, v3}, Lio/olvid/messenger/AndroidNotificationManager;->clearReceivedMessageNotification(J)V

    goto/16 :goto_3

    .line 121
    :cond_5
    invoke-virtual {v0, v2, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v9

    if-eqz v0, :cond_10

    .line 123
    invoke-static {v2, v3}, Lio/olvid/messenger/AndroidNotificationManager;->clearReceivedMessageNotification(J)V

    .line 124
    invoke-direct {v1, v2, v3}, Lio/olvid/messenger/activities/NotificationActionService;->markAllDiscussionMessagesRead(J)V

    goto/16 :goto_3

    .line 114
    :cond_6
    invoke-virtual {v0, v2, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v9

    if-eqz v0, :cond_10

    .line 116
    invoke-static {v2, v3}, Lio/olvid/messenger/AndroidNotificationManager;->clearGroupNotification(J)V

    goto/16 :goto_3

    .line 107
    :cond_7
    invoke-virtual {v0, v2, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v9

    if-eqz v0, :cond_10

    .line 109
    invoke-static {v2, v3}, Lio/olvid/messenger/AndroidNotificationManager;->clearReceivedMessageNotification(J)V

    goto/16 :goto_3

    .line 81
    :cond_8
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 84
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->invitationDao()Lio/olvid/messenger/databases/dao/InvitationDao;

    move-result-object v3

    invoke-interface {v3, v0}, Lio/olvid/messenger/databases/dao/InvitationDao;->getByDialogUuid(Ljava/util/UUID;)Lio/olvid/messenger/databases/entity/Invitation;

    move-result-object v3

    .line 85
    iget-object v5, v3, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v5

    if-eq v5, v10, :cond_b

    if-eq v5, v11, :cond_a

    if-ne v5, v4, :cond_9

    .line 93
    iget-object v2, v3, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2, v9}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptGroupInvite(Z)V

    goto :goto_1

    .line 96
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_a
    iget-object v2, v3, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2, v9}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptMediatorInvite(Z)V

    goto :goto_1

    .line 87
    :cond_b
    iget-object v2, v3, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2, v9}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptInvite(Z)V

    .line 98
    :goto_1
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v2

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2, v3}, Lio/olvid/engine/engine/Engine;->respondToDialog(Lio/olvid/engine/engine/types/ObvDialog;)V

    .line 99
    invoke-static {v0}, Lio/olvid/messenger/AndroidNotificationManager;->clearInvitationNotification(Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 55
    :cond_c
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 58
    :try_start_1
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->invitationDao()Lio/olvid/messenger/databases/dao/InvitationDao;

    move-result-object v3

    invoke-interface {v3, v0}, Lio/olvid/messenger/databases/dao/InvitationDao;->getByDialogUuid(Ljava/util/UUID;)Lio/olvid/messenger/databases/entity/Invitation;

    move-result-object v3

    .line 59
    iget-object v5, v3, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v5

    if-eq v5, v10, :cond_f

    if-eq v5, v11, :cond_e

    if-ne v5, v4, :cond_d

    .line 67
    iget-object v2, v3, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2, v10}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptGroupInvite(Z)V

    goto :goto_2

    .line 70
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_e
    iget-object v2, v3, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2, v10}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptMediatorInvite(Z)V

    goto :goto_2

    .line 61
    :cond_f
    iget-object v2, v3, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2, v10}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptInvite(Z)V

    .line 72
    :goto_2
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v2

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2, v3}, Lio/olvid/engine/engine/Engine;->respondToDialog(Lio/olvid/engine/engine/types/ObvDialog;)V

    .line 73
    invoke-static {v0}, Lio/olvid/messenger/AndroidNotificationManager;->clearInvitationNotification(Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2bec99ef -> :sswitch_5
        0x6102330 -> :sswitch_4
        0xc949376 -> :sswitch_3
        0xd64f013 -> :sswitch_2
        0x40c9f48d -> :sswitch_1
        0x7cd43039 -> :sswitch_0
    .end sparse-switch
.end method
