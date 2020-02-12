.class public Lio/olvid/engine/datatypes/containers/ChannelServerResponseMessageToSend;
.super Ljava/lang/Object;
.source "ChannelServerResponseMessageToSend.java"

# interfaces
.implements Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;


# instance fields
.field private final encodedElements:Lio/olvid/engine/encoder/Encoded;

.field private final encodedServerResponse:Lio/olvid/engine/encoder/Encoded;

.field private final sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/encoder/Encoded;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ChannelServerResponseMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    .line 14
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/ChannelServerResponseMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    .line 15
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/ChannelServerResponseMessageToSend;->encodedServerResponse:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method


# virtual methods
.method public getEncodedElements()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelServerResponseMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getEncodedServerResponse()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelServerResponseMessageToSend;->encodedServerResponse:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelServerResponseMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    return-object v0
.end method
