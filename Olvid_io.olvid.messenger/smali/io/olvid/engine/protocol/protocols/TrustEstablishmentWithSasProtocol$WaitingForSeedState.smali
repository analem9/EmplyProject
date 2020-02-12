.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.source "TrustEstablishmentWithSasProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitingForSeedState"
.end annotation


# instance fields
.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final decommitment:[B

.field private final dialogUuid:Ljava/util/UUID;

.field private final seedAliceForSas:Lio/olvid/engine/datatypes/Seed;


# direct methods
.method constructor <init>(Lio/olvid/engine/datatypes/Identity;[BLio/olvid/engine/datatypes/Seed;Ljava/util/UUID;)V
    .locals 1

    const/4 v0, 0x1

    .line 112
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 113
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 114
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->decommitment:[B

    .line 115
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->seedAliceForSas:Lio/olvid/engine/datatypes/Seed;

    .line 116
    iput-object p4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->dialogUuid:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 101
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 102
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 105
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 106
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->decommitment:[B

    const/4 v0, 0x2

    .line 107
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeSeed()Lio/olvid/engine/datatypes/Seed;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->seedAliceForSas:Lio/olvid/engine/datatypes/Seed;

    const/4 v0, 0x3

    .line 108
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeUuid()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->dialogUuid:Ljava/util/UUID;

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method static synthetic access$2300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 92
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method static synthetic access$2500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;)[B
    .locals 0

    .line 92
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->decommitment:[B

    return-object p0
.end method

.method static synthetic access$2600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;)Lio/olvid/engine/datatypes/Seed;
    .locals 0

    .line 92
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->seedAliceForSas:Lio/olvid/engine/datatypes/Seed;

    return-object p0
.end method

.method static synthetic access$2900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;)Ljava/util/UUID;
    .locals 0

    .line 92
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->dialogUuid:Ljava/util/UUID;

    return-object p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 121
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 122
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->decommitment:[B

    .line 123
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->seedAliceForSas:Lio/olvid/engine/datatypes/Seed;

    .line 124
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;->dialogUuid:Ljava/util/UUID;

    .line 125
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/util/UUID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 121
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method
