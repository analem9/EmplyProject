.class Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep$1;
.super Ljava/lang/Object;
.source "GroupManagementProtocol.java"

# interfaces
.implements Lio/olvid/engine/datatypes/GroupMembersChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;->executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;

.field final synthetic val$protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;


# direct methods
.method constructor <init>(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep$1;->this$0:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;

    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep$1;->val$protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep$1;->this$0:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;->access$800(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v0

    .line 805
    new-instance v1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GroupMembersOrDetailsChangedTriggerMessage;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep$1;->this$0:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;->access$900(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;)Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;->access$700(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GroupMembersOrDetailsChangedTriggerMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;)V

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GroupMembersOrDetailsChangedTriggerMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v0

    .line 806
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep$1;->val$protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v1, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep$1;->val$protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v2, v2, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep$1;->this$0:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    return-void
.end method
