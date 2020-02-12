.class Lio/olvid/engine/crypto/PublicKeyEncryptionEciesMDC;
.super Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;
.source "PublicKeyEncryption.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 76
    new-instance v0, Lio/olvid/engine/crypto/KemEcies256Kem512MDC;

    invoke-direct {v0}, Lio/olvid/engine/crypto/KemEcies256Kem512MDC;-><init>()V

    invoke-direct {p0, v0}, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;-><init>(Lio/olvid/engine/crypto/KemEcies256Kem512;)V

    return-void
.end method
