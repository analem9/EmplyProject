.class Lio/olvid/engine/crypto/PublicKeyEncryptionEciesCurve25519;
.super Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;
.source "PublicKeyEncryption.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 82
    new-instance v0, Lio/olvid/engine/crypto/KemEcies256Kem512Curve25519;

    invoke-direct {v0}, Lio/olvid/engine/crypto/KemEcies256Kem512Curve25519;-><init>()V

    invoke-direct {p0, v0}, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;-><init>(Lio/olvid/engine/crypto/KemEcies256Kem512;)V

    return-void
.end method
