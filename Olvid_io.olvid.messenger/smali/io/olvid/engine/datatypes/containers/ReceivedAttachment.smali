.class public Lio/olvid/engine/datatypes/containers/ReceivedAttachment;
.super Ljava/lang/Object;
.source "ReceivedAttachment.java"


# instance fields
.field private final attachmentNumber:I

.field private final downloadRequested:Z

.field private final expectedLength:J

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final metadata:[B

.field private final receivedLength:J

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/UID;I[BLjava/lang/String;JJZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 18
    iput p2, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->attachmentNumber:I

    .line 19
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->metadata:[B

    .line 20
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->url:Ljava/lang/String;

    .line 21
    iput-wide p5, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->expectedLength:J

    .line 22
    iput-wide p7, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->receivedLength:J

    .line 23
    iput-boolean p9, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->downloadRequested:Z

    return-void
.end method


# virtual methods
.method public getAttachmentNumber()I
    .locals 1

    .line 31
    iget v0, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->attachmentNumber:I

    return v0
.end method

.method public getExpectedLength()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->expectedLength:J

    return-wide v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getMetadata()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->metadata:[B

    return-object v0
.end method

.method public getReceivedLength()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->receivedLength:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloadRequested()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;->downloadRequested:Z

    return v0
.end method
