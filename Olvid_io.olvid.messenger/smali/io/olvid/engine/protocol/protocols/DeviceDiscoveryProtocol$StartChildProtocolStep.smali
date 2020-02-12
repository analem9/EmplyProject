.class public Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "DeviceDiscoveryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartChildProtocolStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 237
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 238
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v7

    .line 245
    iget-object v0, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v1, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trying to run a DeviceDiscoveryProtocol with an unknown contactIdentity"

    .line 246
    invoke-static {v0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 247
    new-instance v0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$CancelledState;-><init>()V

    return-object v0

    .line 250
    :cond_0
    new-instance v8, Lio/olvid/engine/datatypes/UID;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v0

    invoke-direct {v8, v0}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 254
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    const/4 v3, 0x2

    .line 256
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    .line 257
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->getProtocolId()I

    move-result v5

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, v8

    .line 251
    invoke-static/range {v0 .. v6}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;ILio/olvid/engine/datatypes/UID;II)Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;

    .line 260
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    .line 261
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v8, v3}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 266
    new-instance v1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;)V

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v0

    .line 267
    iget-object v1, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v2, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 269
    new-instance v0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$WaitingForChildProtocolState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$WaitingForChildProtocolState;-><init>(Lio/olvid/engine/datatypes/Identity;)V

    return-object v0
.end method
