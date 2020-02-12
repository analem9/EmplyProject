.class Lio/olvid/engine/crypto/SignatureECSdsaMDC;
.super Lio/olvid/engine/crypto/SignatureECSdsa;
.source "Signature.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 86
    invoke-static {}, Lio/olvid/engine/crypto/MDC;->getInstance()Lio/olvid/engine/crypto/MDC;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/olvid/engine/crypto/SignatureECSdsa;-><init>(Lio/olvid/engine/crypto/EdwardCurve;)V

    return-void
.end method


# virtual methods
.method public sign(Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;[BLio/olvid/engine/crypto/PRNGService;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 91
    instance-of v0, p1, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaMDCPrivateKey;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;

    check-cast p2, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/olvid/engine/crypto/SignatureECSdsaMDC;->internalSign(Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;[BLio/olvid/engine/crypto/PRNGService;)[B

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1}, Ljava/security/InvalidKeyException;-><init>()V

    throw p1
.end method

.method public verify(Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;[B[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 99
    instance-of v0, p1, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaMDCPublicKey;

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;

    invoke-virtual {p0, p1, p2, p3}, Lio/olvid/engine/crypto/SignatureECSdsaMDC;->internalVerify(Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;[B[B)Z

    move-result p1

    return p1

    .line 100
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1}, Ljava/security/InvalidKeyException;-><init>()V

    throw p1
.end method
