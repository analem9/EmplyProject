.class public Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;
.super Ljava/lang/Object;
.source "ChannelDialogResponseMessageToSend.java"

# interfaces
.implements Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;


# instance fields
.field private final encodedElements:Lio/olvid/engine/encoder/Encoded;

.field private final encodedUserDialogResponse:Lio/olvid/engine/encoder/Encoded;

.field private final sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/encoder/Encoded;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;->uuid:Ljava/util/UUID;

    .line 17
    invoke-static {p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    .line 18
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;->encodedUserDialogResponse:Lio/olvid/engine/encoder/Encoded;

    .line 19
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method


# virtual methods
.method public getEncodedElements()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getEncodedUserDialogResponse()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;->encodedUserDialogResponse:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;->uuid:Ljava/util/UUID;

    return-object v0
.end method
