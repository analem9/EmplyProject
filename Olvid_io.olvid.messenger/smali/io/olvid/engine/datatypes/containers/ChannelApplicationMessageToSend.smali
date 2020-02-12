.class public Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;
.super Ljava/lang/Object;
.source "ChannelApplicationMessageToSend.java"

# interfaces
.implements Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;
    }
.end annotation


# instance fields
.field private final attachments:[Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;

.field private final hasUserContent:Z

.field private final messagePayload:[B

.field private final sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;


# direct methods
.method public constructor <init>([Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[B[Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1, p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfosForMultipleIdentities([Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p1

    .line 15
    array-length p2, p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 19
    aget-object p1, p1, p2

    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    .line 20
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;->messagePayload:[B

    .line 21
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;->attachments:[Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;

    .line 22
    iput-boolean p5, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;->hasUserContent:Z

    return-void

    :cond_0
    const-string p1, "Error: trying to create a ChannelApplicationMessageToSend for identities on different servers"

    .line 16
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 17
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method


# virtual methods
.method public getAttachments()[Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;->attachments:[Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;

    return-object v0
.end method

.method public getMessagePayload()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;->messagePayload:[B

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    return-object v0
.end method

.method public hasUserContent()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;->hasUserContent:Z

    return v0
.end method
