.class Lio/olvid/engine/crypto/KemEcies256Kem512Curve25519;
.super Lio/olvid/engine/crypto/KemEcies256Kem512;
.source "PublicKeyEncryption.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 178
    invoke-static {}, Lio/olvid/engine/crypto/Curve25519;->getInstance()Lio/olvid/engine/crypto/Curve25519;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/olvid/engine/crypto/KemEcies256Kem512;-><init>(Lio/olvid/engine/crypto/EdwardCurve;)V

    return-void
.end method


# virtual methods
.method public decrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;[B)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 191
    instance-of v0, p1, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesCurve25519PrivateKey;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0, p1, p2}, Lio/olvid/engine/crypto/KemEcies256Kem512Curve25519;->internalDecrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;[B)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1}, Ljava/security/InvalidKeyException;-><init>()V

    throw p1
.end method

.method public encrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/CiphertextAndKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 183
    instance-of v0, p1, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesCurve25519PublicKey;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, p1, p2}, Lio/olvid/engine/crypto/KemEcies256Kem512Curve25519;->internalEncrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/CiphertextAndKey;

    move-result-object p1

    return-object p1

    .line 184
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1}, Ljava/security/InvalidKeyException;-><init>()V

    throw p1
.end method
