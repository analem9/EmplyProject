.class public Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupInvitationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendInvitationStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 460
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 461
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 462
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;)Ljava/util/HashSet;

    move-result-object v1

    new-instance v2, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "Error: the groupMemberIdentitiesAndSerializedDetails contains the ownedIdentity"

    .line 470
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 474
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;->access$100(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Error: the groupInformation contains a different Identity than ownedIdentity"

    .line 475
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 479
    :cond_1
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;)Ljava/util/HashSet;

    move-result-object v1

    new-instance v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;->access$200(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "Error: the groupMemberIdentitiesAndSerializedDetails does not contain the contactIdentity"

    .line 480
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 486
    :cond_2
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;->access$200(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 487
    new-instance v2, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;->access$100(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;)Ljava/util/HashSet;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 488
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 491
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationSentState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationSentState;-><init>()V

    return-object v0
.end method
