.class public Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
.source "DeviceDiscoveryChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ProcessDeviceUidsStep;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$RespondToRequestStep;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$SendRequestStep;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromBobMessage;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromAliceMessage;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerRequestSentState;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsSentState;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;
    }
.end annotation


# static fields
.field public static final DEVICE_UIDS_RECEIVED_STATE_ID:I = 0x2

.field public static final DEVICE_UIDS_SENT_STATE_ID:I = 0x3

.field public static final FROM_ALICE_MESSAGE_ID:I = 0x1

.field public static final FROM_BOB_MESSAGE_ID:I = 0x2

.field public static final INITIAL_MESSAGE_ID:I = 0x0

.field public static final SERVER_QUERY_MESSAGE_ID:I = 0x3

.field public static final SERVER_REQUEST_SENT_STATE_ID:I = 0x4


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    invoke-direct/range {p0 .. p7}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method


# virtual methods
.method public getFinalStateIds()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    return-object v0
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

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 199
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;

    return-object p1

    .line 197
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromBobMessage;

    return-object p1

    .line 195
    :cond_2
    const-class p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromAliceMessage;

    return-object p1

    .line 193
    :cond_3
    const-class p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;

    return-object p1
.end method

.method protected getPossibleStepClasses(I)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    new-array p1, v1, [Ljava/lang/Class;

    return-object p1

    :cond_0
    new-array p1, v0, [Ljava/lang/Class;

    .line 337
    const-class v0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ProcessDeviceUidsStep;

    aput-object v0, p1, v1

    return-object p1

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Class;

    .line 334
    const-class v2, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$SendRequestStep;

    aput-object v2, p1, v1

    const-class v1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$RespondToRequestStep;

    aput-object v1, p1, v0

    return-object p1
.end method

.method public getProtocolId()I
    .locals 1

    const/4 v0, 0x3

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

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerRequestSentState;

    return-object p1

    .line 59
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsSentState;

    return-object p1

    .line 57
    :cond_2
    const-class p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;

    return-object p1

    .line 53
    :cond_3
    const-class p1, Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    return-object p1
.end method
