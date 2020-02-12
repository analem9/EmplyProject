.class public Lio/olvid/messenger/AndroidNotificationManager;
.super Ljava/lang/Object;
.source "AndroidNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;,
        Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;
    }
.end annotation


# static fields
.field private static final DELAY_BETWEEN_SAME_CHANNEL_VIBRATE:J = 0xbb8L

.field private static final DISCUSSION_NOTIFICATION_SHARED_PREFERENCE_KEY_PREFIX:Ljava/lang/String; = "discussion_"

.field private static final GROUP_NOTIFICATION_SHARED_PREFERENCE_KEY_PREFIX:Ljava/lang/String; = "group_"

.field public static final INVITATION_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "olvid_invitation_notification"

.field private static final INVITATION_VIBRATION_PATTERN:[J

.field public static final MESSAGE_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "olvid_message_notification"

.field private static final MESSAGE_VIBRATION_PATTERN:[J

.field private static currentShowingDiscussionId:Ljava/lang/Long;

.field private static messageLastVibrationTimestamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 66
    fill-array-data v0, :array_0

    sput-object v0, Lio/olvid/messenger/AndroidNotificationManager;->MESSAGE_VIBRATION_PATTERN:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 67
    fill-array-data v0, :array_1

    sput-object v0, Lio/olvid/messenger/AndroidNotificationManager;->INVITATION_VIBRATION_PATTERN:[J

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/olvid/messenger/AndroidNotificationManager;->messageLastVibrationTimestamp:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 8
        0x0
        0x64
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x64
        0x32
        0x64
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(J)I
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lio/olvid/messenger/AndroidNotificationManager;->getGroupNotificationChannelId(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(J)I
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lio/olvid/messenger/AndroidNotificationManager;->getMessageNotificationChannelId(J)I

    move-result p0

    return p0
.end method

.method private static addMessageNotification(Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/entity/Message;Lio/olvid/messenger/databases/entity/Contact;Lio/olvid/messenger/databases/entity/OwnedIdentity;)Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;
    .locals 8

    .line 308
    iget-wide v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {v0, v1}, Lio/olvid/messenger/AndroidNotificationManager;->loadDiscussionNotification(J)Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 313
    :cond_0
    new-instance v1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;

    invoke-direct {v1}, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;-><init>()V

    .line 314
    iget-object v2, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    if-eqz v2, :cond_1

    .line 315
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    iput-object v0, v1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->discussionInitialBytes:[B

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, v1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->isGroup:Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-object v0

    .line 321
    :cond_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iput-object v0, v1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->discussionInitialBytes:[B

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, v1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->isGroup:Z

    .line 324
    :goto_0
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    iput-object v0, v1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->title:Ljava/lang/String;

    .line 325
    iget-object v0, p3, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    iput-object v0, v1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->bytesOwnedIdentity:[B

    .line 326
    iget-object p3, p3, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    iput-object p3, v1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->ownDisplayName:Ljava/lang/String;

    move-object v0, v1

    .line 329
    :cond_3
    iget-object p3, v0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->messageNotifications:Ljava/util/List;

    if-nez p3, :cond_4

    .line 330
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, v0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->messageNotifications:Ljava/util/List;

    :cond_4
    if-eqz p1, :cond_6

    .line 334
    iget-object p3, v0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->messageNotifications:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz p2, :cond_5

    .line 336
    iget-object p3, v0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->messageNotifications:Ljava/util/List;

    new-instance v7, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;

    iget-wide v1, p1, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    double-to-long v2, v1

    invoke-virtual {p2}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Message;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;-><init>(JLjava/lang/String;[BLjava/lang/String;)V

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    :cond_5
    iget-object p2, v0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->messageNotifications:Ljava/util/List;

    new-instance p3, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;

    iget-wide v1, p1, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    double-to-long v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Message;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;-><init>(JLjava/lang/String;[BLjava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :goto_1
    iget-wide p0, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {p0, p1, v0}, Lio/olvid/messenger/AndroidNotificationManager;->saveDiscussionNotification(JLio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;)V

    :cond_6
    return-object v0
.end method

.method public static clearGroupNotification(J)V
    .locals 1

    .line 197
    new-instance v0, Lio/olvid/messenger/AndroidNotificationManager$1;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/AndroidNotificationManager$1;-><init>(J)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static clearInvitationNotification(Ljava/util/UUID;)V
    .locals 1

    .line 648
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 649
    invoke-static {p0}, Lio/olvid/messenger/AndroidNotificationManager;->getInvitationNotificationChannelId(Ljava/util/UUID;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    return-void
.end method

.method public static clearReceivedMessageNotification(J)V
    .locals 1

    .line 480
    new-instance v0, Lio/olvid/messenger/AndroidNotificationManager$2;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/AndroidNotificationManager$2;-><init>(J)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static createChannels()V
    .locals 8

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 73
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v1, Landroid/app/NotificationChannel;

    .line 82
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100178

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const-string v4, "olvid_message_notification"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 84
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f100177

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 86
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060018

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setLightColor(I)V

    const/4 v4, 0x1

    .line 87
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 88
    sget-object v6, Lio/olvid/messenger/AndroidNotificationManager;->MESSAGE_VIBRATION_PATTERN:[J

    invoke-virtual {v1, v6}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 89
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 92
    new-instance v1, Landroid/app/NotificationChannel;

    .line 94
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f100176

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "olvid_invitation_notification"

    invoke-direct {v1, v7, v6, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 96
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f100175

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 98
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 99
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 100
    sget-object v2, Lio/olvid/messenger/AndroidNotificationManager;->INVITATION_VIBRATION_PATTERN:[J

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 101
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method

.method public static displayGroupMemberNotification(Lio/olvid/messenger/databases/entity/Group;Lio/olvid/messenger/databases/entity/Contact;ZJ)V
    .locals 16

    move-wide/from16 v0, p3

    .line 113
    invoke-static/range {p3 .. p4}, Lio/olvid/messenger/AndroidNotificationManager;->loadGroupNotification(J)Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;

    move-result-object v2

    if-nez v2, :cond_0

    .line 115
    new-instance v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;

    invoke-direct {v2}, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;-><init>()V

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->addedMembers:Ljava/util/List;

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->removedMembers:Ljava/util/List;

    .line 119
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->groupName:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 121
    iget-object v3, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->addedMembers:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_1
    iget-object v3, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->removedMembers:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_0
    invoke-static {v0, v1, v2}, Lio/olvid/messenger/AndroidNotificationManager;->saveGroupNotification(JLio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;)V

    .line 128
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "olvid_invitation_notification"

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f0800c9

    .line 129
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 130
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f100180

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 132
    new-instance v6, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 134
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0600ca

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 135
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 136
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "msg"

    .line 137
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 138
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f060018

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    const/16 v6, 0xc8

    const/16 v7, 0x320

    invoke-virtual {v3, v4, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 139
    invoke-virtual/range {p0 .. p0}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x0

    new-array v6, v4, [J

    .line 140
    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v6, 0x2

    .line 141
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 143
    new-instance v7, Lio/olvid/messenger/customClasses/InitialView;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lio/olvid/messenger/customClasses/InitialView;-><init>(Landroid/content/Context;)V

    move-object/from16 v8, p0

    .line 144
    iget-object v8, v8, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v7, v8}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    .line 145
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07014d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 146
    invoke-virtual {v7, v8, v8}, Lio/olvid/messenger/customClasses/InitialView;->setSize(II)V

    .line 147
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 148
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v9}, Lio/olvid/messenger/customClasses/InitialView;->drawOnCanvas(Landroid/graphics/Canvas;)V

    .line 149
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 151
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 152
    iget-object v8, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->addedMembers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const v9, 0x7f1001ca

    const/16 v10, 0x21

    if-lez v8, :cond_2

    .line 153
    new-instance v8, Landroid/text/style/StyleSpan;

    invoke-direct {v8, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 154
    new-instance v11, Landroid/text/SpannableString;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0008

    iget-object v14, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->addedMembers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    new-array v15, v5, [Ljava/lang/Object;

    iget-object v6, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->addedMembers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v15, v4

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v11, v8, v4, v6, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 156
    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 157
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->addedMembers:Ljava/util/List;

    invoke-static {v6, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 158
    iget-object v6, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->removedMembers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, "\n"

    .line 159
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 164
    :cond_2
    iget-object v6, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->removedMembers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 165
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 166
    new-instance v8, Landroid/text/SpannableString;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f0009

    iget-object v13, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->removedMembers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v14, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->removedMembers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v5, v4

    invoke-virtual {v11, v12, v13, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v8, v6, v4, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 168
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 169
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->removedMembers:Ljava/util/List;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 171
    :cond_3
    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 173
    invoke-static/range {p3 .. p4}, Lio/olvid/messenger/AndroidNotificationManager;->getGroupNotificationChannelId(J)I

    move-result v2

    .line 176
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "forward_action"

    .line 177
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x34000000

    .line 178
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    const-class v5, Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "forward_to"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "discussion_id"

    .line 180
    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 181
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x10000000

    invoke-static {v6, v2, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 182
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 185
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v8, Lio/olvid/messenger/activities/NotificationActionService;

    invoke-direct {v4, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "group_clear"

    .line 186
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 188
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v4, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 189
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 191
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 192
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const/4 v0, 0x2

    .line 193
    invoke-static {v0}, Lio/olvid/messenger/AndroidNotificationManager;->vibrate(I)V

    return-void
.end method

.method static displayInvitationNotification(Lio/olvid/messenger/databases/entity/Invitation;)V
    .locals 15

    .line 495
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x34000000

    .line 496
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "tab_to_show"

    const/4 v2, 0x3

    .line 497
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    invoke-static {v2}, Lio/olvid/messenger/AndroidNotificationManager;->getInvitationNotificationChannelId(Ljava/util/UUID;)I

    move-result v2

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 500
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "olvid_invitation_notification"

    invoke-direct {v1, v2, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0800c9

    .line 501
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 502
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0600ca

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 503
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v7, 0x0

    new-array v8, v7, [J

    .line 504
    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 505
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x2

    .line 507
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 509
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 512
    new-instance v2, Lio/olvid/messenger/customClasses/InitialView;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lio/olvid/messenger/customClasses/InitialView;-><init>(Landroid/content/Context;)V

    .line 513
    iget-object v4, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v4

    const v8, 0x7f100181

    const v9, 0x7f100185

    const/4 v10, 0x6

    const-string v11, "%f %l (%p @ %c)"

    if-eq v4, v6, :cond_6

    if-eq v4, v0, :cond_5

    const/4 v12, 0x4

    const v13, 0x7f10017d

    const v14, 0x7f100182

    if-eq v4, v12, :cond_4

    const v12, 0x7f10017c

    if-eq v4, v10, :cond_2

    packed-switch v4, :pswitch_data_0

    return-void

    .line 583
    :pswitch_0
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v4

    iget-object v8, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v4, v8, v9}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 584
    invoke-virtual {v4, v11}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v8

    iget-object v9, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/ObvDialog;->getBytesOwnedIdentity()[B

    move-result-object v9

    iget-object v11, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v11}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v11

    invoke-virtual {v11}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesMediatorOrGroupOwnerIdentity()[B

    move-result-object v11

    invoke-interface {v8, v9, v11}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    .line 592
    :cond_0
    invoke-virtual {v8}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 593
    iget-object v9, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v9

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesContactIdentity()[B

    move-result-object v9

    invoke-static {v4}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 594
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v4, v11, v7

    invoke-virtual {v9, v14, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 595
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v7

    invoke-virtual {v4, v12, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 596
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_1

    :catch_0
    return-void

    .line 564
    :pswitch_1
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v4

    iget-object v8, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog;->getBytesOwnedIdentity()[B

    move-result-object v8

    iget-object v9, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v9

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesMediatorOrGroupOwnerIdentity()[B

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 568
    :cond_1
    invoke-virtual {v4}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 569
    iget-object v8, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesGroupOwnerAndUid()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    .line 571
    :try_start_1
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v8

    iget-object v9, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v9

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getSerializedGroupDetails()Ljava/lang/String;

    move-result-object v9

    const-class v11, Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v8, v9, v11}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/olvid/engine/engine/types/JsonGroupDetails;

    .line 572
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f100184

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v7

    invoke-virtual {v9, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    .line 574
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 576
    :goto_0
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10017b

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v4, v11, v7

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 577
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f10017f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 546
    :cond_2
    :pswitch_2
    :try_start_2
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v4

    iget-object v13, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v13}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v13

    invoke-virtual {v13}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v13

    const-class v14, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v4, v13, v14}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 547
    invoke-virtual {v4, v11}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 551
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v11

    invoke-virtual {v11}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v11

    iget-object v13, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v13}, Lio/olvid/engine/engine/types/ObvDialog;->getBytesOwnedIdentity()[B

    move-result-object v13

    iget-object v14, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v14}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v14

    invoke-virtual {v14}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesMediatorOrGroupOwnerIdentity()[B

    move-result-object v14

    invoke-interface {v11, v13, v14}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v11

    if-nez v11, :cond_3

    return-void

    .line 555
    :cond_3
    invoke-virtual {v11}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v11

    .line 556
    iget-object v13, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v13}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v13

    invoke-virtual {v13}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesContactIdentity()[B

    move-result-object v13

    invoke-static {v4}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 557
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v4, v14, v7

    invoke-virtual {v13, v9, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 558
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v11, v9, v7

    invoke-virtual {v4, v12, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 559
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_1

    :catch_2
    return-void

    .line 602
    :cond_4
    :try_start_3
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v4

    iget-object v8, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v4, v8, v9}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 603
    invoke-virtual {v4, v11}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 607
    iget-object v8, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesContactIdentity()[B

    move-result-object v8

    invoke-static {v4}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 608
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v7

    invoke-virtual {v8, v14, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 609
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f100179

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 610
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_1

    :catch_3
    return-void

    .line 531
    :cond_5
    :try_start_4
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v4

    iget-object v8, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v4, v8, v9}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 532
    invoke-virtual {v4, v11}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 536
    iget-object v8, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesContactIdentity()[B

    move-result-object v8

    invoke-static {v4}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 537
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100183

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v4, v11, v7

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 538
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f10017a

    new-array v9, v6, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/String;

    iget-object v12, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v12

    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getSasToDisplay()[B

    move-result-object v12

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v11, v9, v7

    invoke-virtual {v4, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 539
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f10017e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    :catch_4
    return-void

    .line 517
    :cond_6
    :try_start_5
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v4

    iget-object v12, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v12

    invoke-virtual {v12}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v12

    const-class v13, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v4, v12, v13}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 518
    invoke-virtual {v4, v11}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 522
    iget-object v11, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v11}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v11

    invoke-virtual {v11}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesContactIdentity()[B

    move-result-object v11

    invoke-static {v4}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 523
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v4, v12, v7

    invoke-virtual {v11, v9, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 524
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f1000d9

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 525
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 618
    :goto_1
    iget-object v4, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v4

    if-eq v4, v6, :cond_7

    if-eq v4, v10, :cond_7

    const/16 v6, 0x8

    if-eq v4, v6, :cond_7

    goto :goto_2

    .line 622
    :cond_7
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lio/olvid/messenger/activities/NotificationActionService;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "accept_invitation"

    .line 623
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    iget-object v6, p0, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dialog_uuid"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    invoke-static {v8}, Lio/olvid/messenger/AndroidNotificationManager;->getInvitationNotificationChannelId(Ljava/util/UUID;)I

    move-result v8

    invoke-static {v6, v8, v4, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v6, 0x7f0800ca

    .line 626
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f100171

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 628
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v8, Lio/olvid/messenger/activities/NotificationActionService;

    invoke-direct {v4, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "reject_invitation"

    .line 629
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    iget-object v6, p0, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    invoke-static {v7}, Lio/olvid/messenger/AndroidNotificationManager;->getInvitationNotificationChannelId(Ljava/util/UUID;)I

    move-result v7

    invoke-static {v6, v7, v4, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0800a5

    .line 632
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f100173

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 635
    :goto_2
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07014d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 636
    invoke-virtual {v2, v3, v3}, Lio/olvid/messenger/customClasses/InitialView;->setSize(II)V

    .line 637
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 638
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Lio/olvid/messenger/customClasses/InitialView;->drawOnCanvas(Landroid/graphics/Canvas;)V

    .line 639
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 640
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Builder;

    .line 642
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    .line 643
    iget-object p0, p0, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    invoke-static {p0}, Lio/olvid/messenger/AndroidNotificationManager;->getInvitationNotificationChannelId(Ljava/util/UUID;)I

    move-result p0

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 644
    invoke-static {v0}, Lio/olvid/messenger/AndroidNotificationManager;->vibrate(I)V

    :catch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static displayReceivedMessageNotification(Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/entity/Message;Lio/olvid/messenger/databases/entity/Contact;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 5

    .line 244
    sget-object v0, Lio/olvid/messenger/AndroidNotificationManager;->currentShowingDiscussionId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    sget-object v2, Lio/olvid/messenger/AndroidNotificationManager;->currentShowingDiscussionId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 249
    iget-wide v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {v0, v1}, Lio/olvid/messenger/AndroidNotificationManager;->loadDiscussionNotification(J)Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;

    move-result-object p1

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/olvid/messenger/AndroidNotificationManager;->addMessageNotification(Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/entity/Message;Lio/olvid/messenger/databases/entity/Contact;Lio/olvid/messenger/databases/entity/OwnedIdentity;)Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 254
    iget-wide p0, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {p0, p1}, Lio/olvid/messenger/AndroidNotificationManager;->clearReceivedMessageNotification(J)V

    return-void

    .line 258
    :cond_2
    iget-wide v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, v1, p1, v2}, Lio/olvid/messenger/AndroidNotificationManager;->getEmptyMessageNotificationBuilder(JLio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 260
    invoke-static {v0, p0, p1}, Lio/olvid/messenger/AndroidNotificationManager;->populateMessageNotificationBuilder(Landroidx/core/app/NotificationCompat$Builder;Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;)V

    .line 262
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 263
    iget-wide v1, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {v1, v2}, Lio/olvid/messenger/AndroidNotificationManager;->getMessageNotificationChannelId(J)I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    if-eqz p2, :cond_6

    .line 265
    sget-object p1, Lio/olvid/messenger/AndroidNotificationManager;->messageLastVibrationTimestamp:Ljava/util/HashMap;

    iget-wide v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {v0, v1}, Lio/olvid/messenger/AndroidNotificationManager;->getMessageNotificationChannelId(J)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 266
    sget-object p1, Lio/olvid/messenger/AndroidNotificationManager;->messageLastVibrationTimestamp:Ljava/util/HashMap;

    iget-wide v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {v0, v1}, Lio/olvid/messenger/AndroidNotificationManager;->getMessageNotificationChannelId(J)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    .line 267
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    sub-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-gez v2, :cond_6

    .line 268
    :cond_4
    invoke-static {p3}, Lio/olvid/messenger/AndroidNotificationManager;->vibrate(I)V

    .line 269
    sget-object p1, Lio/olvid/messenger/AndroidNotificationManager;->messageLastVibrationTimestamp:Ljava/util/HashMap;

    iget-wide p2, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {p2, p3}, Lio/olvid/messenger/AndroidNotificationManager;->getMessageNotificationChannelId(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 272
    :cond_5
    invoke-static {p3}, Lio/olvid/messenger/AndroidNotificationManager;->vibrate(I)V

    .line 273
    sget-object p1, Lio/olvid/messenger/AndroidNotificationManager;->messageLastVibrationTimestamp:Ljava/util/HashMap;

    iget-wide p2, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {p2, p3}, Lio/olvid/messenger/AndroidNotificationManager;->getMessageNotificationChannelId(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    return-void
.end method

.method private static getEmptyMessageNotificationBuilder(JLio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 11

    .line 389
    iget-object v0, p2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->messageNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 390
    iget-object v1, p2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->title:Ljava/lang/String;

    .line 391
    iget-object v2, p2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->discussionInitialBytes:[B

    .line 392
    iget-boolean p2, p2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->isGroup:Z

    .line 394
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "olvid_message_notification"

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f0800c9

    .line 395
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 396
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0f0007

    invoke-virtual {v6, v9, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 399
    new-instance v6, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 401
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0600ca

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 402
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 403
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "msg"

    .line 404
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 405
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-array v4, v10, [J

    .line 406
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 408
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060018

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0xc8

    const/16 v6, 0x708

    invoke-virtual {v3, v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz p3, :cond_0

    .line 411
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 414
    :cond_0
    new-instance p3, Lio/olvid/messenger/customClasses/InitialView;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p3, v5}, Lio/olvid/messenger/customClasses/InitialView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    .line 416
    invoke-virtual {p3, v2}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    .line 417
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0f000a

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    aput-object v1, v5, v7

    invoke-virtual {p2, v2, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 419
    :cond_1
    invoke-static {v1}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v2, p2}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 420
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0f000b

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    aput-object v1, v5, v7

    invoke-virtual {p2, v2, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 422
    :goto_0
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07014d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 423
    invoke-virtual {p3, p2, p2}, Lio/olvid/messenger/customClasses/InitialView;->setSize(II)V

    .line 424
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 425
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, v0}, Lio/olvid/messenger/customClasses/InitialView;->drawOnCanvas(Landroid/graphics/Canvas;)V

    .line 426
    invoke-virtual {v3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 429
    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "forward_action"

    .line 430
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x34000000

    .line 431
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 432
    const-class p3, Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "forward_to"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "discussion_id"

    .line 433
    invoke-virtual {p2, p3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 434
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1}, Lio/olvid/messenger/AndroidNotificationManager;->getMessageNotificationChannelId(J)I

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v0, v1, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 435
    invoke-virtual {v3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 438
    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lio/olvid/messenger/activities/NotificationActionService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "discussion_clear"

    .line 439
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {p2, p3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 441
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1}, Lio/olvid/messenger/AndroidNotificationManager;->getMessageNotificationChannelId(J)I

    move-result v1

    invoke-static {v0, v1, p2, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 442
    invoke-virtual {v3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 445
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    const/high16 v1, 0x8000000

    if-le p2, v0, :cond_2

    .line 446
    new-instance p2, Landroidx/core/app/RemoteInput$Builder;

    const-string v0, "text_reply"

    invoke-direct {p2, v0}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1000d2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object p2

    .line 448
    invoke-virtual {p2}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object p2

    .line 450
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lio/olvid/messenger/activities/NotificationActionService;

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "discussion_reply"

    .line 451
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-virtual {v0, p3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 453
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0, p1}, Lio/olvid/messenger/AndroidNotificationManager;->getMessageNotificationChannelId(J)I

    move-result v5

    invoke-static {v2, v5, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 454
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    const v5, 0x7f0800de

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f100174

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 455
    invoke-virtual {v2, p2}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object p2

    .line 456
    invoke-virtual {p2, v7}, Landroidx/core/app/NotificationCompat$Action$Builder;->setAllowGeneratedReplies(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object p2

    .line 457
    invoke-virtual {p2, v7}, Landroidx/core/app/NotificationCompat$Action$Builder;->setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object p2

    .line 458
    invoke-virtual {p2, v10}, Landroidx/core/app/NotificationCompat$Action$Builder;->setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object p2

    .line 459
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p2

    .line 460
    invoke-virtual {v3, p2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 464
    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lio/olvid/messenger/activities/NotificationActionService;

    invoke-direct {p2, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "mark_as_read"

    .line 465
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p2, p3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 467
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p0, p1}, Lio/olvid/messenger/AndroidNotificationManager;->getMessageNotificationChannelId(J)I

    move-result p0

    invoke-static {p3, p0, p2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 469
    new-instance p1, Landroidx/core/app/NotificationCompat$Action$Builder;

    const p2, 0x7f0800ca

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f100172

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, p0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 470
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object p0

    .line 471
    invoke-virtual {p0, v10}, Landroidx/core/app/NotificationCompat$Action$Builder;->setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object p0

    .line 472
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p0

    .line 473
    invoke-virtual {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    return-object v3
.end method

.method private static getGroupNotificationChannelId(J)I
    .locals 2

    const-wide/32 v0, 0xffffff

    and-long/2addr p0, v0

    long-to-int p1, p0

    const/high16 p0, 0x2000000

    or-int/2addr p0, p1

    return p0
.end method

.method private static getInvitationNotificationChannelId(Ljava/util/UUID;)I
    .locals 4

    .line 657
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    long-to-int p0, v0

    const/high16 v0, 0x1000000

    or-int/2addr p0, v0

    return p0
.end method

.method private static getMessageNotificationChannelId(J)I
    .locals 2

    const-wide/32 v0, 0xffffff

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static loadDiscussionNotification(J)Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;
    .locals 3

    .line 279
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1001ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discussion_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 284
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    const-class v1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;

    invoke-virtual {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error parsing JSON from notifications preference."

    .line 286
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static loadGroupNotification(J)Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;
    .locals 3

    .line 211
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1001ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 216
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    const-class v1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;

    invoke-virtual {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error parsing JSON from notifications preference."

    .line 218
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static populateMessageNotificationBuilder(Landroidx/core/app/NotificationCompat$Builder;Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 347
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1001ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discussion_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    const-class v3, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    goto :goto_0

    :catch_0
    const-string v1, "Error parsing JSON from notifications preference."

    .line 353
    invoke-static {v1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    .line 358
    iget-object v1, p2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->messageNotifications:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->messageNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 362
    :cond_1
    iget-object v1, p2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->messageNotifications:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 364
    new-instance v1, Lio/olvid/messenger/customClasses/InitialView;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/olvid/messenger/customClasses/InitialView;-><init>(Landroid/content/Context;)V

    .line 365
    iget-object v2, p2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->bytesOwnedIdentity:[B

    iget-object v3, p2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->ownDisplayName:Ljava/lang/String;

    invoke-static {v3}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 366
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 367
    invoke-virtual {v1, v2, v2}, Lio/olvid/messenger/customClasses/InitialView;->setSize(II)V

    .line 368
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 369
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Lio/olvid/messenger/customClasses/InitialView;->drawOnCanvas(Landroid/graphics/Canvas;)V

    .line 371
    new-instance v1, Landroidx/core/app/Person$Builder;

    invoke-direct {v1}, Landroidx/core/app/Person$Builder;-><init>()V

    .line 372
    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    move-result-object v1

    .line 373
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1001e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v1

    .line 375
    new-instance v2, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-virtual {v1}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>(Landroidx/core/app/Person;)V

    .line 376
    iget-boolean v1, p2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->isGroup:Z

    if-eqz v1, :cond_2

    .line 377
    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    const/4 p1, 0x1

    .line 378
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;

    goto :goto_1

    .line 380
    :cond_2
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 382
    :goto_1
    iget-object p1, p2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->messageNotifications:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;

    .line 383
    invoke-virtual {p2}, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->getMessage()Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    goto :goto_2

    .line 385
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_4
    :goto_3
    return-void
.end method

.method private static saveDiscussionNotification(JLio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;)V
    .locals 3

    .line 295
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1001ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 297
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discussion_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error storing JSON in notifications preference."

    .line 301
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static saveGroupNotification(JLio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;)V
    .locals 3

    .line 227
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1001ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error storing JSON in notifications preference."

    .line 233
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setCurrentShowingDiscussionId(Ljava/lang/Long;)V
    .locals 0

    .line 109
    sput-object p0, Lio/olvid/messenger/AndroidNotificationManager;->currentShowingDiscussionId:Ljava/lang/Long;

    return-void
.end method

.method private static vibrate(I)V
    .locals 3

    .line 666
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2

    .line 667
    invoke-static {}, Lio/olvid/messenger/activities/SettingsActivity;->useVibrator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq p0, v1, :cond_1

    .line 677
    sget-object p0, Lio/olvid/messenger/AndroidNotificationManager;->MESSAGE_VIBRATION_PATTERN:[J

    invoke-virtual {v0, p0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0

    .line 674
    :cond_1
    sget-object p0, Lio/olvid/messenger/AndroidNotificationManager;->INVITATION_VIBRATION_PATTERN:[J

    invoke-virtual {v0, p0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_2
    :goto_0
    return-void
.end method
