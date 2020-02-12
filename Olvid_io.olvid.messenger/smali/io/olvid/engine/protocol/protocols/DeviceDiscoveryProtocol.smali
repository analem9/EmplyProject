.class public Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
.source "DeviceDiscoveryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ProcessChildProtocolStateStep;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$CancelledState;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolStateProcessedState;,
        Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$WaitingForChildProtocolState;
    }
.end annotation


# static fields
.field public static final CANCELLED_STATE_ID:I = 0x3

.field public static final CHILD_PROTOCOL_OUTPUT_PROCESSED_STATE_ID:I = 0x2

.field public static final CHILD_PROTOCOL_REACHED_EXPECTED_STATE_MESSAGE_ID:I = 0x1

.field public static final INITIAL_MESSAGE_ID:I = 0x0

.field public static final WAITING_FOR_CHILD_PROTOCOL_STATE_ID:I = 0x1


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-direct/range {p0 .. p7}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method


# virtual methods
.method public getFinalStateIds()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 42
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3
        0x2
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

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 139
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;

    return-object p1

    .line 137
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;

    return-object p1
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

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    new-array p1, v0, [Ljava/lang/Class;

    return-object p1

    :cond_0
    new-array p1, v1, [Ljava/lang/Class;

    .line 223
    const-class v1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ProcessChildProtocolStateStep;

    aput-object v1, p1, v0

    return-object p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Class;

    .line 221
    const-class v1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$StartChildProtocolStep;

    aput-object v1, p1, v0

    return-object p1
.end method

.method public getProtocolId()I
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$CancelledState;

    return-object p1

    .line 53
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolStateProcessedState;

    return-object p1

    .line 51
    :cond_2
    const-class p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$WaitingForChildProtocolState;

    return-object p1

    .line 49
    :cond_3
    const-class p1, Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    return-object p1
.end method
