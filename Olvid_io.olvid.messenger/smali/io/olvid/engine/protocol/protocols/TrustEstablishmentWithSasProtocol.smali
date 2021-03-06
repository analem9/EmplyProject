.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
.source "TrustEstablishmentWithSasProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$NotifiedMutualTrustEstablishedStep;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ShowSasDialogStep;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ShowSasDialogAndSendDecommitmentStep;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendCommitmentStep;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$MutualTrustConfirmationMessage;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendDecommitmentMessage;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendCommitmentMessage;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$InitialMessage;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$MutualTrustConfirmedState;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ContactIdentityTrustedState;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForDecommitmentState;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CancelledState;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;,
        Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;
    }
.end annotation


# static fields
.field static final BOB_DIALOG_INVITATION_CONFIRMATION_MESSAGE_ID:I = 0x5

.field static final CANCELLED_STATE_ID:I = 0x3

.field static final CONTACT_IDENTITY_TRUSTED_STATE_ID:I = 0x6

.field static final DIALOG_FOR_SAS_EXCHANGE_MESSAGE_ID:I = 0xa

.field static final INITIAL_MESSAGE_ID:I = 0x0

.field static final MUTUAL_TRUST_CONFIRMATION_MESSAGE_ID:I = 0xd

.field static final MUTUAL_TRUST_CONFIRMED_STATE_ID:I = 0x7

.field static final PROPAGATE_COMMITMENT_TO_BOB_DEVICES_MESSAGE_ID:I = 0x4

.field static final PROPAGATE_CONFIRMATION_TO_BOB_DEVICES_MESSAGE_ID:I = 0x6

.field static final PROPAGATE_ENTERED_SAS_TO_OTHER_DEVICES_MESSAGE_ID:I = 0xc

.field static final PROPAGATE_INVITATION_TO_ALICE_DEVICES_MESSAGE_ID:I = 0x2

.field static final SEND_BOB_SEED_MESSAGE_ID:I = 0x8

.field static final SEND_COMMITMENT_MESSAGE_ID:I = 0x1

.field static final SEND_DECOMMITMENT_MESSAGE_ID:I = 0x9

.field static final WAITING_FOR_CONFIRMATION_STATE_ID:I = 0x2

.field static final WAITING_FOR_DECOMMITMENT_STATE_ID:I = 0x4

.field static final WAITING_FOR_SEED_STATE_ID:I = 0x1

.field static final WAITING_FOR_USER_SAS_STATE_ID:I = 0x5


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-direct/range {p0 .. p7}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method


# virtual methods
.method public getFinalStateIds()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 65
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3
        0x7
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

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 388
    :pswitch_1
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$MutualTrustConfirmationMessage;

    return-object p1

    .line 386
    :pswitch_2
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;

    return-object p1

    .line 384
    :pswitch_3
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;

    return-object p1

    .line 382
    :pswitch_4
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendDecommitmentMessage;

    return-object p1

    .line 380
    :pswitch_5
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;

    return-object p1

    .line 378
    :pswitch_6
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;

    return-object p1

    .line 376
    :pswitch_7
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;

    return-object p1

    .line 374
    :pswitch_8
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;

    return-object p1

    .line 372
    :pswitch_9
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;

    return-object p1

    .line 370
    :pswitch_a
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendCommitmentMessage;

    return-object p1

    .line 368
    :pswitch_b
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$InitialMessage;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getPossibleStepClasses(I)[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    new-array p1, v2, [Ljava/lang/Class;

    return-object p1

    :cond_0
    new-array p1, v3, [Ljava/lang/Class;

    .line 815
    const-class v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$NotifiedMutualTrustEstablishedStep;

    aput-object v0, p1, v2

    return-object p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Class;

    .line 810
    const-class v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;

    aput-object v0, p1, v2

    const-class v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;

    aput-object v0, p1, v3

    return-object p1

    :cond_2
    new-array p1, v3, [Ljava/lang/Class;

    .line 808
    const-class v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ShowSasDialogStep;

    aput-object v0, p1, v2

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Class;

    .line 801
    const-class v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;

    aput-object v0, p1, v2

    const-class v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;

    aput-object v0, p1, v3

    return-object p1

    :cond_4
    new-array p1, v3, [Ljava/lang/Class;

    .line 806
    const-class v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ShowSasDialogAndSendDecommitmentStep;

    aput-object v0, p1, v2

    return-object p1

    :cond_5
    new-array p1, v0, [Ljava/lang/Class;

    .line 794
    const-class v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendCommitmentStep;

    aput-object v0, p1, v2

    const-class v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;

    aput-object v0, p1, v3

    const-class v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;

    aput-object v0, p1, v1

    const/4 v0, 0x3

    const-class v1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;

    aput-object v1, p1, v0

    return-object p1
.end method

.method public getProtocolId()I
    .locals 1

    const/16 v0, 0xb

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

    .line 86
    :pswitch_0
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$MutualTrustConfirmedState;

    return-object p1

    .line 84
    :pswitch_1
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ContactIdentityTrustedState;

    return-object p1

    .line 82
    :pswitch_2
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    return-object p1

    .line 80
    :pswitch_3
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForDecommitmentState;

    return-object p1

    .line 78
    :pswitch_4
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CancelledState;

    return-object p1

    .line 76
    :pswitch_5
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    return-object p1

    .line 74
    :pswitch_6
    const-class p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;

    return-object p1

    .line 72
    :pswitch_7
    const-class p1, Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

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
