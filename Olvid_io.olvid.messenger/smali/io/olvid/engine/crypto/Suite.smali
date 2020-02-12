.class public Lio/olvid/engine/crypto/Suite;
.super Ljava/lang/Object;
.source "Suite.java"


# static fields
.field public static final LATEST_VERSION:I

.field public static final MINIMUM_ACCEPTABLE_VERSION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateEncryptionKeyPair(Ljava/lang/Byte;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 148
    invoke-static {p0}, Lio/olvid/engine/crypto/Suite;->getDefaultEncryptionAlgoImplByte(I)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    .line 150
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_1
    invoke-static {p1}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesCurve25519KeyPair;->generate(Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesCurve25519KeyPair;

    move-result-object p0

    return-object p0

    .line 152
    :cond_2
    invoke-static {p1}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesMDCKeyPair;->generate(Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesMDCKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static generateServerAuthenticationKeyPair(Ljava/lang/Byte;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 127
    invoke-static {p0}, Lio/olvid/engine/crypto/Suite;->getDefaultServerAuthenticationAlgoImplByte(I)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    .line 129
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_1
    invoke-static {p1}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519KeyPair;->generate(Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519KeyPair;

    move-result-object p0

    return-object p0

    .line 131
    :cond_2
    invoke-static {p1}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCKeyPair;->generate(Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getAuthEnc(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/AuthEnc;
    .locals 3

    .line 201
    instance-of v0, p0, Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 204
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getAlgorithmClass()B

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return-object v1

    .line 207
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getAlgorithmImplementation()B

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    .line 209
    :cond_2
    new-instance p0, Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;

    invoke-direct {p0}, Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;-><init>()V

    return-object p0
.end method

.method public static getAuthEnc(Ljava/lang/String;)Lio/olvid/engine/crypto/AuthEnc;
    .locals 2

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2c7efdda

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ctr-aes-256_then_hmac_sha-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 29
    :goto_0
    new-instance p0, Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;

    invoke-direct {p0}, Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;-><init>()V

    return-object p0
.end method

.method public static getCurve(Ljava/lang/String;)Lio/olvid/engine/crypto/EdwardCurve;
    .locals 2

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x1298c

    if-eq v0, v1, :cond_1

    const v1, 0x97ad88a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Curve_25519"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "MDC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    .line 79
    invoke-static {}, Lio/olvid/engine/crypto/MDC;->getInstance()Lio/olvid/engine/crypto/MDC;

    move-result-object p0

    return-object p0

    .line 76
    :cond_3
    invoke-static {}, Lio/olvid/engine/crypto/Curve25519;->getInstance()Lio/olvid/engine/crypto/Curve25519;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultAuthEnc(I)Lio/olvid/engine/crypto/AuthEnc;
    .locals 0

    const-string p0, "ctr-aes-256_then_hmac_sha-256"

    .line 34
    invoke-static {p0}, Lio/olvid/engine/crypto/Suite;->getAuthEnc(Ljava/lang/String;)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultCommitment(I)Lio/olvid/engine/crypto/Commitment;
    .locals 0

    .line 239
    new-instance p0, Lio/olvid/engine/crypto/CommitmentWithSHA256;

    invoke-direct {p0}, Lio/olvid/engine/crypto/CommitmentWithSHA256;-><init>()V

    return-object p0
.end method

.method private static getDefaultEncryptionAlgoImplByte(I)B
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static getDefaultKDF(I)Lio/olvid/engine/crypto/KDF;
    .locals 0

    .line 231
    new-instance p0, Lio/olvid/engine/crypto/KDFSha256;

    invoke-direct {p0}, Lio/olvid/engine/crypto/KDFSha256;-><init>()V

    return-object p0
.end method

.method public static getDefaultMAC(I)Lio/olvid/engine/crypto/MAC;
    .locals 0

    .line 243
    new-instance p0, Lio/olvid/engine/crypto/MACHmacSha256;

    invoke-direct {p0}, Lio/olvid/engine/crypto/MACHmacSha256;-><init>()V

    return-object p0
.end method

.method public static getDefaultPRNG(ILio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/crypto/PRNG;
    .locals 0

    const-string p0, "prng_hmac_sha-256"

    .line 62
    invoke-static {p0, p1}, Lio/olvid/engine/crypto/Suite;->getPRNG(Ljava/lang/String;Lio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/crypto/PRNG;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultPRNGService(I)Lio/olvid/engine/crypto/PRNGService;
    .locals 0

    const-string p0, "prng_hmac_sha-256"

    .line 235
    invoke-static {p0}, Lio/olvid/engine/crypto/Suite;->getPRNGService(Ljava/lang/String;)Lio/olvid/engine/crypto/PRNGService;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultServerAuthenticationAlgoImplByte(I)B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getHash(Ljava/lang/String;)Lio/olvid/engine/crypto/Hash;
    .locals 2

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7a50bdb2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "sha-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 41
    :goto_0
    new-instance p0, Lio/olvid/engine/crypto/HashSHA256;

    invoke-direct {p0}, Lio/olvid/engine/crypto/HashSHA256;-><init>()V

    return-object p0
.end method

.method public static getKDF(Ljava/lang/String;)Lio/olvid/engine/crypto/KDF;
    .locals 2

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3d947a60

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "kdf_sha-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 87
    :goto_0
    new-instance p0, Lio/olvid/engine/crypto/KDFSha256;

    invoke-direct {p0}, Lio/olvid/engine/crypto/KDFSha256;-><init>()V

    return-object p0
.end method

.method public static getMAC(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/MAC;
    .locals 3

    .line 216
    instance-of v0, p0, Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 219
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getAlgorithmClass()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return-object v1

    .line 222
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getAlgorithmImplementation()B

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    .line 224
    :cond_2
    new-instance p0, Lio/olvid/engine/crypto/MACHmacSha256;

    invoke-direct {p0}, Lio/olvid/engine/crypto/MACHmacSha256;-><init>()V

    return-object p0
.end method

.method public static getPRNG(Ljava/lang/String;Lio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/crypto/PRNG;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2f1f97de

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "prng_hmac_sha-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 57
    :goto_0
    new-instance p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;

    invoke-direct {p0, p1}, Lio/olvid/engine/crypto/PRNGHmacSHA256;-><init>(Lio/olvid/engine/datatypes/Seed;)V

    return-object p0
.end method

.method public static getPRNGService(Ljava/lang/String;)Lio/olvid/engine/crypto/PRNGService;
    .locals 2

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2f1f97de

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "prng_hmac_sha-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 69
    :goto_0
    invoke-static {}, Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;->getInstance()Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKeyEncryption(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/PublicKeyEncryption;
    .locals 3

    .line 109
    instance-of v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    instance-of v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    if-nez v0, :cond_0

    return-object v1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getAlgorithmClass()B

    move-result v0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_1

    return-object v1

    .line 115
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getAlgorithmImplementation()B

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    return-object v1

    .line 119
    :cond_2
    new-instance p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEciesCurve25519;

    invoke-direct {p0}, Lio/olvid/engine/crypto/PublicKeyEncryptionEciesCurve25519;-><init>()V

    return-object p0

    .line 117
    :cond_3
    new-instance p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEciesMDC;

    invoke-direct {p0}, Lio/olvid/engine/crypto/PublicKeyEncryptionEciesMDC;-><init>()V

    return-object p0
.end method

.method public static getServerAuthentication(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/ServerAuthentication;
    .locals 3

    .line 167
    instance-of v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    instance-of v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    if-nez v0, :cond_0

    return-object v1

    .line 170
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getAlgorithmClass()B

    move-result v0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_1

    return-object v1

    .line 173
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getAlgorithmImplementation()B

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    return-object v1

    .line 177
    :cond_2
    new-instance p0, Lio/olvid/engine/crypto/ServerAuthenticationECSdsaCurve25519;

    invoke-direct {p0}, Lio/olvid/engine/crypto/ServerAuthenticationECSdsaCurve25519;-><init>()V

    return-object p0

    .line 175
    :cond_3
    new-instance p0, Lio/olvid/engine/crypto/ServerAuthenticationECSdsaMDC;

    invoke-direct {p0}, Lio/olvid/engine/crypto/ServerAuthenticationECSdsaMDC;-><init>()V

    return-object p0
.end method

.method public static getSignature(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/Signature;
    .locals 3

    .line 184
    instance-of v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    instance-of v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    if-nez v0, :cond_0

    return-object v1

    .line 187
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getAlgorithmClass()B

    move-result v0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_1

    return-object v1

    .line 190
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getAlgorithmImplementation()B

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    return-object v1

    .line 194
    :cond_2
    new-instance p0, Lio/olvid/engine/crypto/SignatureECSdsaCurve25519;

    invoke-direct {p0}, Lio/olvid/engine/crypto/SignatureECSdsaCurve25519;-><init>()V

    return-object p0

    .line 192
    :cond_3
    new-instance p0, Lio/olvid/engine/crypto/SignatureECSdsaMDC;

    invoke-direct {p0}, Lio/olvid/engine/crypto/SignatureECSdsaMDC;-><init>()V

    return-object p0
.end method
