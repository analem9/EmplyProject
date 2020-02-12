.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "TrustEstablishmentWithSasProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropagateInvitationToAliceDevicesMessage"
.end annotation


# instance fields
.field private final contactDisplayName:Ljava/lang/String;

.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final decommitment:[B

.field private final seedForSas:Lio/olvid/engine/datatypes/Seed;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 490
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 491
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 494
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 495
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->contactDisplayName:Ljava/lang/String;

    .line 496
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->decommitment:[B

    .line 497
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeSeed()Lio/olvid/engine/datatypes/Seed;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->seedForSas:Lio/olvid/engine/datatypes/Seed;

    return-void

    .line 492
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;[BLio/olvid/engine/datatypes/Seed;)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 482
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 483
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->contactDisplayName:Ljava/lang/String;

    .line 484
    iput-object p4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->decommitment:[B

    .line 485
    iput-object p5, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->seedForSas:Lio/olvid/engine/datatypes/Seed;

    return-void
.end method

.method static synthetic access$300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;)Ljava/lang/String;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->contactDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method static synthetic access$500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;)[B
    .locals 0

    .line 474
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->decommitment:[B

    return-object p0
.end method

.method static synthetic access$600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;)Lio/olvid/engine/datatypes/Seed;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->seedForSas:Lio/olvid/engine/datatypes/Seed;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 507
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 508
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->contactDisplayName:Ljava/lang/String;

    .line 509
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->decommitment:[B

    .line 510
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->seedForSas:Lio/olvid/engine/datatypes/Seed;

    .line 511
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
