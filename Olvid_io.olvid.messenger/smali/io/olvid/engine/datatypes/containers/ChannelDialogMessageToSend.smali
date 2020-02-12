.class public Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;
.super Ljava/lang/Object;
.source "ChannelDialogMessageToSend.java"

# interfaces
.implements Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;


# instance fields
.field private final encodedElements:Lio/olvid/engine/encoder/Encoded;

.field private final sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Lio/olvid/engine/encoder/Encoded;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;->uuid:Ljava/util/UUID;

    .line 16
    invoke-static {p2, p3, p1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    .line 17
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method


# virtual methods
.method public getEncodedElements()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;->uuid:Ljava/util/UUID;

    return-object v0
.end method
