.class public abstract Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;
.source "EncryptionPublicKey.java"


# static fields
.field public static final ALGO_IMPL_KEM_ECIES_CURVE25519_AND_DEM_CTR_AES256_THEN_HMAC_SHA256:B = 0x1t

.field public static final ALGO_IMPL_KEM_ECIES_MDC_AND_DEM_CTR_AES256_THEN_HMAC_SHA256:B


# direct methods
.method public constructor <init>(BLjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 16
    invoke-direct {p0, v0, p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;-><init>(BBLjava/util/HashMap;)V

    return-void
.end method

.method public static getCompactKeyLength(B)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 34
    :cond_0
    sget p0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesCurve25519PublicKey;->COMPACT_KEY_LENGTH:I

    return p0

    .line 32
    :cond_1
    sget p0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesMDCPublicKey;->COMPACT_KEY_LENGTH:I

    return p0
.end method

.method public static of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)",
            "Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 24
    :cond_0
    new-instance p0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesCurve25519PublicKey;

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesCurve25519PublicKey;-><init>(Ljava/util/HashMap;)V

    return-object p0

    .line 22
    :cond_1
    new-instance p0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesMDCPublicKey;

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesMDCPublicKey;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method

.method public static of([B)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    aget-byte v0, p0, v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 49
    invoke-static {p0}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesCurve25519PublicKey;->of([B)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesCurve25519PublicKey;

    move-result-object p0

    return-object p0

    .line 51
    :cond_0
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 47
    :cond_1
    invoke-static {p0}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesMDCPublicKey;->of([B)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesMDCPublicKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getCompactKey()[B
.end method

.method public getCompactKeyLength()I
    .locals 1

    .line 40
    iget-byte v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;->algorithmImplementation:B

    invoke-static {v0}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;->getCompactKeyLength(B)I

    move-result v0

    return v0
.end method
