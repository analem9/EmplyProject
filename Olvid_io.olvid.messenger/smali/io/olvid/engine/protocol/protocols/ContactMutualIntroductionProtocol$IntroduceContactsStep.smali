.class public Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ContactMutualIntroductionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntroduceContactsStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 610
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 611
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 612
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;

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

    .line 617
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 621
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getSerializedPublishedDetailsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object v1

    .line 622
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;->access$100(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 623
    new-instance v3, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 624
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 629
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;->access$100(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getSerializedPublishedDetailsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object v1

    .line 630
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 631
    new-instance v3, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;->access$100(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 632
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 635
    new-instance v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ContactsIntroducedState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ContactsIntroducedState;-><init>()V

    return-object v0
.end method
