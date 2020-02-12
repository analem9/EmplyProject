.class public Lio/olvid/engine/engine/types/ObvAttachment;
.super Ljava/lang/Object;
.source "ObvAttachment.java"


# instance fields
.field private final downloadRequested:Z

.field private final expectedLength:J

.field private final messageServerTimestamp:J

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final metadata:[B

.field private final number:I

.field private final receivedLength:J

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;ZLio/olvid/engine/datatypes/UID;JIJJ)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/olvid/engine/engine/types/ObvAttachment;->metadata:[B

    .line 62
    iput-object p2, p0, Lio/olvid/engine/engine/types/ObvAttachment;->url:Ljava/lang/String;

    .line 63
    iput-boolean p3, p0, Lio/olvid/engine/engine/types/ObvAttachment;->downloadRequested:Z

    .line 64
    iput-object p4, p0, Lio/olvid/engine/engine/types/ObvAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 65
    iput-wide p5, p0, Lio/olvid/engine/engine/types/ObvAttachment;->messageServerTimestamp:J

    .line 66
    iput p7, p0, Lio/olvid/engine/engine/types/ObvAttachment;->number:I

    .line 67
    iput-wide p8, p0, Lio/olvid/engine/engine/types/ObvAttachment;->expectedLength:J

    .line 68
    iput-wide p10, p0, Lio/olvid/engine/engine/types/ObvAttachment;->receivedLength:J

    return-void
.end method

.method public static create(Lio/olvid/engine/metamanager/NetworkFetchDelegate;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/engine/types/ObvAttachment;
    .locals 13

    .line 73
    invoke-interface {p0, p1, p2}, Lio/olvid/engine/metamanager/NetworkFetchDelegate;->getAttachment(Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/containers/ReceivedAttachment;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 77
    :cond_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/olvid/engine/metamanager/NetworkFetchDelegate;->getMessage(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p2

    .line 81
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p2

    .line 86
    :cond_2
    new-instance p2, Lio/olvid/engine/engine/types/ObvAttachment;

    .line 87
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getMetadata()[B

    move-result-object v2

    .line 88
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->isDownloadRequested()Z

    move-result v4

    .line 90
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v5

    .line 91
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->getServerTimestamp()J

    move-result-wide v6

    .line 92
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getAttachmentNumber()I

    move-result v8

    .line 93
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getExpectedLength()J

    move-result-wide v9

    .line 94
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->getReceivedLength()J

    move-result-wide v11

    move-object v1, p2

    invoke-direct/range {v1 .. v12}, Lio/olvid/engine/engine/types/ObvAttachment;-><init>([BLjava/lang/String;ZLio/olvid/engine/datatypes/UID;JIJJ)V

    return-object p2
.end method


# virtual methods
.method public getExpectedLength()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lio/olvid/engine/engine/types/ObvAttachment;->expectedLength:J

    return-wide v0
.end method

.method public getMessageIdentifier()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageServerTimestamp()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lio/olvid/engine/engine/types/ObvAttachment;->messageServerTimestamp:J

    return-wide v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getMetadata()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvAttachment;->metadata:[B

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 45
    iget v0, p0, Lio/olvid/engine/engine/types/ObvAttachment;->number:I

    return v0
.end method

.method public getReceivedLength()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lio/olvid/engine/engine/types/ObvAttachment;->receivedLength:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvAttachment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloadRequested()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lio/olvid/engine/engine/types/ObvAttachment;->downloadRequested:Z

    return v0
.end method
