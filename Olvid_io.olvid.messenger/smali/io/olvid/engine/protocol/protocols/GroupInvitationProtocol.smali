.class public Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
.source "GroupInvitationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseReceivedState;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationSentState;,
        Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;
    }
.end annotation


# static fields
.field private static final ACCEPT_INVITATION_MESSAGE_ID:I = 0x3

.field private static final DIALOG_ACCEPT_GROUP_INVITATION_MESSAGE_ID:I = 0x2

.field private static final GROUP_INVITATION_MESSAGE_ID:I = 0x1

.field private static final INITIAL_MESSAGE_ID:I = 0x0

.field private static final INVITATION_RECEIVED_STATE_ID:I = 0x2

.field private static final INVITATION_SENT_STATE_ID:I = 0x1

.field private static final PROPAGATE_INVITATION_RESPONSE_MESSAGE_ID:I = 0x4

.field private static final RESPONSE_RECEIVED_STATE_ID:I = 0x4

.field private static final RESPONSE_SENT_STATE_ID:I = 0x3

.field private static final TRUST_LEVEL_INCREASED_MESSAGE_ID:I = 0x5


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-direct/range {p0 .. p7}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method


# virtual methods
.method public getFinalStateIds()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 57
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x4
    .end array-data
.end method

.method protected getMessageClass(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 215
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;

    return-object p1

    .line 213
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;

    return-object p1

    .line 211
    :cond_2
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;

    return-object p1

    .line 209
    :cond_3
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;

    return-object p1

    .line 207
    :cond_4
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    return-object p1

    .line 205
    :cond_5
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;

    return-object p1
.end method

.method protected getPossibleStepClasses(I)[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    new-array p1, v2, [Ljava/lang/Class;

    return-object p1

    :cond_0
    new-array p1, v1, [Ljava/lang/Class;

    .line 447
    const-class v1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;

    aput-object v1, p1, v2

    const-class v1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;

    aput-object v1, p1, v0

    const-class v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;

    aput-object v0, p1, v3

    return-object p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Class;

    .line 445
    const-class v1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$SendInvitationStep;

    aput-object v1, p1, v2

    const-class v1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;

    aput-object v1, p1, v0

    const-class v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;

    aput-object v0, p1, v3

    return-object p1
.end method

.method public getProtocolId()I
    .locals 1

    const/16 v0, 0x8

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

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 72
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseReceivedState;

    return-object p1

    .line 70
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;

    return-object p1

    .line 68
    :cond_2
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    return-object p1

    .line 66
    :cond_3
    const-class p1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationSentState;

    return-object p1

    .line 64
    :cond_4
    const-class p1, Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    return-object p1
.end method
