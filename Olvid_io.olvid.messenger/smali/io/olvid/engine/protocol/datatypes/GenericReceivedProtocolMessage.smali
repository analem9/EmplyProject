.class public Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;
.super Ljava/lang/Object;
.source "GenericReceivedProtocolMessage.java"


# instance fields
.field private final associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final encodedResponse:Lio/olvid/engine/encoder/Encoded;

.field private final inputs:[Lio/olvid/engine/encoder/Encoded;

.field private final protocolId:I

.field private final protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

.field private final protocolMessageId:I

.field private final receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

.field private final serverTimestamp:J

.field private final toIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final userDialogUuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/encoder/Encoded;Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/UID;IILio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/datatypes/Identity;J)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 70
    iput-object p2, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->inputs:[Lio/olvid/engine/encoder/Encoded;

    .line 71
    iput-object p3, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->userDialogUuid:Ljava/util/UUID;

    .line 72
    iput-object p4, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    .line 73
    iput-object p5, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    .line 74
    iput p6, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->protocolMessageId:I

    .line 75
    iput p7, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->protocolId:I

    .line 76
    iput-object p8, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    .line 77
    iput-object p9, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 78
    iput-wide p10, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->serverTimestamp:J

    return-void
.end method

.method public static of(Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;
    .locals 16

    const/4 v0, 0x0

    .line 109
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    .line 110
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 113
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v2

    long-to-int v11, v2

    const/4 v2, 0x1

    .line 114
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v9

    const/4 v2, 0x2

    .line 115
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v2

    long-to-int v10, v2

    const/4 v2, 0x3

    .line 116
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    .line 117
    new-instance v1, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;

    .line 118
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    .line 120
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->getUserDialogUuid()Ljava/util/UUID;

    move-result-object v7

    .line 121
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->getUserDialogResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object v8

    .line 125
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v12

    const-wide/16 v14, 0x0

    move-object v4, v1

    move-object/from16 v13, p1

    invoke-direct/range {v4 .. v15}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;-><init>(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/encoder/Encoded;Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/UID;IILio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/datatypes/Identity;J)V
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static of(Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;
    .locals 16

    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    .line 84
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 87
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v2

    long-to-int v11, v2

    const/4 v2, 0x1

    .line 88
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v9

    const/4 v2, 0x2

    .line 89
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v2

    long-to-int v10, v2

    const/4 v2, 0x3

    .line 90
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    .line 91
    new-instance v1, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;

    .line 92
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 99
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v12

    .line 101
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->getServerTimestamp()J

    move-result-wide v14

    move-object v4, v1

    move-object/from16 v13, p1

    invoke-direct/range {v4 .. v15}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;-><init>(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/encoder/Encoded;Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/UID;IILio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/datatypes/Identity;J)V
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static of(Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;
    .locals 16

    const/4 v0, 0x0

    .line 135
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    .line 136
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 139
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v2

    long-to-int v11, v2

    const/4 v2, 0x1

    .line 140
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v9

    const/4 v2, 0x2

    .line 141
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v2

    long-to-int v10, v2

    const/4 v2, 0x3

    .line 142
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    .line 143
    new-instance v1, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;

    .line 144
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    const/4 v7, 0x0

    .line 147
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->getServerResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object v8

    .line 151
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v12

    const-wide/16 v14, 0x0

    move-object v4, v1

    move-object/from16 v13, p1

    invoke-direct/range {v4 .. v15}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;-><init>(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/encoder/Encoded;Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/UID;IILio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/datatypes/Identity;J)V
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public getAssociatedOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getEncodedResponse()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->inputs:[Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getProtocolId()I
    .locals 1

    .line 48
    iget v0, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->protocolId:I

    return v0
.end method

.method public getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    .line 44
    iget v0, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->protocolMessageId:I

    return v0
.end method

.method public getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    return-object v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->serverTimestamp:J

    return-wide v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getUserDialogUuid()Ljava/util/UUID;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->userDialogUuid:Ljava/util/UUID;

    return-object v0
.end method
