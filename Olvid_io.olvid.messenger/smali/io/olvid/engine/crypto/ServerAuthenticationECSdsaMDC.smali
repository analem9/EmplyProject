.class Lio/olvid/engine/crypto/ServerAuthenticationECSdsaMDC;
.super Lio/olvid/engine/crypto/ServerAuthenticationECSdsa;
.source "ServerAuthentication.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 46
    new-instance v0, Lio/olvid/engine/crypto/SignatureECSdsaMDC;

    invoke-direct {v0}, Lio/olvid/engine/crypto/SignatureECSdsaMDC;-><init>()V

    invoke-direct {p0, v0}, Lio/olvid/engine/crypto/ServerAuthenticationECSdsa;-><init>(Lio/olvid/engine/crypto/SignatureECSdsa;)V

    return-void
.end method


# virtual methods
.method public solveChallenge([BLio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;Lio/olvid/engine/crypto/PRNGService;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 51
    instance-of v0, p3, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPrivateKey;

    if-eqz v0, :cond_0

    .line 54
    check-cast p2, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;

    check-cast p3, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/olvid/engine/crypto/ServerAuthenticationECSdsaMDC;->internalSolveChallenge([BLio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;Lio/olvid/engine/crypto/PRNGService;)[B

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1}, Ljava/security/InvalidKeyException;-><init>()V

    throw p1
.end method
