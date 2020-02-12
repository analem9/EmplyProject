.class public Lio/olvid/engine/channel/databases/Provision;
.super Ljava/lang/Object;
.source "Provision.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final FULL_RATCHETING_COUNT:Ljava/lang/String; = "full_ratcheting_count"

.field static final OBLIVIOUS_CHANNEL_CURRENT_DEVICE_UID:Ljava/lang/String; = "oblivious_channel_current_device_uid"

.field static final OBLIVIOUS_CHANNEL_REMOTE_DEVICE_UID:Ljava/lang/String; = "oblivious_channel_remote_device_uid"

.field static final OBLIVIOUS_CHANNEL_REMOTE_IDENTITY:Ljava/lang/String; = "oblivious_channel_remote_identity"

.field static final OBLIVIOUS_ENGINE_VERSION:Ljava/lang/String; = "oblivious_engine_version"

.field static final SEED_FOR_NEXT_PROVISIONED_RECEIVE_KEY:Ljava/lang/String; = "seed_for_next_provisioned_receive_key"

.field static final SELF_RATCHETING_COUNT:Ljava/lang/String; = "self_ratcheting_count"

.field static final TABLE_NAME:Ljava/lang/String; = "provision"


# instance fields
.field private final channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

.field private fullRatchetingCount:I

.field private obliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

.field private obliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

.field private obliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

.field private obliviousEngineVersion:I

.field private seedForNextProvisionedReceiveKey:Lio/olvid/engine/datatypes/Seed;

.field private selfRatchetingCount:I


# direct methods
.method private constructor <init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;ILio/olvid/engine/channel/databases/ObliviousChannel;Lio/olvid/engine/datatypes/Seed;I)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lio/olvid/engine/channel/databases/Provision;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    .line 155
    iput p2, p0, Lio/olvid/engine/channel/databases/Provision;->fullRatchetingCount:I

    const/4 p1, 0x0

    .line 156
    iput p1, p0, Lio/olvid/engine/channel/databases/Provision;->selfRatchetingCount:I

    .line 157
    iput-object p4, p0, Lio/olvid/engine/channel/databases/Provision;->seedForNextProvisionedReceiveKey:Lio/olvid/engine/datatypes/Seed;

    .line 158
    iput p5, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousEngineVersion:I

    .line 159
    invoke-virtual {p3}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getCurrentDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 160
    invoke-virtual {p3}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getRemoteDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 161
    invoke-virtual {p3}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Ljava/sql/ResultSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lio/olvid/engine/channel/databases/Provision;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    const-string p1, "full_ratcheting_count"

    .line 166
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/channel/databases/Provision;->fullRatchetingCount:I

    const-string p1, "self_ratcheting_count"

    .line 167
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/channel/databases/Provision;->selfRatchetingCount:I

    .line 168
    new-instance p1, Lio/olvid/engine/datatypes/Seed;

    const-string v0, "seed_for_next_provisioned_receive_key"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/channel/databases/Provision;->seedForNextProvisionedReceiveKey:Lio/olvid/engine/datatypes/Seed;

    const-string p1, "oblivious_engine_version"

    .line 169
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousEngineVersion:I

    .line 170
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "oblivious_channel_current_device_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 171
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "oblivious_channel_remote_device_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    :try_start_0
    const-string p1, "oblivious_channel_remote_identity"

    .line 173
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 175
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static createOrReplace(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;ILio/olvid/engine/channel/databases/ObliviousChannel;Lio/olvid/engine/datatypes/Seed;I)Lio/olvid/engine/channel/databases/Provision;
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    :try_start_0
    new-instance v7, Lio/olvid/engine/channel/databases/Provision;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/channel/databases/Provision;-><init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;ILio/olvid/engine/channel/databases/ObliviousChannel;Lio/olvid/engine/datatypes/Seed;I)V

    .line 140
    invoke-virtual {v7}, Lio/olvid/engine/channel/databases/Provision;->insert()V

    const/16 p0, 0x64

    .line 141
    invoke-direct {v7, p0}, Lio/olvid/engine/channel/databases/Provision;->selfRatchet(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p0

    .line 144
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
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

    .line 184
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS provision (full_ratcheting_count INT NOT NULL, self_ratcheting_count INT NOT NULL, seed_for_next_provisioned_receive_key BLOB NOT NULL, oblivious_engine_version INT NOT NULL, oblivious_channel_current_device_uid BLOB NOT NULL, oblivious_channel_remote_device_uid BLOB NOT NULL, oblivious_channel_remote_identity BLOB NOT NULL, CONSTRAINT PK_provision PRIMARY KEY(full_ratcheting_count, oblivious_channel_current_device_uid, oblivious_channel_remote_device_uid, oblivious_channel_remote_identity), FOREIGN KEY (oblivious_channel_current_device_uid, oblivious_channel_remote_device_uid, oblivious_channel_remote_identity) REFERENCES oblivious_channel(current_device_uid, remote_device_uid, contact_identity) ON DELETE CASCADE);"

    .line 185
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 195
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 184
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 195
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

.method public static deleteAllEmpty(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;)V
    .locals 4

    .line 111
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "SELECT * FROM provision"

    .line 112
    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 113
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    new-instance v2, Lio/olvid/engine/channel/databases/Provision;

    invoke-direct {v2, p0, v1}, Lio/olvid/engine/channel/databases/Provision;-><init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Ljava/sql/ResultSet;)V

    .line 115
    invoke-static {p0, v2}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->countProvisionedReceiveKey(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/channel/databases/Provision;)I

    move-result v3

    if-nez v3, :cond_0

    .line 116
    invoke-virtual {v2}, Lio/olvid/engine/channel/databases/Provision;->delete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 119
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    if-eqz v0, :cond_5

    .line 120
    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 112
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 119
    :try_start_6
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 111
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v0, :cond_4

    .line 120
    :try_start_9
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method

.method public static get(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/channel/databases/Provision;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    if-nez p4, :cond_0

    goto :goto_2

    .line 247
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM provision WHERE full_ratcheting_count = ? AND oblivious_channel_current_device_uid = ? AND oblivious_channel_remote_device_uid = ? AND oblivious_channel_remote_identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 252
    :try_start_1
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p1, 0x2

    .line 253
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x3

    .line 254
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x4

    .line 255
    invoke-virtual {p4}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 256
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 257
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 258
    new-instance p2, Lio/olvid/engine/channel/databases/Provision;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/channel/databases/Provision;-><init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Ljava/sql/ResultSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 262
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 263
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 262
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 263
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 256
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_6

    .line 262
    :try_start_8
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p0

    .line 247
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 263
    :try_start_b
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p2

    :try_start_c
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    :cond_8
    :goto_2
    return-object v0
.end method

.method public static getAll(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/channel/databases/Provision;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_0

    goto :goto_3

    .line 273
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM provision WHERE oblivious_channel_current_device_uid = ? AND oblivious_channel_remote_device_uid = ? AND oblivious_channel_remote_identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 277
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 278
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x3

    .line 279
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 280
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 281
    :try_start_2
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 282
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 283
    new-instance p3, Lio/olvid/engine/channel/databases/Provision;

    invoke-direct {p3, p0, p1}, Lio/olvid/engine/channel/databases/Provision;-><init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array p0, v0, [Lio/olvid/engine/channel/databases/Provision;

    .line 285
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/channel/databases/Provision;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 286
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    if-eqz v1, :cond_3

    .line 287
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    .line 280
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_4

    .line 286
    :try_start_6
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 273
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_5

    .line 287
    :try_start_9
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    new-array p0, v0, [Lio/olvid/engine/channel/databases/Provision;

    return-object p0

    :cond_6
    :goto_3
    new-array p0, v0, [Lio/olvid/engine/channel/databases/Provision;

    return-object p0
.end method

.method private selfRatchet(I)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_0

    .line 76
    iget-object v2, p0, Lio/olvid/engine/channel/databases/Provision;->seedForNextProvisionedReceiveKey:Lio/olvid/engine/datatypes/Seed;

    iget v3, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousEngineVersion:I

    invoke-static {v2, v3}, Lio/olvid/engine/channel/databases/ObliviousChannel;->computeSelfRatchet(Lio/olvid/engine/datatypes/Seed;I)Lio/olvid/engine/channel/datatypes/RatchetingOutput;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->getRatchetedSeed()Lio/olvid/engine/datatypes/Seed;

    move-result-object v3

    iput-object v3, p0, Lio/olvid/engine/channel/databases/Provision;->seedForNextProvisionedReceiveKey:Lio/olvid/engine/datatypes/Seed;

    .line 78
    iget-object v3, p0, Lio/olvid/engine/channel/databases/Provision;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    invoke-virtual {v2}, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->getKeyId()Lio/olvid/engine/datatypes/KeyId;

    move-result-object v4

    invoke-virtual {v2}, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->getAuthEncKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v2

    iget v5, p0, Lio/olvid/engine/channel/databases/Provision;->selfRatchetingCount:I

    invoke-static {v3, v4, v2, v5, p0}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->create(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/KeyId;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;ILio/olvid/engine/channel/databases/Provision;)Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;

    .line 79
    iget v2, p0, Lio/olvid/engine/channel/databases/Provision;->selfRatchetingCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/olvid/engine/channel/databases/Provision;->selfRatchetingCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    :try_start_0
    iget-object p1, p0, Lio/olvid/engine/channel/databases/Provision;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object p1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v0, "UPDATE provision SET seed_for_next_provisioned_receive_key = ?, self_ratcheting_count = ?  WHERE full_ratcheting_count = ? AND oblivious_channel_current_device_uid = ? AND oblivious_channel_remote_device_uid = ? AND oblivious_channel_remote_identity = ?;"

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    iget-object v0, p0, Lio/olvid/engine/channel/databases/Provision;->seedForNextProvisionedReceiveKey:Lio/olvid/engine/datatypes/Seed;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Seed;->getBytes()[B

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v0, 0x2

    .line 90
    iget v1, p0, Lio/olvid/engine/channel/databases/Provision;->selfRatchetingCount:I

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v0, 0x3

    .line 91
    iget v1, p0, Lio/olvid/engine/channel/databases/Provision;->fullRatchetingCount:I

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v0, 0x4

    .line 92
    iget-object v1, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v0, 0x5

    .line 93
    iget-object v1, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v0, 0x6

    .line 94
    iget-object v1, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 95
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 96
    :try_start_2
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 82
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 96
    :try_start_4
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xc

    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string p1, "DELETE FROM provision AS p  WHERE NOT EXISTS ( SELECT 1 FROM oblivious_channel  WHERE current_device_uid = p.oblivious_channel_current_device_uid AND remote_device_uid = p.oblivious_channel_remote_device_uid AND contact_identity = p.oblivious_channel_remote_identity )"

    .line 201
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 208
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 200
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_0

    .line 208
    :try_start_2
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lio/olvid/engine/channel/databases/Provision;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM provision WHERE full_ratcheting_count = ? AND oblivious_channel_current_device_uid = ? AND oblivious_channel_remote_device_uid = ? AND oblivious_channel_remote_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 230
    :try_start_0
    iget v2, p0, Lio/olvid/engine/channel/databases/Provision;->fullRatchetingCount:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x2

    .line 231
    iget-object v2, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 232
    iget-object v2, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 233
    iget-object v2, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 234
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 229
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 235
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

.method public getFullRatchetingCount()I
    .locals 1

    .line 44
    iget v0, p0, Lio/olvid/engine/channel/databases/Provision;->fullRatchetingCount:I

    return v0
.end method

.method public getObliviousChannelCurrentDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getObliviousChannelRemoteDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getObliviousChannelRemoteIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getObliviousEngineVersion()I
    .locals 1

    .line 56
    iget v0, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousEngineVersion:I

    return v0
.end method

.method public getSeedForNextProvisionedReceiveKey()Lio/olvid/engine/datatypes/Seed;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/olvid/engine/channel/databases/Provision;->seedForNextProvisionedReceiveKey:Lio/olvid/engine/datatypes/Seed;

    return-object v0
.end method

.method public getSelfRatchetingCount()I
    .locals 1

    .line 48
    iget v0, p0, Lio/olvid/engine/channel/databases/Provision;->selfRatchetingCount:I

    return v0
.end method

.method public insert()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lio/olvid/engine/channel/databases/Provision;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT OR REPLACE INTO provision VALUES (?,?,?,?,?, ?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 216
    :try_start_0
    iget v2, p0, Lio/olvid/engine/channel/databases/Provision;->fullRatchetingCount:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x2

    .line 217
    iget v2, p0, Lio/olvid/engine/channel/databases/Provision;->selfRatchetingCount:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x3

    .line 218
    iget-object v2, p0, Lio/olvid/engine/channel/databases/Provision;->seedForNextProvisionedReceiveKey:Lio/olvid/engine/datatypes/Seed;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Seed;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 219
    iget v2, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousEngineVersion:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x5

    .line 220
    iget-object v2, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x6

    .line 221
    iget-object v2, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x7

    .line 222
    iget-object v2, p0, Lio/olvid/engine/channel/databases/Provision;->obliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 223
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 215
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 224
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

.method public selfRatchetIfRequired()V
    .locals 2

    .line 102
    iget-object v0, p0, Lio/olvid/engine/channel/databases/Provision;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    invoke-static {v0, p0}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->countNotExpiringProvisionedReceiveKey(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/channel/databases/Provision;)I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 104
    invoke-direct {p0, v1}, Lio/olvid/engine/channel/databases/Provision;->selfRatchet(I)V

    :cond_0
    return-void
.end method

.method public wasCommitted()V
    .locals 0

    return-void
.end method
