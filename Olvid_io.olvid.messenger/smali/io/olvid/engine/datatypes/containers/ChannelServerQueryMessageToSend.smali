.class public Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;
.super Ljava/lang/Object;
.source "ChannelServerQueryMessageToSend.java"

# interfaces
.implements Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;


# instance fields
.field private final encodedElements:Lio/olvid/engine/encoder/Encoded;

.field private final sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;Lio/olvid/engine/encoder/Encoded;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1, p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createServerQueryChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    .line 13
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method


# virtual methods
.method public getEncodedElements()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    return-object v0
.end method
