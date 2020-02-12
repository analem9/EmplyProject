.class public Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;
.super Ljava/lang/Object;
.source "ProvisionedKeyMaterial.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final AUTH_ENC_KEY:Ljava/lang/String; = "auth_enc_key"

.field static final EXPIRATION_TIMESTAMP:Ljava/lang/String; = "expiration_timestamp"

.field static final KEY_ID:Ljava/lang/String; = "key_id"

.field static final PROVISION_FULL_RATCHETING_COUNT:Ljava/lang/String; = "provision_full_ratcheting_count"

.field static final PROVISION_OBLIVIOUS_CHANNEL_CURRENT_DEVICE_UID:Ljava/lang/String; = "provision_oblivious_channel_current_device_uid"

.field static final PROVISION_OBLIVIOUS_CHANNEL_REMOTE_DEVICE_UID:Ljava/lang/String; = "provision_oblivious_channel_remote_device_uid"

.field static final PROVISION_OBLIVIOUS_CHANNEL_REMOTE_IDENTITY:Ljava/lang/String; = "provision_oblivious_channel_remote_identity"

.field static final SELF_RATCHETING_COUNT:Ljava/lang/String; = "self_ratcheting_count"

.field static final TABLE_NAME:Ljava/lang/String; = "provisioned_key_material"


# instance fields
.field private authEncKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

.field private final channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

.field private expirationTimestamp:Ljava/lang/Long;

.field private keyId:Lio/olvid/engine/datatypes/KeyId;

.field private provisionFullRatchetingCount:I

.field private provisionObliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

.field private provisionObliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

.field private provisionObliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

.field private selfRatchetingCount:I


# direct methods
.method private constructor <init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/KeyId;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;ILio/olvid/engine/channel/databases/Provision;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    .line 145
    iput-object p2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->keyId:Lio/olvid/engine/datatypes/KeyId;

    .line 146
    iput-object p3, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->authEncKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->expirationTimestamp:Ljava/lang/Long;

    .line 148
    iput p4, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->selfRatchetingCount:I

    .line 149
    invoke-virtual {p5}, Lio/olvid/engine/channel/databases/Provision;->getFullRatchetingCount()I

    move-result p1

    iput p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionFullRatchetingCount:I

    .line 150
    invoke-virtual {p5}, Lio/olvid/engine/channel/databases/Provision;->getObliviousChannelCurrentDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 151
    invoke-virtual {p5}, Lio/olvid/engine/channel/databases/Provision;->getObliviousChannelRemoteDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 152
    invoke-virtual {p5}, Lio/olvid/engine/channel/databases/Provision;->getObliviousChannelRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    .line 157
    new-instance p1, Lio/olvid/engine/datatypes/KeyId;

    const-string v0, "key_id"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/KeyId;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->keyId:Lio/olvid/engine/datatypes/KeyId;

    .line 159
    :try_start_0
    new-instance p1, Lio/olvid/engine/encoder/Encoded;

    const-string v0, "auth_enc_key"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->authEncKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    :goto_0
    const-string p1, "expiration_timestamp"

    .line 163
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->expirationTimestamp:Ljava/lang/Long;

    const-string p1, "self_ratcheting_count"

    .line 164
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->selfRatchetingCount:I

    const-string p1, "provision_full_ratcheting_count"

    .line 165
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionFullRatchetingCount:I

    .line 166
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "provision_oblivious_channel_current_device_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 167
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "provision_oblivious_channel_remote_device_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    :try_start_1
    const-string p1, "provision_oblivious_channel_remote_identity"

    .line 169
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_1
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 171
    :catch_1
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method static countNotExpiringProvisionedReceiveKey(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/channel/databases/Provision;)I
    .locals 3

    const/4 v0, 0x0

    .line 272
    :try_start_0
    iget-object p0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT COUNT(*) AS count FROM provisioned_key_material WHERE expiration_timestamp IS NULL AND provision_full_ratcheting_count = ? AND provision_oblivious_channel_current_device_uid = ? AND provision_oblivious_channel_remote_device_uid = ? AND provision_oblivious_channel_remote_identity = ?;"

    invoke-virtual {p0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 278
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/channel/databases/Provision;->getFullRatchetingCount()I

    move-result v2

    invoke-interface {p0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x2

    .line 279
    invoke-virtual {p1}, Lio/olvid/engine/channel/databases/Provision;->getObliviousChannelCurrentDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 280
    invoke-virtual {p1}, Lio/olvid/engine/channel/databases/Provision;->getObliviousChannelRemoteDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 281
    invoke-virtual {p1}, Lio/olvid/engine/channel/databases/Provision;->getObliviousChannelRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 282
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 283
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "count"

    .line 284
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    .line 288
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_0
    if-eqz p0, :cond_1

    .line 289
    :try_start_4
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 288
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_3
    if-eqz p0, :cond_4

    .line 289
    :try_start_6
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    return v0

    :catchall_0
    move-exception v1

    .line 282
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_5

    .line 288
    :try_start_8
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    .line 272
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz p0, :cond_6

    .line 289
    :try_start_b
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v1
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    return v0
.end method

.method static countProvisionedReceiveKey(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/channel/databases/Provision;)I
    .locals 3

    const/4 v0, 0x0

    .line 296
    :try_start_0
    iget-object p0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT COUNT(*) AS count FROM provisioned_key_material WHERE provision_full_ratcheting_count = ? AND provision_oblivious_channel_current_device_uid = ? AND provision_oblivious_channel_remote_device_uid = ? AND provision_oblivious_channel_remote_identity = ?;"

    invoke-virtual {p0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 301
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/channel/databases/Provision;->getFullRatchetingCount()I

    move-result v2

    invoke-interface {p0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x2

    .line 302
    invoke-virtual {p1}, Lio/olvid/engine/channel/databases/Provision;->getObliviousChannelCurrentDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 303
    invoke-virtual {p1}, Lio/olvid/engine/channel/databases/Provision;->getObliviousChannelRemoteDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 304
    invoke-virtual {p1}, Lio/olvid/engine/channel/databases/Provision;->getObliviousChannelRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 305
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 306
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "count"

    .line 307
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    .line 311
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_0
    if-eqz p0, :cond_1

    .line 312
    :try_start_4
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 311
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_3
    if-eqz p0, :cond_4

    .line 312
    :try_start_6
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    return v0

    :catchall_0
    move-exception v1

    .line 305
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_5

    .line 311
    :try_start_8
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    .line 296
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz p0, :cond_6

    .line 312
    :try_start_b
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v1
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    return v0
.end method

.method public static create(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/KeyId;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;ILio/olvid/engine/channel/databases/Provision;)Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    :try_start_0
    new-instance v7, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;-><init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/KeyId;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;ILio/olvid/engine/channel/databases/Provision;)V

    .line 131
    invoke-virtual {v7}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p0

    .line 134
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

    .line 181
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS provisioned_key_material (key_id BLOB NOT NULL, auth_enc_key BLOB NOT NULL, expiration_timestamp BIGINT, self_ratcheting_count INT NOT NULL, provision_full_ratcheting_count INT NOT NULL, provision_oblivious_channel_current_device_uid BLOB NOT NULL, provision_oblivious_channel_remote_device_uid BLOB NOT NULL, provision_oblivious_channel_remote_identity BLOB NOT NULL, CONSTRAINT PK_provisioned_key_material PRIMARY KEY(self_ratcheting_count, provision_full_ratcheting_count, provision_oblivious_channel_current_device_uid, provision_oblivious_channel_remote_device_uid, provision_oblivious_channel_remote_identity), FOREIGN KEY (provision_full_ratcheting_count, provision_oblivious_channel_current_device_uid, provision_oblivious_channel_remote_device_uid, provision_oblivious_channel_remote_identity) REFERENCES provision(full_ratcheting_count, oblivious_channel_current_device_uid, oblivious_channel_remote_device_uid, oblivious_channel_remote_identity) ON DELETE CASCADE);"

    .line 182
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 193
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 181
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 193
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

.method public static deleteAllExpired(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;)V
    .locals 3

    .line 109
    :try_start_0
    iget-object p0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v0, "DELETE FROM provisioned_key_material WHERE expiration_timestamp IS NOT NULL AND expiration_timestamp < ?;"

    invoke-virtual {p0, v0}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 111
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 112
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 113
    :try_start_2
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 109
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_0

    .line 113
    :try_start_4
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method public static getAll(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/KeyId;Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 251
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM provisioned_key_material WHERE key_id = ? AND provision_oblivious_channel_current_device_uid = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 255
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/KeyId;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 256
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 257
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 258
    :try_start_2
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 259
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    new-instance v2, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;-><init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array p0, v0, [Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;

    .line 262
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 263
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    if-eqz v1, :cond_3

    .line 264
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    .line 257
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_4

    .line 263
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

    .line 251
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_5

    .line 264
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
    new-array p0, v0, [Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;

    return-object p0

    :cond_6
    :goto_3
    new-array p0, v0, [Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;

    return-object p0
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

    .line 198
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string p1, "DELETE FROM provisioned_key_material AS p  WHERE NOT EXISTS ( SELECT 1 FROM provision  WHERE full_ratcheting_count = p.provision_full_ratcheting_count AND oblivious_channel_current_device_uid = p.provision_oblivious_channel_current_device_uid AND oblivious_channel_remote_device_uid = p.provision_oblivious_channel_remote_device_uid AND oblivious_channel_remote_identity = p.provision_oblivious_channel_remote_identity )"

    .line 199
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 207
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 198
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_0

    .line 207
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

    .line 233
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM provisioned_key_material WHERE self_ratcheting_count = ? AND provision_full_ratcheting_count = ? AND provision_oblivious_channel_current_device_uid = ? AND provision_oblivious_channel_remote_device_uid = ? AND provision_oblivious_channel_remote_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 234
    :try_start_0
    iget v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->selfRatchetingCount:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x2

    .line 235
    iget v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionFullRatchetingCount:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x3

    .line 236
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 237
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x5

    .line 238
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 239
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 233
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 240
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

.method public getAuthEncKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->authEncKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-object v0
.end method

.method getObliviousChannel()Lio/olvid/engine/channel/databases/ObliviousChannel;
    .locals 5

    .line 79
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v3, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lio/olvid/engine/channel/databases/ObliviousChannel;->get(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object v0

    return-object v0
.end method

.method public getProvision()Lio/olvid/engine/channel/databases/Provision;
    .locals 5

    .line 75
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget v1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionFullRatchetingCount:I

    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v3, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v4, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, v2, v3, v4}, Lio/olvid/engine/channel/databases/Provision;->get(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/channel/databases/Provision;

    move-result-object v0

    return-object v0
.end method

.method public getProvisionFullRatchetingCount()I
    .locals 1

    .line 57
    iget v0, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionFullRatchetingCount:I

    return v0
.end method

.method public getProvisionObliviousChannelCurrentDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getProvisionObliviousChannelRemoteDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getProvisionObliviousChannelRemoteIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getSelfRatchetingCount()I
    .locals 1

    .line 53
    iget v0, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->selfRatchetingCount:I

    return v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO provisioned_key_material VALUES (?,?,?,?,?, ?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 215
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->keyId:Lio/olvid/engine/datatypes/KeyId;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/KeyId;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 216
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->authEncKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 217
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->expirationTimestamp:Ljava/lang/Long;

    const/4 v2, 0x3

    if-nez v1, :cond_0

    const/4 v1, -0x5

    .line 218
    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->expirationTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    :goto_0
    const/4 v1, 0x4

    .line 222
    iget v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->selfRatchetingCount:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x5

    .line 223
    iget v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionFullRatchetingCount:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x6

    .line 224
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x7

    .line 225
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/16 v1, 0x8

    .line 226
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 227
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 228
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 214
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 228
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public setExpirationTimestampsOfOlderProvisionedKeyMaterials()V
    .locals 5

    .line 87
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE provisioned_key_material SET expiration_timestamp = ?  WHERE expiration_timestamp IS NULL AND provision_oblivious_channel_current_device_uid = ? AND provision_oblivious_channel_remote_device_uid = ? AND provision_oblivious_channel_remote_identity = ? AND ( provision_full_ratcheting_count < ? OR ( provision_full_ratcheting_count = ? AND self_ratcheting_count < ?));"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xa4cb800

    add-long/2addr v1, v3

    const/4 v3, 0x1

    .line 97
    invoke-interface {v0, v3, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v1, 0x2

    .line 98
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelCurrentDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 99
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 100
    iget-object v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionObliviousChannelRemoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x5

    .line 101
    iget v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionFullRatchetingCount:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x6

    .line 102
    iget v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->provisionFullRatchetingCount:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x7

    .line 103
    iget v2, p0, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->selfRatchetingCount:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 104
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 105
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 87
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    .line 105
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

.method public wasCommitted()V
    .locals 0

    return-void
.end method
