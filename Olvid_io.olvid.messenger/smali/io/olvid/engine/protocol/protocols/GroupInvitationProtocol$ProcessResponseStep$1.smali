.class Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;
.super Ljava/lang/Object;
.source "GroupInvitationProtocol.java"

# interfaces
.implements Lio/olvid/engine/datatypes/GroupMembersChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

.field final synthetic this$0:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;

.field final synthetic val$groupOwnerAndUid:[B

.field final synthetic val$protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;


# direct methods
.method constructor <init>(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1037
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->this$0:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;

    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->val$protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->val$groupOwnerAndUid:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iget-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->val$protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object p1, p1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->val$protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object p2, p2, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object p3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->this$0:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;

    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p3

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->val$groupOwnerAndUid:[B

    invoke-interface {p1, p2, p3, v0}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroupInformation(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1041
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 1042
    new-instance v1, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->this$0:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;

    .line 1043
    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 1048
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GroupMembersOrDetailsChangedTriggerMessage;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    invoke-direct {v0, v1, v2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GroupMembersOrDetailsChangedTriggerMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;)V

    invoke-virtual {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GroupMembersOrDetailsChangedTriggerMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v0

    .line 1049
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->val$protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v1, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->val$protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v2, v2, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;->this$0:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    return-void
.end method
