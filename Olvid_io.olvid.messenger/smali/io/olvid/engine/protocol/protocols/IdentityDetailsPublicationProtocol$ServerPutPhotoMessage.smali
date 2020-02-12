.class public Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ServerPutPhotoMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "IdentityDetailsPublicationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerPutPhotoMessage"
.end annotation


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 200
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getEncodedResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$1;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ServerPutPhotoMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    return-void
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
