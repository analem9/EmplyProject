.class public Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessPropagatedContactDeletionStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ObliviousChannelManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessPropagatedContactDeletionStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$PropagateContactDeletionMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$PropagateContactDeletionMessage;Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelWithOwnedDeviceInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 287
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessPropagatedContactDeletionStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 288
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessPropagatedContactDeletionStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$PropagateContactDeletionMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessPropagatedContactDeletionStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 296
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessPropagatedContactDeletionStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessPropagatedContactDeletionStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$PropagateContactDeletionMessage;

    iget-object v4, v4, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$PropagateContactDeletionMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->deleteObliviousChannelsWithContact(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    .line 301
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessPropagatedContactDeletionStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$PropagateContactDeletionMessage;

    iget-object v2, v2, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$PropagateContactDeletionMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessPropagatedContactDeletionStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->deleteContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Z)V

    .line 303
    new-instance v0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$FinalState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$FinalState;-><init>()V

    return-object v0
.end method
