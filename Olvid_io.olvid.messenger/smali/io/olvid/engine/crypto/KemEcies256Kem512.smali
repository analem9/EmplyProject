.class abstract Lio/olvid/engine/crypto/KemEcies256Kem512;
.super Ljava/lang/Object;
.source "PublicKeyEncryption.java"

# interfaces
.implements Lio/olvid/engine/crypto/KEM;


# static fields
.field public static final CIPHERTEXT_LENGTH:I = 0x20


# instance fields
.field private final curve:Lio/olvid/engine/crypto/EdwardCurve;


# direct methods
.method protected constructor <init>(Lio/olvid/engine/crypto/EdwardCurve;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lio/olvid/engine/crypto/KemEcies256Kem512;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    return-void
.end method


# virtual methods
.method public ciphertextLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method internalDecrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;[B)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 5

    .line 125
    check-cast p1, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPrivateKey;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPrivateKey;->getA()Ljava/math/BigInteger;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lio/olvid/engine/crypto/KemEcies256Kem512;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget v0, v0, Lio/olvid/engine/crypto/EdwardCurve;->byteLength:I

    .line 127
    array-length v1, p2

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return-object v2

    .line 130
    :cond_0
    invoke-static {p2}, Lio/olvid/engine/encoder/Encoded;->bigUIntFromBytes([B)Ljava/math/BigInteger;

    move-result-object v1

    .line 131
    iget-object v3, p0, Lio/olvid/engine/crypto/KemEcies256Kem512;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget-object v4, v3, Lio/olvid/engine/crypto/EdwardCurve;->nu:Ljava/math/BigInteger;

    invoke-virtual {v3, v4, v1}, Lio/olvid/engine/crypto/EdwardCurve;->scalarMultiplication(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 132
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 135
    :cond_1
    iget-object v3, p0, Lio/olvid/engine/crypto/KemEcies256Kem512;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget-object v3, v3, Lio/olvid/engine/crypto/EdwardCurve;->nu:Ljava/math/BigInteger;

    iget-object v4, p0, Lio/olvid/engine/crypto/KemEcies256Kem512;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget-object v4, v4, Lio/olvid/engine/crypto/EdwardCurve;->q:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v3, p0, Lio/olvid/engine/crypto/KemEcies256Kem512;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget-object v3, v3, Lio/olvid/engine/crypto/EdwardCurve;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 136
    iget-object v3, p0, Lio/olvid/engine/crypto/KemEcies256Kem512;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    invoke-virtual {v3, p1, v1}, Lio/olvid/engine/crypto/EdwardCurve;->scalarMultiplication(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    mul-int/lit8 v1, v0, 0x2

    .line 138
    :try_start_0
    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 139
    invoke-static {p2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    invoke-static {p1, v0}, Lio/olvid/engine/encoder/Encoded;->bytesFromBigUInt(Ljava/math/BigInteger;I)[B

    move-result-object p1

    invoke-static {p1, v3, v1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    new-instance p1, Lio/olvid/engine/crypto/KDFSha256;

    invoke-direct {p1}, Lio/olvid/engine/crypto/KDFSha256;-><init>()V

    new-instance p2, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {p2, v1}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    new-instance v0, Lio/olvid/engine/crypto/KDFDelegateForAuthEncAES256ThenSHA256;

    invoke-direct {v0}, Lio/olvid/engine/crypto/KDFDelegateForAuthEncAES256ThenSHA256;-><init>()V

    invoke-virtual {p1, p2, v0}, Lio/olvid/engine/crypto/KDFSha256;->gen(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/crypto/KDF$Delegate;)[Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    aget-object p1, p1, v3

    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_0
    .catch Lio/olvid/engine/encoder/EncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v2
.end method

.method internalEncrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/CiphertextAndKey;
    .locals 3

    .line 103
    check-cast p1, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPublicKey;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPublicKey;->getAy()Ljava/math/BigInteger;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lio/olvid/engine/crypto/KemEcies256Kem512;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget v0, v0, Lio/olvid/engine/crypto/EdwardCurve;->byteLength:I

    .line 107
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/crypto/KemEcies256Kem512;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget-object v1, v1, Lio/olvid/engine/crypto/EdwardCurve;->q:Ljava/math/BigInteger;

    invoke-interface {p2, v1}, Lio/olvid/engine/crypto/PRNGService;->bigInt(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 108
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object p2, p0, Lio/olvid/engine/crypto/KemEcies256Kem512;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget-object p2, p2, Lio/olvid/engine/crypto/EdwardCurve;->G:Lio/olvid/engine/datatypes/EdwardCurvePoint;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object p2

    .line 110
    iget-object v2, p0, Lio/olvid/engine/crypto/KemEcies256Kem512;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    invoke-virtual {v2, v1, p2}, Lio/olvid/engine/crypto/EdwardCurve;->scalarMultiplication(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 111
    iget-object v2, p0, Lio/olvid/engine/crypto/KemEcies256Kem512;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    invoke-virtual {v2, v1, p1}, Lio/olvid/engine/crypto/EdwardCurve;->scalarMultiplication(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 113
    :try_start_0
    invoke-static {p2, v0}, Lio/olvid/engine/encoder/Encoded;->bytesFromBigUInt(Ljava/math/BigInteger;I)[B

    move-result-object p2

    mul-int/lit8 v1, v0, 0x2

    .line 114
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 115
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    invoke-static {p1, v0}, Lio/olvid/engine/encoder/Encoded;->bytesFromBigUInt(Ljava/math/BigInteger;I)[B

    move-result-object p1

    invoke-static {p1, v2, v1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    new-instance p1, Lio/olvid/engine/crypto/KDFSha256;

    invoke-direct {p1}, Lio/olvid/engine/crypto/KDFSha256;-><init>()V

    new-instance v0, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {v0, v1}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    new-instance v1, Lio/olvid/engine/crypto/KDFDelegateForAuthEncAES256ThenSHA256;

    invoke-direct {v1}, Lio/olvid/engine/crypto/KDFDelegateForAuthEncAES256ThenSHA256;-><init>()V

    invoke-virtual {p1, v0, v1}, Lio/olvid/engine/crypto/KDFSha256;->gen(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/crypto/KDF$Delegate;)[Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 118
    new-instance v0, Lio/olvid/engine/datatypes/containers/CiphertextAndKey;

    new-instance v1, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-direct {v1, p2}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lio/olvid/engine/datatypes/containers/CiphertextAndKey;-><init>(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/EncryptedBytes;)V
    :try_end_0
    .catch Lio/olvid/engine/encoder/EncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
