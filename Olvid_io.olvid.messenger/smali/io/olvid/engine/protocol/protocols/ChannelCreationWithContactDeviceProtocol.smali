.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SecondAckMessage;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$FirstAckMessage;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$K2Message;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ChannelConfirmedState;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitUntilContactIsTrustedState;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingSentState;,
        Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;
    }
.end annotation


# static fields
.field static final ALICE_IDENTITY_AND_EPHEMERAL_KEY_MESSAGE_ID:I = 0x2

.field static final BOB_EPHEMERAL_KEY_AND_K1_MESSAGE_ID:I = 0x3

.field static final CANCELLED_STATE_ID:I = 0x1

.field static final CHANNEL_CONFIRMED_STATE_ID:I = 0x8

.field static final FIRST_ACK_MESSAGE_ID:I = 0x5

.field static final INITIAL_MESSAGE_ID:I = 0x0

.field static final K2_MESSAGE_ID:I = 0x4

.field static final PING_MESSAGE_ID:I = 0x1

.field static final PING_SENT_STATE_ID:I = 0x2

.field static final SECOND_ACK_MESSAGE_ID:I = 0x6

.field private static final SIGNATURE_CHALLENGE_PREFIX:[B

.field static final WAITING_FOR_K1_STATE_ID:I = 0x3

.field static final WAITING_FOR_K2_STATE_ID:I = 0x4

.field static final WAIT_FOR_FIRST_ACK_STATE_ID:I = 0x5

.field static final WAIT_FOR_SECOND_ACK_STATE_ID:I = 0x7

.field static final WAIT_UNTIL_CONTACT_IS_TRUSTED_STATE_ID:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "channelCreation"

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->SIGNATURE_CHALLENGE_PREFIX:[B

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-direct/range {p0 .. p7}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method

.method static synthetic access$1500(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 36
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method static synthetic access$200()[B
    .locals 1

    .line 36
    sget-object v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->SIGNATURE_CHALLENGE_PREFIX:[B

    return-object v0
.end method

.method static synthetic access$2100(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 36
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method static synthetic access$2500(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 36
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method


# virtual methods
.method public getFinalStateIds()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 63
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x8
        0x2
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

    .line 356
    :pswitch_0
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SecondAckMessage;

    return-object p1

    .line 354
    :pswitch_1
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$FirstAckMessage;

    return-object p1

    .line 352
    :pswitch_2
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$K2Message;

    return-object p1

    .line 350
    :pswitch_3
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;

    return-object p1

    .line 348
    :pswitch_4
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    return-object p1

    .line 346
    :pswitch_5
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    return-object p1

    .line 344
    :pswitch_6
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

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

.method public getPossibleStepClasses(I)[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const/4 v3, 0x7

    if-eq p1, v3, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    new-array p1, v2, [Ljava/lang/Class;

    return-object p1

    :cond_0
    new-array p1, v1, [Ljava/lang/Class;

    .line 629
    const-class v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;

    aput-object v0, p1, v2

    return-object p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Class;

    .line 627
    const-class v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;

    aput-object v0, p1, v2

    return-object p1

    :cond_2
    new-array p1, v1, [Ljava/lang/Class;

    .line 625
    const-class v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;

    aput-object v0, p1, v2

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Class;

    .line 631
    const-class v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;

    aput-object v0, p1, v2

    return-object p1

    :cond_4
    new-array p1, v0, [Ljava/lang/Class;

    .line 623
    const-class v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;

    aput-object v0, p1, v2

    const-class v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;

    aput-object v0, p1, v1

    const/4 v0, 0x2

    const-class v1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;

    aput-object v1, p1, v0

    return-object p1
.end method

.method public getProtocolId()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getStateClass(I)Ljava/lang/Class;
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

    .line 84
    :pswitch_1
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ChannelConfirmedState;

    return-object p1

    .line 82
    :pswitch_2
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;

    return-object p1

    .line 80
    :pswitch_3
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;

    return-object p1

    .line 78
    :pswitch_4
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    return-object p1

    .line 76
    :pswitch_5
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;

    return-object p1

    .line 74
    :pswitch_6
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingSentState;

    return-object p1

    .line 72
    :pswitch_7
    const-class p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;

    return-object p1

    .line 70
    :pswitch_8
    const-class p1, Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
