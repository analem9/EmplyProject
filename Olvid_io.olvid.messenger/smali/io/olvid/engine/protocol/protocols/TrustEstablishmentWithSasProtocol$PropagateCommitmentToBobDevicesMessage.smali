.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "TrustEstablishmentWithSasProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropagateCommitmentToBobDevicesMessage"
.end annotation


# instance fields
.field private final commitment:[B

.field private final contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

.field private final contactDisplayName:Ljava/lang/String;

.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 533
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 534
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 537
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 538
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->contactDisplayName:Ljava/lang/String;

    .line 539
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeUidArray()[Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 540
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->commitment:[B

    return-void

    .line 535
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;[Lio/olvid/engine/datatypes/UID;[B)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 525
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 526
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->contactDisplayName:Ljava/lang/String;

    .line 527
    iput-object p4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 528
    iput-object p5, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->commitment:[B

    return-void
.end method

.method static synthetic access$1100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;)Ljava/lang/String;
    .locals 0

    .line 517
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->contactDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 517
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method static synthetic access$1300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;)[Lio/olvid/engine/datatypes/UID;
    .locals 0

    .line 517
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    return-object p0
.end method

.method static synthetic access$1400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;)[B
    .locals 0

    .line 517
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->commitment:[B

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 550
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 551
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->contactDisplayName:Ljava/lang/String;

    .line 552
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 553
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->commitment:[B

    .line 554
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
