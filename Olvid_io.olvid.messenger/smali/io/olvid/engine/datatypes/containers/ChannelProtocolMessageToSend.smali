.class public Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;
.super Ljava/lang/Object;
.source "ChannelProtocolMessageToSend.java"

# interfaces
.implements Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;


# instance fields
.field private final encodedElements:Lio/olvid/engine/encoder/Encoded;

.field private final partOfFullRatchetProtocolOfTheSendSeed:Z

.field private final sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;Lio/olvid/engine/encoder/Encoded;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    .line 13
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    .line 14
    iput-boolean p3, p0, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;->partOfFullRatchetProtocolOfTheSendSeed:Z

    return-void
.end method


# virtual methods
.method public getEncodedElements()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    return-object v0
.end method

.method public isPartOfFullRatchetProtocolOfTheSendSeed()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;->partOfFullRatchetProtocolOfTheSendSeed:Z

    return v0
.end method
