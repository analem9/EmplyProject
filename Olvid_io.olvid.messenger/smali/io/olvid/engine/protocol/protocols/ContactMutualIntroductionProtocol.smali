.class public Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
.source "ContactMutualIntroductionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedNotificationAndAddTrustStep;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$AckMessage;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationMessage;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$TrustLevelIncreasedMessage;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MutualTrustEstablishedState;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationRejectedState;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;,
        Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ContactsIntroducedState;
    }
.end annotation


# static fields
.field private static final ACCEPT_TYPE_ALREADY_TRUSTED:I = 0x0

.field private static final ACCEPT_TYPE_AUTO:I = 0x1

.field private static final ACCEPT_TYPE_MANUAL:I = 0x2

.field private static final ACK_MESSAGE_ID:I = 0x6

.field private static final CONTACTS_INTRODUCED_STATE_ID:I = 0x1

.field private static final DIALOG_ACCEPT_MEDIATOR_INVITE_MESSAGE_ID:I = 0x2

.field private static final INITIAL_MESSAGE_ID:I = 0x0

.field private static final INVITATION_ACCEPTED_STATE_ID:I = 0x3

.field private static final INVITATION_RECEIVED_STATE_ID:I = 0x2

.field private static final INVITATION_REJECTED_STATE_ID:I = 0x4

.field private static final MEDIATOR_INVITATION_MESSAGE_ID:I = 0x1

.field private static final MUTUAL_TRUST_ESTABLISHED_STATE_ID:I = 0x6

.field private static final NOTIFY_CONTACT_OF_ACCEPTED_INVITATION_MESSAGE_ID:I = 0x4

.field private static final PROPAGATE_CONFIRMATION_MESSAGE_ID:I = 0x3

.field private static final PROPAGATE_NOTIFICATION_MESSAGE_ID:I = 0x5

.field private static final SIGNATURE_CHALLENGE_PREFIX:[B

.field private static final TRUST_LEVEL_INCREASED_MESSAGE_ID:I = 0x7

.field private static final WAITING_FOR_ACK_STATE_ID:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mutualIntroduction"

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->SIGNATURE_CHALLENGE_PREFIX:[B

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-direct/range {p0 .. p7}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 31
    sget-object v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->SIGNATURE_CHALLENGE_PREFIX:[B

    return-object v0
.end method


# virtual methods
.method public getFinalStateIds()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 61
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x6
    .end array-data
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

    .line 306
    :pswitch_0
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$TrustLevelIncreasedMessage;

    return-object p1

    .line 304
    :pswitch_1
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$AckMessage;

    return-object p1

    .line 302
    :pswitch_2
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationMessage;

    return-object p1

    .line 300
    :pswitch_3
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;

    return-object p1

    .line 298
    :pswitch_4
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;

    return-object p1

    .line 296
    :pswitch_5
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;

    return-object p1

    .line 294
    :pswitch_6
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    return-object p1

    .line 292
    :pswitch_7
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v3, :cond_0

    new-array p1, v2, [Ljava/lang/Class;

    return-object p1

    :cond_0
    new-array p1, v1, [Ljava/lang/Class;

    .line 593
    const-class v1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;

    aput-object v1, p1, v2

    const-class v1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedNotificationAndAddTrustStep;

    aput-object v1, p1, v0

    return-object p1

    :cond_1
    new-array p1, v3, [Ljava/lang/Class;

    .line 591
    const-class v3, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;

    aput-object v3, p1, v2

    const-class v2, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;

    aput-object v2, p1, v0

    const-class v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;

    aput-object v0, p1, v1

    return-object p1

    :cond_2
    new-array p1, v0, [Ljava/lang/Class;

    .line 595
    const-class v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;

    aput-object v0, p1, v2

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Class;

    .line 589
    const-class v1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$IntroduceContactsStep;

    aput-object v1, p1, v2

    const-class v1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;

    aput-object v1, p1, v0

    return-object p1
.end method

.method public getProtocolId()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getStateClass(I)Ljava/lang/Class;
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

    .line 80
    :pswitch_0
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MutualTrustEstablishedState;

    return-object p1

    .line 78
    :pswitch_1
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;

    return-object p1

    .line 76
    :pswitch_2
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationRejectedState;

    return-object p1

    .line 74
    :pswitch_3
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    return-object p1

    .line 72
    :pswitch_4
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    return-object p1

    .line 70
    :pswitch_5
    const-class p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ContactsIntroducedState;

    return-object p1

    .line 68
    :pswitch_6
    const-class p1, Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
