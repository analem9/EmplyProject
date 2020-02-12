.class public Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;
.super Ljava/lang/Object;
.source "ChannelApplicationMessageToSend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attachment"
.end annotation


# instance fields
.field private final attachmentLength:J

.field private final deleteAfterSend:Z

.field private final metadata:[B

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJ[B)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;->url:Ljava/lang/String;

    .line 56
    iput-boolean p2, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;->deleteAfterSend:Z

    .line 57
    iput-wide p3, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;->attachmentLength:J

    .line 58
    iput-object p5, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;->metadata:[B

    return-void
.end method


# virtual methods
.method public getAttachmentLength()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;->attachmentLength:J

    return-wide v0
.end method

.method public getMetadata()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;->metadata:[B

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleteAfterSend()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;->deleteAfterSend:Z

    return v0
.end method
