.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.source "TrustEstablishmentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitingForDecommitmentState"
.end annotation


# instance fields
.field private final commitment:[B

.field private final contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final contactSerializedDetails:Ljava/lang/String;

.field private final dialogUuid:Ljava/util/UUID;

.field private final seedForSas:Lio/olvid/engine/datatypes/Seed;


# direct methods
.method constructor <init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;[Lio/olvid/engine/datatypes/UID;[BLio/olvid/engine/datatypes/Seed;Ljava/util/UUID;)V
    .locals 1

    const/4 v0, 0x4

    .line 221
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 222
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 223
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->contactSerializedDetails:Ljava/lang/String;

    .line 224
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 225
    iput-object p4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->commitment:[B

    .line 226
    iput-object p5, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->seedForSas:Lio/olvid/engine/datatypes/Seed;

    .line 227
    iput-object p6, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->dialogUuid:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    .line 207
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 208
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 209
    array-length v1, p1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 212
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    const/4 v1, 0x1

    .line 213
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->contactSerializedDetails:Ljava/lang/String;

    const/4 v1, 0x2

    .line 214
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeUidArray()[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    const/4 v1, 0x3

    .line 215
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v1

    iput-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->commitment:[B

    .line 216
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeSeed()Lio/olvid/engine/datatypes/Seed;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->seedForSas:Lio/olvid/engine/datatypes/Seed;

    const/4 v0, 0x5

    .line 217
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeUuid()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->dialogUuid:Ljava/util/UUID;

    return-void

    .line 210
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method static synthetic access$3000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 197
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method static synthetic access$3100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)[B
    .locals 0

    .line 197
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->commitment:[B

    return-object p0
.end method

.method static synthetic access$3300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Lio/olvid/engine/datatypes/Seed;
    .locals 0

    .line 197
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->seedForSas:Lio/olvid/engine/datatypes/Seed;

    return-object p0
.end method

.method static synthetic access$3400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Ljava/lang/String;
    .locals 0

    .line 197
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->contactSerializedDetails:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Ljava/util/UUID;
    .locals 0

    .line 197
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->dialogUuid:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$3600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)[Lio/olvid/engine/datatypes/UID;
    .locals 0

    .line 197
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    return-object p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 232
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 233
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->contactSerializedDetails:Ljava/lang/String;

    .line 234
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 235
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->commitment:[B

    .line 236
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->seedForSas:Lio/olvid/engine/datatypes/Seed;

    .line 237
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->dialogUuid:Ljava/util/UUID;

    .line 238
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/util/UUID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 232
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method
