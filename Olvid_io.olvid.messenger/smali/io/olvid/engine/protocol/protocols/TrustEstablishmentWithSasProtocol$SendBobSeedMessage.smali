.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "TrustEstablishmentWithSasProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendBobSeedMessage"
.end annotation


# instance fields
.field private final contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

.field private final contactSerializedDetails:Ljava/lang/String;

.field private final seedBobForSas:Lio/olvid/engine/datatypes/Seed;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 636
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 637
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 640
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeSeed()Lio/olvid/engine/datatypes/Seed;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->seedBobForSas:Lio/olvid/engine/datatypes/Seed;

    .line 641
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeUidArray()[Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 642
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->contactSerializedDetails:Ljava/lang/String;

    return-void

    .line 638
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Seed;[Lio/olvid/engine/datatypes/UID;Ljava/lang/String;)V
    .locals 0

    .line 628
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 629
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->seedBobForSas:Lio/olvid/engine/datatypes/Seed;

    .line 630
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 631
    iput-object p4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->contactSerializedDetails:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;)[Lio/olvid/engine/datatypes/UID;
    .locals 0

    .line 622
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    return-object p0
.end method

.method static synthetic access$2700(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;)Lio/olvid/engine/datatypes/Seed;
    .locals 0

    .line 622
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->seedBobForSas:Lio/olvid/engine/datatypes/Seed;

    return-object p0
.end method

.method static synthetic access$2800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;)Ljava/lang/String;
    .locals 0

    .line 622
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->contactSerializedDetails:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 652
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->seedBobForSas:Lio/olvid/engine/datatypes/Seed;

    .line 653
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 654
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->contactSerializedDetails:Ljava/lang/String;

    .line 655
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
