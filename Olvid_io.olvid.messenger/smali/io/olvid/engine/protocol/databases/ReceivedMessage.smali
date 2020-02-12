.class public Lio/olvid/engine/protocol/databases/ReceivedMessage;
.super Ljava/lang/Object;
.source "ReceivedMessage.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final ASSOCIATED_OWNED_IDENTITY:Ljava/lang/String; = "associated_owned_identity"

.field static final ENCODED_RESPONSE:Ljava/lang/String; = "encoded_response"

.field static final EXPIRATION_TIMESTAMP:Ljava/lang/String; = "expiration_timestamp"

.field private static HOOK_BIT_INSERTED:J = 0x1L

.field static final INPUTS:Ljava/lang/String; = "inputs"

.field static final PROTOCOL_ID:Ljava/lang/String; = "protocol_id"

.field static final PROTOCOL_INSTANCE_UID:Ljava/lang/String; = "protocol_instance_uid"

.field static final PROTOCOL_MESSAGE_ID:Ljava/lang/String; = "protocol_message_id"

.field static final RECEPTION_CHANNEL_INFO:Ljava/lang/String; = "reception_channel_info"

.field static final SERVER_TIMESTAMP:Ljava/lang/String; = "server_timestamp"

.field static final TABLE_NAME:Ljava/lang/String; = "received_message"

.field static final TO_IDENTITY:Ljava/lang/String; = "to_identity"

.field static final UID_:Ljava/lang/String; = "uid"

.field static final USER_DIALOG_UUID:Ljava/lang/String; = "user_dialog_uuid"


# instance fields
.field private associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private commitHookBits:J

.field private encodedResponse:Lio/olvid/engine/encoder/Encoded;

.field private expirationTimestamp:J

.field private inputs:[Lio/olvid/engine/encoder/Encoded;

.field private protocolId:I

.field private protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

.field private final protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

.field private protocolMessageId:I

.field private receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

.field private serverTimestamp:J

.field private toIdentity:Lio/olvid/engine/datatypes/Identity;

.field private uid:Lio/olvid/engine/datatypes/UID;

.field private userDialogUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/encoder/Encoded;Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/UID;IILio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/datatypes/Identity;JLio/olvid/engine/crypto/PRNGService;)V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 412
    iput-wide v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->commitHookBits:J

    .line 146
    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    .line 148
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    invoke-direct {p1, p13}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->uid:Lio/olvid/engine/datatypes/UID;

    .line 149
    iput-object p2, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 150
    iput-object p3, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->inputs:[Lio/olvid/engine/encoder/Encoded;

    .line 151
    iput-object p4, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->userDialogUuid:Ljava/util/UUID;

    .line 152
    iput-object p5, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    .line 154
    iput-object p6, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    .line 155
    iput p7, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolMessageId:I

    .line 156
    iput p8, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolId:I

    .line 157
    iput-object p9, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    .line 158
    iput-object p10, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 p3, 0x4d3f6400

    add-long/2addr p1, p3

    iput-wide p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->expirationTimestamp:J

    .line 161
    iput-wide p11, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->serverTimestamp:J

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/encoder/Encoded;Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/UID;IILio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/datatypes/Identity;J)V
    .locals 2

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 412
    iput-wide v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->commitHookBits:J

    .line 176
    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    .line 178
    iput-object p2, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->uid:Lio/olvid/engine/datatypes/UID;

    .line 179
    iput-object p3, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 180
    iput-object p4, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->inputs:[Lio/olvid/engine/encoder/Encoded;

    .line 181
    iput-object p5, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->userDialogUuid:Ljava/util/UUID;

    .line 182
    iput-object p6, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    .line 184
    iput-object p7, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    .line 185
    iput p8, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolMessageId:I

    .line 186
    iput p9, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolId:I

    .line 187
    iput-object p10, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    .line 188
    iput-object p11, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 p3, 0x4d3f6400

    add-long/2addr p1, p3

    iput-wide p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->expirationTimestamp:J

    .line 191
    iput-wide p12, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->serverTimestamp:J

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 412
    iput-wide v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->commitHookBits:J

    .line 196
    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    .line 199
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->uid:Lio/olvid/engine/datatypes/UID;

    :try_start_0
    const-string p1, "to_identity"

    .line 201
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 202
    new-instance p1, Lio/olvid/engine/encoder/Encoded;

    const-string v0, "inputs"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->inputs:[Lio/olvid/engine/encoder/Encoded;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_2

    const-string p1, "user_dialog_uuid"

    .line 206
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 208
    iput-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->userDialogUuid:Ljava/util/UUID;

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->userDialogUuid:Ljava/util/UUID;

    :goto_0
    const-string p1, "encoded_response"

    .line 212
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 214
    iput-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    goto :goto_1

    .line 216
    :cond_1
    new-instance v0, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {v0, p1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    iput-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    .line 220
    :goto_1
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "protocol_instance_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    const-string p1, "protocol_message_id"

    .line 221
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolMessageId:I

    const-string p1, "protocol_id"

    .line 222
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolId:I

    .line 224
    :try_start_1
    new-instance p1, Lio/olvid/engine/encoder/Encoded;

    const-string v0, "reception_channel_info"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-static {p1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    :try_end_1
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string p1, "associated_owned_identity"

    .line 229
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_2
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "expiration_timestamp"

    .line 234
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->expirationTimestamp:J

    const-string p1, "server_timestamp"

    .line 235
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->serverTimestamp:J

    return-void

    .line 231
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1

    .line 226
    :catch_1
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1

    .line 204
    :catch_2
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/protocol/databases/ReceivedMessage;
    .locals 16

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    :try_start_0
    new-instance v0, Lio/olvid/engine/protocol/databases/ReceivedMessage;

    .line 115
    invoke-virtual/range {p1 .. p1}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    .line 116
    invoke-virtual/range {p1 .. p1}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    .line 117
    invoke-virtual/range {p1 .. p1}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->getUserDialogUuid()Ljava/util/UUID;

    move-result-object v6

    .line 118
    invoke-virtual/range {p1 .. p1}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->getEncodedResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object v7

    .line 119
    invoke-virtual/range {p1 .. p1}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v8

    .line 120
    invoke-virtual/range {p1 .. p1}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->getProtocolMessageId()I

    move-result v9

    .line 121
    invoke-virtual/range {p1 .. p1}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->getProtocolId()I

    move-result v10

    .line 122
    invoke-virtual/range {p1 .. p1}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v11

    .line 123
    invoke-virtual/range {p1 .. p1}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->getAssociatedOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v12

    .line 124
    invoke-virtual/range {p1 .. p1}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->getServerTimestamp()J

    move-result-wide v13

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v15, p2

    invoke-direct/range {v2 .. v15}, Lio/olvid/engine/protocol/databases/ReceivedMessage;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/encoder/Encoded;Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/UID;IILio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/datatypes/Identity;JLio/olvid/engine/crypto/PRNGService;)V

    .line 126
    invoke-virtual {v0}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS received_message (uid BLOB PRIMARY KEY, to_identity BLOB NOT NULL, inputs BLOB NOT NULL, user_dialog_uuid VARCHAR, encoded_response BLOB, protocol_instance_uid BLOB NOT NULL, protocol_message_id INT NOT NULL, protocol_id INT NOT NULL, reception_channel_info BLOB NOT NULL, associated_owned_identity BLOB NOT NULL, expiration_timestamp BIGINT NOT NULL, server_timestamp BIGINT NOT NULL);"

    .line 270
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 285
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 269
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 285
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

.method public static deleteExpiredMessagesWithNoProtocol(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 347
    iget-object p0, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v0, "DELETE FROM received_message WHERE uid IN  (SELECT received_message.uid FROM received_message LEFT JOIN protocol_instance ON protocol_instance.uid = received_message.protocol_instance_uid WHERE received_message.expiration_timestamp < ? AND protocol_instance.uid IS NULL);"

    invoke-virtual {p0, v0}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 354
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 355
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 356
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 347
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 356
    :try_start_2
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
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

.method public static get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/protocol/databases/ReceivedMessage;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 367
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM received_message WHERE uid = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 368
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 369
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 370
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 371
    new-instance v2, Lio/olvid/engine/protocol/databases/ReceivedMessage;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 375
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 376
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object v2

    :cond_3
    if-eqz p1, :cond_4

    .line 375
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 376
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 369
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_6

    .line 375
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
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p0

    .line 367
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 376
    :try_start_b
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v1

    :try_start_c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    .line 377
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v0
.end method

.method public static getAll(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;)[Lio/olvid/engine/protocol/databases/ReceivedMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM received_message;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 398
    :try_start_0
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 399
    :try_start_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 400
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    new-instance v3, Lio/olvid/engine/protocol/databases/ReceivedMessage;

    invoke-direct {v3, p0, v1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lio/olvid/engine/protocol/databases/ReceivedMessage;

    .line 403
    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/protocol/databases/ReceivedMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 404
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v0, :cond_2

    .line 405
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 398
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 404
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 397
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v0, :cond_4

    .line 405
    :try_start_7
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
.end method

.method public static getAll(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/protocol/databases/ReceivedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM received_message WHERE protocol_instance_uid = ? AND associated_owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 384
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 385
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 386
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 387
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 388
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    new-instance v1, Lio/olvid/engine/protocol/databases/ReceivedMessage;

    invoke-direct {v1, p0, p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lio/olvid/engine/protocol/databases/ReceivedMessage;

    .line 391
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/protocol/databases/ReceivedMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 392
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v0, :cond_2

    .line 393
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 386
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_3

    .line 392
    :try_start_4
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 383
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_4

    .line 393
    :try_start_7
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "MIGRATING `received_message` DATABASE FROM VERSION "

    const/16 v1, 0xa

    if-ge p1, v1, :cond_2

    if-lt p2, v1, :cond_2

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 10"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    :try_start_0
    const-string v2, "ALTER TABLE `received_message` ADD COLUMN `server_timestamp` BIGINT NOT NULL DEFAULT 0"

    .line 292
    invoke-interface {p1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 293
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    :cond_0
    const/16 p1, 0xa

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 291
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    .line 293
    :try_start_2
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2

    :cond_2
    :goto_1
    const/16 v1, 0xb

    if-ge p1, v1, :cond_4

    if-lt p2, v1, :cond_4

    .line 297
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    .line 298
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 11"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    const-string p1, "DELETE FROM received_message WHERE protocol_id = 5;"

    .line 299
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p0, :cond_4

    .line 300
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 297
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_3

    .line 300
    :try_start_5
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p2

    :cond_4
    :goto_3
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

    .line 338
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM received_message WHERE uid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 339
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 340
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 338
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 341
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

.method public getAssociatedOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 99
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getEncodedResponse()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->inputs:[Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getProtocolId()I
    .locals 1

    .line 91
    iget v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolId:I

    return v0
.end method

.method public getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 83
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    .line 87
    iget v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolMessageId:I

    return v0
.end method

.method public getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    return-object v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->serverTimestamp:J

    return-wide v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->uid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getUserDialogUuid()Ljava/util/UUID;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->userDialogUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO received_message VALUES (?,?,?,?,?, ?,?,?,?,?, ?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 308
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 309
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 310
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->inputs:[Lio/olvid/engine/encoder/Encoded;

    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 311
    iget-object v1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->userDialogUuid:Ljava/util/UUID;

    const/16 v2, 0xc

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->userDialogUuid:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 316
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    const/4 v3, 0x5

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x7d4

    .line 319
    invoke-interface {v0, v3, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_1
    const/4 v1, 0x6

    .line 322
    iget-object v3, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x7

    .line 323
    iget v3, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolMessageId:I

    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/16 v1, 0x8

    .line 324
    iget v3, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolId:I

    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/16 v1, 0x9

    .line 325
    iget-object v3, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/16 v1, 0xa

    .line 326
    iget-object v3, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/16 v1, 0xb

    .line 328
    iget-wide v3, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->expirationTimestamp:J

    invoke-interface {v0, v1, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 329
    iget-wide v3, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->serverTimestamp:J

    invoke-interface {v0, v2, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 330
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 331
    iget-wide v1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/protocol/databases/ReceivedMessage;->HOOK_BIT_INSERTED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->commitHookBits:J

    .line 332
    iget-object v1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v1, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 333
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 307
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 333
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v2
.end method

.method public wasCommitted()V
    .locals 5

    .line 417
    iget-wide v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/protocol/databases/ReceivedMessage;->HOOK_BIT_INSERTED:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 418
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->protocolReceivedMessageProcessorDelegate:Lio/olvid/engine/protocol/datatypes/ProtocolReceivedMessageProcessorDelegate;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->protocolReceivedMessageProcessorDelegate:Lio/olvid/engine/protocol/datatypes/ProtocolReceivedMessageProcessorDelegate;

    iget-object v1, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-interface {v0, v1}, Lio/olvid/engine/protocol/datatypes/ProtocolReceivedMessageProcessorDelegate;->processReceivedMessage(Lio/olvid/engine/datatypes/UID;)V

    .line 422
    :cond_0
    iput-wide v2, p0, Lio/olvid/engine/protocol/databases/ReceivedMessage;->commitHookBits:J

    return-void
.end method
