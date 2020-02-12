.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.source "TrustEstablishmentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactIdentityTrustedState"
.end annotation


# instance fields
.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final contactSerializedDetails:Ljava/lang/String;

.field private final dialogUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x6

    .line 296
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 297
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 298
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 301
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->contactSerializedDetails:Ljava/lang/String;

    const/4 v0, 0x1

    .line 302
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    const/4 v0, 0x2

    .line 303
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeUuid()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->dialogUuid:Ljava/util/UUID;

    return-void

    .line 299
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method constructor <init>(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;)V
    .locals 1

    const/4 v0, 0x6

    .line 307
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 308
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->contactSerializedDetails:Ljava/lang/String;

    .line 309
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 310
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->dialogUuid:Ljava/util/UUID;

    return-void
.end method

.method static synthetic access$4600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;)Ljava/lang/String;
    .locals 0

    .line 289
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->contactSerializedDetails:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4700(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 289
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method static synthetic access$4800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;)Ljava/util/UUID;
    .locals 0

    .line 289
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->dialogUuid:Ljava/util/UUID;

    return-object p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 315
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->contactSerializedDetails:Ljava/lang/String;

    .line 316
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 317
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->dialogUuid:Ljava/util/UUID;

    .line 318
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/util/UUID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 315
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method
