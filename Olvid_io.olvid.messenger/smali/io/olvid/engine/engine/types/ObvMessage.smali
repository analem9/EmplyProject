.class public Lio/olvid/engine/engine/types/ObvMessage;
.super Ljava/lang/Object;
.source "ObvMessage.java"


# instance fields
.field private final attachments:[Lio/olvid/engine/engine/types/ObvAttachment;

.field private final bytesFromIdentity:[B

.field private final bytesToIdentity:[B

.field private final messagePayload:[B

.field private final serverTimestamp:J

.field private final uid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method public constructor <init>(Lio/olvid/engine/metamanager/NetworkFetchDelegate;Lio/olvid/engine/datatypes/UID;)V
    .locals 19

    move-object/from16 v0, p0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-interface/range {p1 .. p2}, Lio/olvid/engine/metamanager/NetworkFetchDelegate;->getMessage(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;

    move-result-object v1

    move-object/from16 v2, p2

    .line 43
    iput-object v2, v0, Lio/olvid/engine/engine/types/ObvMessage;->uid:Lio/olvid/engine/datatypes/UID;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 46
    iput-wide v1, v0, Lio/olvid/engine/engine/types/ObvMessage;->serverTimestamp:J

    const/4 v1, 0x0

    .line 47
    iput-object v1, v0, Lio/olvid/engine/engine/types/ObvMessage;->messagePayload:[B

    .line 48
    iput-object v1, v0, Lio/olvid/engine/engine/types/ObvMessage;->bytesFromIdentity:[B

    .line 49
    iput-object v1, v0, Lio/olvid/engine/engine/types/ObvMessage;->bytesToIdentity:[B

    new-array v1, v3, [Lio/olvid/engine/engine/types/ObvAttachment;

    .line 50
    iput-object v1, v0, Lio/olvid/engine/engine/types/ObvMessage;->attachments:[Lio/olvid/engine/engine/types/ObvAttachment;

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->getMessagePayload()[B

    move-result-object v4

    iput-object v4, v0, Lio/olvid/engine/engine/types/ObvMessage;->messagePayload:[B

    .line 53
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->getServerTimestamp()J

    move-result-wide v4

    iput-wide v4, v0, Lio/olvid/engine/engine/types/ObvMessage;->serverTimestamp:J

    .line 54
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->getFromIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    iput-object v4, v0, Lio/olvid/engine/engine/types/ObvMessage;->bytesFromIdentity:[B

    .line 55
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    iput-object v4, v0, Lio/olvid/engine/engine/types/ObvMessage;->bytesToIdentity:[B

    .line 58
    invoke-interface/range {p1 .. p2}, Lio/olvid/engine/metamanager/NetworkFetchDelegate;->getMessageAttachments(Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/datatypes/containers/ReceivedAttachment;

    move-result-object v2

    .line 60
    array-length v4, v2

    new-array v4, v4, [Lio/olvid/engine/engine/types/ObvAttachment;

    iput-object v4, v0, Lio/olvid/engine/engine/types/ObvMessage;->attachments:[Lio/olvid/engine/engine/types/ObvAttachment;

    .line 61
    :goto_0
    iget-object v4, v0, Lio/olvid/engine/engine/types/ObvMessage;->attachments:[Lio/olvid/engine/engine/types/ObvAttachment;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 62
    aget-object v5, v2, v3

    .line 63
    new-instance v18, Lio/olvid/engine/engine/types/ObvAttachment;

    .line 64
    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getMetadata()[B

    move-result-object v7

    .line 65
    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 66
    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->isDownloadRequested()Z

    move-result v9

    .line 67
    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v10

    .line 68
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->getServerTimestamp()J

    move-result-wide v11

    .line 69
    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getAttachmentNumber()I

    move-result v13

    .line 70
    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getExpectedLength()J

    move-result-wide v14

    .line 71
    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getReceivedLength()J

    move-result-wide v16

    move-object/from16 v6, v18

    invoke-direct/range {v6 .. v17}, Lio/olvid/engine/engine/types/ObvAttachment;-><init>([BLjava/lang/String;ZLio/olvid/engine/datatypes/UID;JIJJ)V

    aput-object v18, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getAttachments()[Lio/olvid/engine/engine/types/ObvAttachment;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvMessage;->attachments:[Lio/olvid/engine/engine/types/ObvAttachment;

    return-object v0
.end method

.method public getBytesFromIdentity()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvMessage;->bytesFromIdentity:[B

    return-object v0
.end method

.method public getBytesToIdentity()[B
    .locals 1

    .line 34
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvMessage;->bytesToIdentity:[B

    return-object v0
.end method

.method public getIdentifier()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getMessagePayload()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvMessage;->messagePayload:[B

    return-object v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lio/olvid/engine/engine/types/ObvMessage;->serverTimestamp:J

    return-wide v0
.end method
