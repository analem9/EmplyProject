.class public Lio/olvid/engine/channel/databases/ObliviousChannel;
.super Lio/olvid/engine/channel/datatypes/NetworkChannel;
.source "ObliviousChannel.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field static final CURRENT_DEVICE_UID:Ljava/lang/String; = "current_device_uid"

.field static final FULL_RATCHETING_COUNT_OF_LAST_PROVISION:Ljava/lang/String; = "full_ratcheting_count_of_last_provision"

.field static final FULL_RATCHET_OF_THE_SEND_SEED_IN_PROGRESS:Ljava/lang/String; = "full_ratchet_of_the_send_seed_in_progress"

.field private static HOOK_BIT_CHANNEL_CONFIRMED:J = 0x2L

.field private static HOOK_BIT_CHANNEL_DELETED:J = 0x4L

.field private static HOOK_BIT_MIGHT_NEED_FULL_RATCHET:J = 0x1L

.field static final NUMBER_OF_DECRYPTED_MESSAGES_SINCE_LAST_FULL_RATCHET_SENT_MESSAGE:Ljava/lang/String; = "number_of_decrypted_messages_since_last_full_ratchet_sent_message"

.field static final NUMBER_OF_ENCRYPTED_MESSAGES:Ljava/lang/String; = "number_of_encrypted_messages"

.field static final NUMBER_OF_ENCRYPTED_MESSAGES_AT_THE_TIME_OF_THE_LAST_FULL_RATCHET:Ljava/lang/String; = "number_of_encrypted_messages_at_the_time_of_the_last_full_ratchet"

.field static final NUMBER_OF_ENCRYPTED_MESSAGES_SINCE_LAST_FULL_RATCHET_SENT_MESSAGE:Ljava/lang/String; = "number_of_encrypted_messages_since_last_full_ratchet_sent_message"

.field static final OBLIVIOUS_ENGINE_VERSION:Ljava/lang/String; = "oblivious_engine_version"

.field static final REMOTE_DEVICE_UID:Ljava/lang/String; = "remote_device_uid"

.field static final REMOTE_IDENTITY:Ljava/lang/String; = "contact_identity"

.field static final SEED_FOR_NEXT_SEND_KEY:Ljava/lang/String; = "seed_for_next_send_key"

.field static final TABLE_NAME:Ljava/lang/String; = "oblivious_channel"

.field static final TIMESTAMP_OF_LAST_FULL_RATCHET:Ljava/lang/String; = "timestamp_of_last_full_ratchet"

.field static final TIMESTAMP_OF_LAST_FULL_RATCHET_SENT_MESSAGE:Ljava/lang/String; = "timestamp_of_last_full_ratchet_sent_message"


# instance fields
.field private final channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

.field private commitHookBits:J

.field private confirmed:Z

.field private currentDeviceUid:Lio/olvid/engine/datatypes/UID;

.field private fullRatchetOfTheSendSeedInProgress:Z

.field private fullRatchetingCountOfLastProvision:I

.field private numberOfDecryptedMessagesSinceLastFullRatchetSentMessage:I

.field private numberOfEncryptedMessages:I

.field private numberOfEncryptedMessagesAtTheTimeOfTheLastFullRatchet:I

.field private numberOfEncryptedMessagesSinceLastFullRatchetSentMessage:I

.field private remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

.field private remoteIdentity:Lio/olvid/engine/datatypes/Identity;

.field private seedForNextSendKey:Lio/olvid/engine/datatypes/Seed;

.field private timestampOfLastFullRatchet:J

.field private timestampOfLastFullRatchetSentMessage:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Seed;I)V
    .locals 2

    .line 297
    invoke-direct {p0}, Lio/olvid/engine/channel/datatypes/NetworkChannel;-><init>()V

    const-wide/16 v0, 0x0

    .line 532
    iput-wide v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    .line 298
    iput-object p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    .line 300
    iput-object p2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 301
    iput-object p3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 302
    iput-object p4, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    const/4 p1, 0x0

    .line 303
    iput-boolean p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->confirmed:Z

    .line 304
    iput p6, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->obliviousEngineVersion:I

    .line 306
    iput-object p5, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->seedForNextSendKey:Lio/olvid/engine/datatypes/Seed;

    .line 307
    iput p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetingCountOfLastProvision:I

    .line 308
    iput p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessages:I

    .line 309
    iput p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesAtTheTimeOfTheLastFullRatchet:I

    .line 310
    iput p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesSinceLastFullRatchetSentMessage:I

    .line 312
    iput p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfDecryptedMessagesSinceLastFullRatchetSentMessage:I

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->timestampOfLastFullRatchet:J

    .line 314
    iget-wide p2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->timestampOfLastFullRatchet:J

    iput-wide p2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->timestampOfLastFullRatchetSentMessage:J

    .line 315
    iput-boolean p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetOfTheSendSeedInProgress:Z

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Lio/olvid/engine/channel/datatypes/NetworkChannel;-><init>()V

    const-wide/16 v0, 0x0

    .line 532
    iput-wide v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    .line 319
    iput-object p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    .line 321
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "current_device_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 322
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "remote_device_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    :try_start_0
    const-string p1, "contact_identity"

    .line 324
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "confirmed"

    .line 328
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->confirmed:Z

    const-string p1, "oblivious_engine_version"

    .line 329
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->obliviousEngineVersion:I

    .line 331
    new-instance p1, Lio/olvid/engine/datatypes/Seed;

    const-string v0, "seed_for_next_send_key"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->seedForNextSendKey:Lio/olvid/engine/datatypes/Seed;

    const-string p1, "full_ratcheting_count_of_last_provision"

    .line 332
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetingCountOfLastProvision:I

    const-string p1, "number_of_encrypted_messages"

    .line 333
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessages:I

    const-string p1, "number_of_encrypted_messages_at_the_time_of_the_last_full_ratchet"

    .line 334
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesAtTheTimeOfTheLastFullRatchet:I

    const-string p1, "number_of_encrypted_messages_since_last_full_ratchet_sent_message"

    .line 335
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesSinceLastFullRatchetSentMessage:I

    const-string p1, "number_of_decrypted_messages_since_last_full_ratchet_sent_message"

    .line 337
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfDecryptedMessagesSinceLastFullRatchetSentMessage:I

    const-string p1, "timestamp_of_last_full_ratchet"

    .line 338
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->timestampOfLastFullRatchet:J

    const-string p1, "timestamp_of_last_full_ratchet_sent_message"

    .line 339
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->timestampOfLastFullRatchetSentMessage:J

    const-string p1, "full_ratchet_of_the_send_seed_in_progress"

    .line 340
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetOfTheSendSeedInProgress:Z

    return-void

    .line 326
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static acceptableChannelsForPosting(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;)[Lio/olvid/engine/channel/databases/ObliviousChannel;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "Calling acceptableChannelsForPosting with no IdentityDelegate set."

    .line 603
    invoke-static {p0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    new-array p0, v1, [Lio/olvid/engine/channel/databases/ObliviousChannel;

    return-object p0

    .line 607
    :cond_0
    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getChannelType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    new-array p0, v1, [Lio/olvid/engine/channel/databases/ObliviousChannel;

    return-object p0

    .line 638
    :cond_1
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v1, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getFromIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 639
    iget-object v1, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getFromIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 640
    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    invoke-static {p0, v1, v0, p1, v2}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getAcceptableObliviousChannels(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)[Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object p0

    return-object p0

    .line 629
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 630
    iget-object v3, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getFromIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    .line 631
    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentities()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 632
    iget-object v8, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v9, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v10

    invoke-virtual {v10}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getFromIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v10

    invoke-interface {v8, v9, v7, v10}, Lio/olvid/engine/metamanager/IdentityDelegate;->getDeviceUidsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v8

    .line 633
    invoke-static {p0, v3, v8, v7, v2}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getAcceptableObliviousChannels(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)[Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-array p0, v1, [Lio/olvid/engine/channel/databases/ObliviousChannel;

    .line 635
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/channel/databases/ObliviousChannel;

    return-object p0

    .line 609
    :cond_4
    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getNecessarilyConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getMessageType()I

    move-result v0

    if-eqz v0, :cond_5

    new-array p0, v1, [Lio/olvid/engine/channel/databases/ObliviousChannel;

    return-object p0

    .line 613
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getFromIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getDeviceUidsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 614
    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getRemoteDeviceUids()[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 615
    iget-object v2, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getFromIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    new-array v3, v1, [Lio/olvid/engine/datatypes/UID;

    .line 617
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/olvid/engine/datatypes/UID;

    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getNecessarilyConfirmed()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {p0, v2, v0, v3, v4}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getAcceptableObliviousChannels(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)[Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object p0

    .line 619
    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getMessageType()I

    move-result v0

    if-nez v0, :cond_6

    .line 620
    check-cast p1, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;->isPartOfFullRatchetProtocolOfTheSendSeed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 621
    array-length p1, p0

    :goto_1
    if-ge v1, p1, :cond_6

    aget-object v0, p0, v1

    .line 622
    invoke-virtual {v0}, Lio/olvid/engine/channel/databases/ObliviousChannel;->aSendSeedFullRatchetMessageWasSent()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public static clean(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;)V
    .locals 0

    .line 238
    invoke-static {p0}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->deleteAllExpired(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;)V

    .line 239
    invoke-static {p0}, Lio/olvid/engine/channel/databases/Provision;->deleteAllEmpty(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;)V

    return-void
.end method

.method static computeSelfRatchet(Lio/olvid/engine/datatypes/Seed;I)Lio/olvid/engine/channel/datatypes/RatchetingOutput;
    .locals 4

    .line 574
    invoke-static {p1, p0}, Lio/olvid/engine/crypto/Suite;->getDefaultPRNG(ILio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/crypto/PRNG;

    move-result-object p0

    .line 576
    new-instance v0, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {v0, p0}, Lio/olvid/engine/datatypes/Seed;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 577
    new-instance v1, Lio/olvid/engine/datatypes/KeyId;

    const/16 v2, 0x20

    invoke-interface {p0, v2}, Lio/olvid/engine/crypto/PRNG;->bytes(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/KeyId;-><init>([B)V

    .line 580
    invoke-static {p1}, Lio/olvid/engine/crypto/Suite;->getDefaultKDF(I)Lio/olvid/engine/crypto/KDF;

    move-result-object v2

    .line 581
    new-instance v3, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {v3, p0}, Lio/olvid/engine/datatypes/Seed;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 583
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/crypto/Suite;->getDefaultAuthEnc(I)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object p0

    invoke-interface {p0}, Lio/olvid/engine/crypto/AuthEnc;->getKDFDelegate()Lio/olvid/engine/crypto/KDF$Delegate;

    move-result-object p0

    invoke-interface {v2, v3, p0}, Lio/olvid/engine/crypto/KDF;->gen(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/crypto/KDF$Delegate;)[Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    check-cast p0, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    new-instance p1, Lio/olvid/engine/channel/datatypes/RatchetingOutput;

    invoke-direct {p1, v0, v1, p0}, Lio/olvid/engine/channel/datatypes/RatchetingOutput;-><init>(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/KeyId;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Seed;I)Lio/olvid/engine/channel/databases/ObliviousChannel;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    invoke-static {p4, p1, p5}, Lio/olvid/engine/channel/databases/ObliviousChannel;->generateDiversifiedSeed(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/Seed;

    move-result-object v6

    .line 276
    invoke-static {p4, p2, p5}, Lio/olvid/engine/channel/databases/ObliviousChannel;->generateDiversifiedSeed(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/Seed;

    move-result-object p4

    .line 278
    :try_start_0
    new-instance v8, Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/olvid/engine/channel/databases/ObliviousChannel;-><init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Seed;I)V

    .line 279
    invoke-virtual {v8}, Lio/olvid/engine/channel/databases/ObliviousChannel;->insert()V

    const/4 p1, 0x0

    .line 280
    invoke-static {p0, p1, v8, p4, p5}, Lio/olvid/engine/channel/databases/Provision;->createOrReplace(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;ILio/olvid/engine/channel/databases/ObliviousChannel;Lio/olvid/engine/datatypes/Seed;I)Lio/olvid/engine/channel/databases/Provision;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object v8

    .line 282
    :cond_1
    invoke-virtual {v8}, Lio/olvid/engine/channel/databases/ObliviousChannel;->delete()V

    .line 283
    new-instance p0, Ljava/sql/SQLException;

    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 287
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS oblivious_channel (current_device_uid BLOB NOT NULL, remote_device_uid BLOB NOT NULL, contact_identity BLOB NOT NULL, confirmed BIT NOT NULL, oblivious_engine_version INT NOT NULL, seed_for_next_send_key BLOB NOT NULL, full_ratcheting_count_of_last_provision INT NOT NULL, number_of_encrypted_messages INT NOT NULL, number_of_encrypted_messages_at_the_time_of_the_last_full_ratchet INT NOT NULL, number_of_encrypted_messages_since_last_full_ratchet_sent_message INT NOT NULL, number_of_decrypted_messages_since_last_full_ratchet_sent_message INT NOT NULL, timestamp_of_last_full_ratchet BIGINT NOT NULL, timestamp_of_last_full_ratchet_sent_message BIGINT NOT NULL, full_ratchet_of_the_send_seed_in_progress BIT NOT NULL, CONSTRAINT PK_oblivious_channel PRIMARY KEY(current_device_uid, remote_device_uid, contact_identity));"

    .line 349
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 365
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 348
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 365
    :try_start_2
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static deleteMany(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)V
    .locals 4

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 484
    array-length p4, p2

    if-eqz p4, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p4, 0x0

    const-string v0, "("

    move-object v1, v0

    const/4 v0, 0x0

    .line 488
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    if-nez v0, :cond_1

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 492
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM oblivious_channel WHERE current_device_uid = ? AND contact_identity = ? AND remote_device_uid IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 501
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 502
    :goto_2
    array-length v1, p2

    if-ge p4, v1, :cond_3

    add-int/lit8 v1, p4, 0x3

    .line 503
    aget-object v2, p2, p4

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 505
    :cond_3
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 506
    iget-object p2, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    new-instance p4, Lio/olvid/engine/channel/databases/ObliviousChannel$1;

    invoke-direct {p4, p1, p3, p0}, Lio/olvid/engine/channel/databases/ObliviousChannel$1;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/channel/datatypes/ChannelManagerSession;)V

    invoke-virtual {p2, p4}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 521
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 496
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_4

    .line 521
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 522
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_5
    :goto_4
    return-void
.end method

.method private static generateDiversifiedSeed(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/Seed;
    .locals 4

    .line 591
    iget v0, p0, Lio/olvid/engine/datatypes/Seed;->length:I

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 592
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Seed;->getBytes()[B

    move-result-object v1

    iget v2, p0, Lio/olvid/engine/datatypes/Seed;->length:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    iget p0, p0, Lio/olvid/engine/datatypes/Seed;->length:I

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v1, v3, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    new-instance p0, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {p0, v0}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    invoke-static {p2, p0}, Lio/olvid/engine/crypto/Suite;->getDefaultPRNG(ILio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/crypto/PRNG;

    move-result-object p0

    .line 595
    new-instance p1, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {p1, p0}, Lio/olvid/engine/datatypes/Seed;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    return-object p1
.end method

.method public static get(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)Lio/olvid/engine/channel/databases/ObliviousChannel;
    .locals 5

    const-string v0, " = ? AND "

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 413
    :cond_0
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM oblivious_channel WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    const-string p4, "confirmed = 1 AND "

    goto :goto_0

    :cond_1
    const-string p4, ""

    :goto_0
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "current_device_uid"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "remote_device_uid"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "contact_identity"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " = ?;"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p4
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 416
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {p4, v0, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 417
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x3

    .line 418
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 419
    invoke-interface {p4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 420
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 421
    new-instance p2, Lio/olvid/engine/channel/databases/ObliviousChannel;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/channel/databases/ObliviousChannel;-><init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Ljava/sql/ResultSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 425
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    if-eqz p4, :cond_3

    .line 426
    :try_start_4
    invoke-interface {p4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object p2

    :cond_4
    if-eqz p1, :cond_5

    .line 425
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_5
    if-eqz p4, :cond_6

    .line 426
    :try_start_6
    invoke-interface {p4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_6
    return-object v1

    :catchall_0
    move-exception p0

    .line 419
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_7

    .line 425
    :try_start_8
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p0

    .line 413
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz p4, :cond_8

    .line 426
    :try_start_b
    invoke-interface {p4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    :try_start_c
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw p1
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    .line 427
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_9
    :goto_3
    return-object v1
.end method

.method private static getAcceptableObliviousChannels(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)[Lio/olvid/engine/channel/databases/ObliviousChannel;
    .locals 2

    .line 648
    invoke-static {p0, p1, p2, p3, p4}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getMany(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)[Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    new-array p0, p1, [Lio/olvid/engine/channel/databases/ObliviousChannel;

    return-object p0

    .line 652
    :cond_0
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 653
    array-length p3, p0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    aget-object v0, p0, p4

    .line 654
    invoke-virtual {v0}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getObliviousEngineVersion()I

    move-result v1

    if-ltz v1, :cond_1

    .line 655
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    new-array p0, p1, [Lio/olvid/engine/channel/databases/ObliviousChannel;

    .line 658
    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/channel/databases/ObliviousChannel;

    return-object p0
.end method

.method public static getAllConfirmed(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;)[Lio/olvid/engine/channel/databases/ObliviousChannel;
    .locals 5

    const/4 v0, 0x0

    .line 433
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM oblivious_channel WHERE confirmed = 1;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 436
    :try_start_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 437
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    new-instance v4, Lio/olvid/engine/channel/databases/ObliviousChannel;

    invoke-direct {v4, p0, v2}, Lio/olvid/engine/channel/databases/ObliviousChannel;-><init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/channel/databases/ObliviousChannel;

    .line 440
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/channel/databases/ObliviousChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 441
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 442
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 435
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 441
    :try_start_6
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 433
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_4

    .line 442
    :try_start_9
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v2
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    new-array p0, v0, [Lio/olvid/engine/channel/databases/ObliviousChannel;

    return-object p0
.end method

.method public static getMany(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)[Lio/olvid/engine/channel/databases/ObliviousChannel;
    .locals 6

    const-string v0, " = ? AND "

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 449
    array-length v1, p2

    if-eqz v1, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x0

    const-string v2, "("

    move-object v3, v2

    const/4 v2, 0x0

    .line 453
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    if-nez v2, :cond_1

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 457
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",?"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    :try_start_0
    iget-object v3, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM oblivious_channel WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_3

    const-string p4, "confirmed = 1 AND "

    goto :goto_2

    :cond_3
    const-string p4, ""

    :goto_2
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "current_device_uid"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "contact_identity"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "remote_device_uid"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " IN "

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ";"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p4
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p4, v0, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 467
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p3

    invoke-interface {p4, p1, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x0

    .line 468
    :goto_3
    array-length p3, p2

    if-ge p1, p3, :cond_4

    add-int/lit8 p3, p1, 0x3

    .line 469
    aget-object v0, p2, p1

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v0

    invoke-interface {p4, p3, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 471
    :cond_4
    invoke-interface {p4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 472
    :try_start_2
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 473
    :goto_4
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 474
    new-instance p3, Lio/olvid/engine/channel/databases/ObliviousChannel;

    invoke-direct {p3, p0, p1}, Lio/olvid/engine/channel/databases/ObliviousChannel;-><init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    new-array p0, v1, [Lio/olvid/engine/channel/databases/ObliviousChannel;

    .line 476
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/channel/databases/ObliviousChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_6

    .line 477
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_6
    if-eqz p4, :cond_7

    .line 478
    :try_start_4
    invoke-interface {p4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    return-object p0

    :catchall_0
    move-exception p0

    .line 471
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_8

    .line 477
    :try_start_6
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 461
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz p4, :cond_9

    .line 478
    :try_start_9
    invoke-interface {p4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    throw p1
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    new-array p0, v1, [Lio/olvid/engine/channel/databases/ObliviousChannel;

    return-object p0

    :cond_a
    :goto_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private selfRatchet()Lio/olvid/engine/channel/datatypes/RatchetingOutput;
    .locals 5

    .line 243
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->seedForNextSendKey:Lio/olvid/engine/datatypes/Seed;

    iget v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->obliviousEngineVersion:I

    invoke-static {v0, v1}, Lio/olvid/engine/channel/databases/ObliviousChannel;->computeSelfRatchet(Lio/olvid/engine/datatypes/Seed;I)Lio/olvid/engine/channel/datatypes/RatchetingOutput;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 247
    :cond_0
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v2, v2, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v3, "UPDATE oblivious_channel SET seed_for_next_send_key = ?  WHERE current_device_uid = ? AND remote_device_uid = ? AND contact_identity = ?;"

    invoke-virtual {v2, v3}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    .line 250
    :try_start_1
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->getRatchetedSeed()Lio/olvid/engine/datatypes/Seed;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Seed;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v3, 0x2

    .line 251
    iget-object v4, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v3, 0x3

    .line 252
    iget-object v4, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v3, 0x4

    .line 253
    iget-object v4, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 254
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 255
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->getRatchetedSeed()Lio/olvid/engine/datatypes/Seed;

    move-result-object v3

    iput-object v3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->seedForNextSendKey:Lio/olvid/engine/datatypes/Seed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 256
    :try_start_2
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 247
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_2

    .line 256
    :try_start_4
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v1
.end method

.method public static unwrapMessageKey(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;)Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;
    .locals 13

    .line 703
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;->getWrappedKey()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object v0

    .line 704
    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ge v1, v3, :cond_0

    return-object v2

    .line 707
    :cond_0
    new-instance v1, Lio/olvid/engine/datatypes/KeyId;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v1, v5}, Lio/olvid/engine/datatypes/KeyId;-><init>([B)V

    .line 708
    new-instance v5, Lio/olvid/engine/datatypes/EncryptedBytes;

    array-length v6, v0

    invoke-static {v0, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v5, v0}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    .line 711
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 717
    invoke-static {p0, v1, p1}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->getAll(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/KeyId;Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;

    move-result-object p1

    .line 718
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v3, p1, v1

    .line 720
    :try_start_1
    invoke-virtual {v3}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->getAuthEncKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v6

    invoke-static {v6}, Lio/olvid/engine/crypto/Suite;->getAuthEnc(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v6

    .line 721
    new-instance v7, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {v3}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->getAuthEncKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Lio/olvid/engine/crypto/AuthEnc;->decrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/EncryptedBytes;)[B

    move-result-object v6

    invoke-direct {v7, v6}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    .line 722
    invoke-virtual {v7}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object v6

    check-cast v6, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 723
    invoke-virtual {v3}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->getObliviousChannel()Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v3, "While unwrapping a message key, a provision was found without a corresponding channel."

    .line 725
    invoke-static {v3}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 731
    :cond_1
    invoke-virtual {v3}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->setExpirationTimestampsOfOlderProvisionedKeyMaterials()V

    .line 734
    invoke-virtual {v3}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->getProvisionObliviousChannelCurrentDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v8

    invoke-virtual {v3}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->getProvisionObliviousChannelRemoteDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v9

    invoke-virtual {v3}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->getProvisionObliviousChannelRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v10

    invoke-static {p0, v8, v9, v10}, Lio/olvid/engine/channel/databases/Provision;->getAll(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/channel/databases/Provision;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    .line 735
    invoke-virtual {v11}, Lio/olvid/engine/channel/databases/Provision;->selfRatchetIfRequired()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 738
    :cond_2
    iget-boolean v8, v7, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetOfTheSendSeedInProgress:Z
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lio/olvid/engine/crypto/exceptions/DecryptionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_4

    .line 739
    :try_start_2
    iget-object v8, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v9, "UPDATE oblivious_channel SET number_of_decrypted_messages_since_last_full_ratchet_sent_message = ?  WHERE current_device_uid = ? AND remote_device_uid = ? AND contact_identity = ?;"

    invoke-virtual {v8, v9}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lio/olvid/engine/crypto/exceptions/DecryptionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 742
    :try_start_3
    iget v9, v7, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfDecryptedMessagesSinceLastFullRatchetSentMessage:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-interface {v8, v10, v9}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v9, 0x2

    .line 743
    iget-object v11, v7, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v11}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v11

    invoke-interface {v8, v9, v11}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v9, 0x3

    .line 744
    iget-object v11, v7, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v11}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v11

    invoke-interface {v8, v9, v11}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v9, 0x4

    .line 745
    iget-object v11, v7, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v11}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v11

    invoke-interface {v8, v9, v11}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 746
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 747
    iget v9, v7, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfDecryptedMessagesSinceLastFullRatchetSentMessage:I

    add-int/2addr v9, v10

    iput v9, v7, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfDecryptedMessagesSinceLastFullRatchetSentMessage:I

    .line 748
    iget-wide v9, v7, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    sget-wide v11, Lio/olvid/engine/channel/databases/ObliviousChannel;->HOOK_BIT_MIGHT_NEED_FULL_RATCHET:J

    or-long/2addr v9, v11

    iput-wide v9, v7, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    .line 749
    iget-object v9, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v9, v7}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_4

    .line 750
    :try_start_4
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lio/olvid/engine/crypto/exceptions/DecryptionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v9

    .line 739
    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v10

    if-eqz v8, :cond_3

    .line 750
    :try_start_6
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v8

    :try_start_7
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v10
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lio/olvid/engine/crypto/exceptions/DecryptionException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_0
    move-exception v8

    .line 751
    :try_start_8
    invoke-virtual {v8}, Ljava/sql/SQLException;->printStackTrace()V
    :try_end_8
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lio/olvid/engine/crypto/exceptions/DecryptionException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_2

    .line 755
    :cond_4
    :goto_3
    :try_start_9
    invoke-virtual {v3}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->delete()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lio/olvid/engine/crypto/exceptions/DecryptionException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    :catch_1
    move-exception v3

    .line 757
    :try_start_a
    invoke-virtual {v3}, Ljava/sql/SQLException;->printStackTrace()V

    .line 759
    :goto_4
    new-instance v3, Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;

    invoke-virtual {v7}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;-><init>(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;)V
    :try_end_a
    .catch Ljava/security/InvalidKeyException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lio/olvid/engine/crypto/exceptions/DecryptionException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_2

    return-object v3

    :catch_2
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v2

    :catch_3
    move-exception p0

    const-string p1, "Error retrieving a currentDeviceUid -> a received message might have been lost..."

    .line 713
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v2
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public aSendSeedFullRatchetMessageWasSent()V
    .locals 6

    .line 152
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE oblivious_channel SET full_ratchet_of_the_send_seed_in_progress = 1, number_of_encrypted_messages_since_last_full_ratchet_sent_message = 0, number_of_decrypted_messages_since_last_full_ratchet_sent_message = 0, timestamp_of_last_full_ratchet_sent_message = ?  WHERE current_device_uid = ? AND remote_device_uid = ? AND contact_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 159
    invoke-interface {v0, v3, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v4, 0x2

    .line 160
    iget-object v5, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v4, 0x3

    .line 161
    iget-object v5, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v4, 0x4

    .line 162
    iget-object v5, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 163
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 164
    iput-boolean v3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetOfTheSendSeedInProgress:Z

    const/4 v3, 0x0

    .line 165
    iput v3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfDecryptedMessagesSinceLastFullRatchetSentMessage:I

    .line 166
    iput v3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesSinceLastFullRatchetSentMessage:I

    .line 167
    iput-wide v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->timestampOfLastFullRatchet:J

    .line 168
    iget-wide v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/channel/databases/ObliviousChannel;->HOOK_BIT_MIGHT_NEED_FULL_RATCHET:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    .line 169
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v1, v1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 170
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 152
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    .line 170
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method public confirm()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE oblivious_channel SET confirmed = 1  WHERE current_device_uid = ? AND remote_device_uid = ? AND contact_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 178
    iget-object v3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 179
    iget-object v3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 180
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 181
    iput-boolean v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->confirmed:Z

    .line 182
    iget-wide v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/channel/databases/ObliviousChannel;->HOOK_BIT_CHANNEL_CONFIRMED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    .line 183
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v1, v1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 174
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 184
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public createNewProvision(Lio/olvid/engine/datatypes/Seed;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {p1, v0, p2}, Lio/olvid/engine/channel/databases/ObliviousChannel;->generateDiversifiedSeed(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/Seed;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetingCountOfLastProvision:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1, p0, p1, p2}, Lio/olvid/engine/channel/databases/Provision;->createOrReplace(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;ILio/olvid/engine/channel/databases/ObliviousChannel;Lio/olvid/engine/datatypes/Seed;I)Lio/olvid/engine/channel/databases/Provision;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 223
    iget-object p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object p1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string p2, "UPDATE oblivious_channel SET full_ratcheting_count_of_last_provision = ?  WHERE current_device_uid = ? AND remote_device_uid = ? AND contact_identity = ?;"

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 226
    :try_start_0
    iget p2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetingCountOfLastProvision:I

    add-int/2addr p2, v2

    invoke-interface {p1, v2, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x2

    .line 227
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x3

    .line 228
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x4

    .line 229
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 230
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 231
    iget p2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetingCountOfLastProvision:I

    add-int/2addr p2, v2

    iput p2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetingCountOfLastProvision:I

    .line 232
    iget-wide v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/channel/databases/ObliviousChannel;->HOOK_BIT_MIGHT_NEED_FULL_RATCHET:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    .line 233
    iget-object p2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object p2, p2, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p2, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 234
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 223
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 234
    :try_start_2
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0

    .line 221
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public delete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM oblivious_channel WHERE current_device_uid = ? AND remote_device_uid = ? AND contact_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 397
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 398
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 399
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 400
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 401
    iget-wide v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/channel/databases/ObliviousChannel;->HOOK_BIT_CHANNEL_DELETED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    .line 402
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v1, v1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 396
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 403
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public getCurrentDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getLatestProvision()Lio/olvid/engine/channel/databases/Provision;
    .locals 5

    .line 145
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetingCountOfLastProvision:I

    iget-object v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v4, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, v2, v3, v4}, Lio/olvid/engine/channel/databases/Provision;->get(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/channel/databases/Provision;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfEncryptedMessagesSinceLastFullRatchet()I
    .locals 2

    .line 104
    iget v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessages:I

    iget v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesAtTheTimeOfTheLastFullRatchet:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 3

    .line 100
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-boolean v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->confirmed:Z

    invoke-static {v0, v1, v2}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createObliviousChannelInfo(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 90
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public insert()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO oblivious_channel VALUES (?,?,?,?,?, ?,?,?,?,?, ?,?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 374
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 375
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 376
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 377
    iget-boolean v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->confirmed:Z

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/4 v1, 0x5

    .line 378
    iget v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->obliviousEngineVersion:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x6

    .line 380
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->seedForNextSendKey:Lio/olvid/engine/datatypes/Seed;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Seed;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x7

    .line 381
    iget v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetingCountOfLastProvision:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/16 v1, 0x8

    .line 382
    iget v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessages:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/16 v1, 0x9

    .line 383
    iget v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesAtTheTimeOfTheLastFullRatchet:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/16 v1, 0xa

    .line 384
    iget v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesSinceLastFullRatchetSentMessage:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/16 v1, 0xb

    .line 386
    iget v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfDecryptedMessagesSinceLastFullRatchetSentMessage:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/16 v1, 0xc

    .line 387
    iget-wide v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->timestampOfLastFullRatchet:J

    invoke-interface {v0, v1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/16 v1, 0xd

    .line 388
    iget-wide v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->timestampOfLastFullRatchetSentMessage:J

    invoke-interface {v0, v1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/16 v1, 0xe

    .line 389
    iget-boolean v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetOfTheSendSeedInProgress:Z

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 390
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 373
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 391
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public requiresFullRatchet()Z
    .locals 6

    .line 108
    iget-boolean v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetOfTheSendSeedInProgress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 112
    iget v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfDecryptedMessagesSinceLastFullRatchetSentMessage:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    return v1

    .line 118
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->timestampOfLastFullRatchetSentMessage:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x6ddd00

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    return v1

    .line 125
    :cond_1
    iget v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesSinceLastFullRatchetSentMessage:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_4

    return v1

    .line 131
    :cond_2
    invoke-virtual {p0}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getNumberOfEncryptedMessagesSinceLastFullRatchet()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_3

    return v1

    .line 137
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->timestampOfLastFullRatchet:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public updateSendSeed(Lio/olvid/engine/datatypes/Seed;I)V
    .locals 5

    .line 189
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {p1, v0, p2}, Lio/olvid/engine/channel/databases/ObliviousChannel;->generateDiversifiedSeed(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/Seed;

    move-result-object p1

    .line 190
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE oblivious_channel SET seed_for_next_send_key = ?, oblivious_engine_version = ?, number_of_encrypted_messages_at_the_time_of_the_last_full_ratchet = ?, timestamp_of_last_full_ratchet = ?, full_ratchet_of_the_send_seed_in_progress = 0  WHERE current_device_uid = ? AND remote_device_uid = ? AND contact_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 198
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Seed;->getBytes()[B

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v3, 0x2

    .line 199
    invoke-interface {v0, v3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v3, 0x3

    .line 200
    iget v4, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessages:I

    invoke-interface {v0, v3, v4}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v3, 0x4

    .line 201
    invoke-interface {v0, v3, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v3, 0x5

    .line 202
    iget-object v4, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v3, 0x6

    .line 203
    iget-object v4, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v3, 0x7

    .line 204
    iget-object v4, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 205
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 206
    iput-object p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->seedForNextSendKey:Lio/olvid/engine/datatypes/Seed;

    .line 207
    iput p2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->obliviousEngineVersion:I

    .line 208
    iget p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessages:I

    iput p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesAtTheTimeOfTheLastFullRatchet:I

    .line 209
    iput-wide v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->timestampOfLastFullRatchet:J

    const/4 p1, 0x0

    .line 210
    iput-boolean p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->fullRatchetOfTheSendSeedInProgress:Z

    .line 211
    iget-wide p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    sget-wide v1, Lio/olvid/engine/channel/databases/ObliviousChannel;->HOOK_BIT_MIGHT_NEED_FULL_RATCHET:J

    or-long/2addr p1, v1

    iput-wide p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    .line 212
    iget-object p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object p1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 213
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 190
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_0

    .line 213
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method public wasCommitted()V
    .locals 8

    .line 539
    iget-wide v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/channel/databases/ObliviousChannel;->HOOK_BIT_MIGHT_NEED_FULL_RATCHET:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 540
    invoke-virtual {p0}, Lio/olvid/engine/channel/databases/ObliviousChannel;->requiresFullRatchet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->fullRatchetProtocolStarterDelegate:Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->fullRatchetProtocolStarterDelegate:Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;

    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v4, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-interface {v0, v1, v4}, Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;->startFullRatchetProtocolForObliviousChannel(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;)V

    goto :goto_0

    :cond_0
    const-string v0, "Full ratchet required, but no FullRatchetProtocolStarterDelegate is set."

    .line 544
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 548
    :cond_1
    :goto_0
    iget-wide v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/channel/databases/ObliviousChannel;->HOOK_BIT_CHANNEL_CONFIRMED:J

    and-long/2addr v0, v4

    const-string v4, "remote_identity_key"

    const-string v5, "current_device_uid_key"

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2

    .line 549
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 550
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v1, v1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v6, "channel_notification_channel_confirmed"

    invoke-interface {v1, v6, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 555
    :cond_2
    iget-wide v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    sget-wide v6, Lio/olvid/engine/channel/databases/ObliviousChannel;->HOOK_BIT_CHANNEL_DELETED:J

    and-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-eqz v6, :cond_3

    .line 556
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 557
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v1, v1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v4, "channel_notification_channel_deleted"

    invoke-interface {v1, v4, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 562
    :cond_3
    iput-wide v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    return-void
.end method

.method public wrapMessageKey(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/MessageToSend$Header;
    .locals 6

    .line 663
    invoke-direct {p0}, Lio/olvid/engine/channel/databases/ObliviousChannel;->selfRatchet()Lio/olvid/engine/channel/datatypes/RatchetingOutput;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 667
    :cond_0
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->getAuthEncKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/crypto/Suite;->getAuthEnc(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v2

    .line 671
    :try_start_0
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->getAuthEncKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v3

    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object p1

    invoke-interface {v2, v3, p1, p2}, Lio/olvid/engine/crypto/AuthEnc;->encrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[BLio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 676
    iget p2, p1, Lio/olvid/engine/datatypes/EncryptedBytes;->length:I

    const/16 v2, 0x20

    add-int/2addr p2, v2

    new-array p2, p2, [B

    .line 677
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->getKeyId()Lio/olvid/engine/datatypes/KeyId;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/KeyId;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object v0

    iget p1, p1, Lio/olvid/engine/datatypes/EncryptedBytes;->length:I

    invoke-static {v0, v3, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    new-instance p1, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;

    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    new-instance v3, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-direct {v3, p2}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    invoke-direct {p1, v0, v2, v3}, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/EncryptedBytes;)V

    .line 681
    :try_start_1
    iget-object p2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object p2, p2, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v0, "UPDATE oblivious_channel SET number_of_encrypted_messages = ?, number_of_encrypted_messages_since_last_full_ratchet_sent_message = ?  WHERE current_device_uid = ? AND remote_device_uid = ? AND contact_identity = ?;"

    invoke-virtual {p2, v0}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 685
    :try_start_2
    iget v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessages:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-interface {p2, v2, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v0, 0x2

    .line 686
    iget v3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesSinceLastFullRatchetSentMessage:I

    add-int/2addr v3, v2

    invoke-interface {p2, v0, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v0, 0x3

    .line 687
    iget-object v3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v3

    invoke-interface {p2, v0, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v0, 0x4

    .line 688
    iget-object v3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v3

    invoke-interface {p2, v0, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v0, 0x5

    .line 689
    iget-object v3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    invoke-interface {p2, v0, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 690
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 691
    iget v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessages:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessages:I

    .line 692
    iget v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesSinceLastFullRatchetSentMessage:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->numberOfEncryptedMessagesSinceLastFullRatchetSentMessage:I

    .line 693
    iget-wide v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/channel/databases/ObliviousChannel;->HOOK_BIT_MIGHT_NEED_FULL_RATCHET:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->commitHookBits:J

    .line 694
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ObliviousChannel;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_1

    .line 695
    :try_start_3
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 681
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p2, :cond_2

    .line 695
    :try_start_5
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 696
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p1

    .line 673
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    return-object v1
.end method
