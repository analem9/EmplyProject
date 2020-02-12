.class Lio/olvid/engine/crypto/MACHmacSha256;
.super Ljava/lang/Object;
.source "MAC.java"

# interfaces
.implements Lio/olvid/engine/crypto/MAC;


# static fields
.field static final OUTPUT_LENGTH:I = 0x20


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public digest(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "HmacSHA256"

    .line 36
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 37
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/symmetric/MACKey;->getKeyBytes()[B

    move-result-object p1

    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 38
    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public generateKey(Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/key/symmetric/MACKey;
    .locals 2

    const-string v0, "kdf_sha-256"

    .line 51
    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getKDF(Ljava/lang/String;)Lio/olvid/engine/crypto/KDF;

    move-result-object v0

    .line 52
    new-instance v1, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {v1, p1}, Lio/olvid/engine/datatypes/Seed;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 54
    :try_start_0
    new-instance p1, Lio/olvid/engine/crypto/KDFDelegateForHmacSHA256;

    invoke-direct {p1}, Lio/olvid/engine/crypto/KDFDelegateForHmacSHA256;-><init>()V

    invoke-interface {v0, v1, p1}, Lio/olvid/engine/crypto/KDF;->gen(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/crypto/KDF$Delegate;)[Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/MACKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public outputLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public verify(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Lio/olvid/engine/crypto/MACHmacSha256;->digest(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B)[B

    move-result-object p1

    .line 46
    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method
