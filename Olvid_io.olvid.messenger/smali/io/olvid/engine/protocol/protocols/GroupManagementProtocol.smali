.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyMembersChangedStep;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GroupMembersOrDetailsChangedTriggerMessage;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$PropagateGroupCreationMessage;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;,
        Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;
    }
.end annotation


# static fields
.field private static final ADD_GROUP_MEMBERS_MESSAGE_ID:I = 0x4

.field private static final DISBAND_GROUP_MESSAGE_ID:I = 0x9

.field static final FINAL_STATE_ID:I = 0x1

.field private static final GROUP_MEMBERS_CHANGED_TRIGGER_MESSAGE_ID:I = 0x2

.field private static final INITIATE_GROUP_CREATION_MESSAGE_ID:I = 0x0

.field private static final KICK_FROM_GROUP_MESSAGE_ID:I = 0x6

.field private static final LEAVE_GROUP_MESSAGE_ID:I = 0xa

.field private static final NEW_MEMBERS_MESSAGE_ID:I = 0x3

.field private static final NOTIFY_GROUP_LEFT_MESSAGE_ID:I = 0x7

.field static final OWNERSHIP_TRANSFER_STATE_ID:I = 0x2

.field private static final PROPAGATE_GROUP_CREATION_MESSAGE_ID:I = 0x1

.field private static final REINVITE_PENDING_MEMBER_MESSAGE_ID:I = 0x8

.field private static final RELINQUISH_OWNERSHIP_MESSAGE_ID:I = 0x46

.field private static final REMOVE_GROUP_MEMBERS_MESSAGE_ID:I = 0x5

.field private static final TAKE_OWNERSHIP_MESSAGE_ID:I = 0x50


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-direct/range {p0 .. p7}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;->eraseReceivedMessagesAfterReachingAFinalState:Z

    return-void
.end method


# virtual methods
.method public getFinalStateIds()[I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    return-object v1
.end method

.method protected getMessageClass(I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 133
    :pswitch_0
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;

    return-object p1

    .line 131
    :pswitch_1
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;

    return-object p1

    .line 129
    :pswitch_2
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;

    return-object p1

    .line 135
    :pswitch_3
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;

    return-object p1

    .line 127
    :pswitch_4
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;

    return-object p1

    .line 125
    :pswitch_5
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

    return-object p1

    .line 123
    :pswitch_6
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;

    return-object p1

    .line 121
    :pswitch_7
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;

    return-object p1

    .line 119
    :pswitch_8
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GroupMembersOrDetailsChangedTriggerMessage;

    return-object p1

    .line 117
    :pswitch_9
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$PropagateGroupCreationMessage;

    return-object p1

    .line 115
    :pswitch_a
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getPossibleStepClasses(I)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Class;

    return-object p1

    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Class;

    .line 568
    const-class v1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-class v1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyMembersChangedStep;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-class v1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-class v1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersStep;

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-class v1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-class v1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-class v1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;

    aput-object v1, p1, v0

    const/4 v0, 0x7

    const-class v1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;

    aput-object v1, p1, v0

    const/16 v0, 0x8

    const-class v1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;

    aput-object v1, p1, v0

    const/16 v0, 0x9

    const-class v1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;

    aput-object v1, p1, v0

    return-object p1
.end method

.method public getProtocolId()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method protected getStateClass(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;

    return-object p1

    .line 57
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    return-object p1
.end method
