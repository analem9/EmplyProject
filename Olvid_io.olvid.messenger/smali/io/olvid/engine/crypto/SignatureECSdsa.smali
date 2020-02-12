.class abstract Lio/olvid/engine/crypto/SignatureECSdsa;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Lio/olvid/engine/crypto/Signature;


# instance fields
.field private final curve:Lio/olvid/engine/crypto/EdwardCurve;


# direct methods
.method constructor <init>(Lio/olvid/engine/crypto/EdwardCurve;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/olvid/engine/crypto/SignatureECSdsa;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    return-void
.end method


# virtual methods
.method public internalSign(Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;[BLio/olvid/engine/crypto/PRNGService;)[B
    .locals 5

    .line 35
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/crypto/SignatureECSdsa;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget v0, v0, Lio/olvid/engine/crypto/EdwardCurve;->byteLength:I

    .line 36
    array-length v1, p3

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 37
    iget-object v3, p0, Lio/olvid/engine/crypto/SignatureECSdsa;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    invoke-virtual {v3, p4}, Lio/olvid/engine/crypto/EdwardCurve;->generateRandomScalarAndPoint(Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/crypto/EdwardCurve$ScalarAndPoint;

    move-result-object p4

    .line 38
    invoke-virtual {p4}, Lio/olvid/engine/crypto/EdwardCurve$ScalarAndPoint;->getPoint()Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3, v0}, Lio/olvid/engine/encoder/Encoded;->bytesFromBigUInt(Ljava/math/BigInteger;I)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;->getAy()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p2, v0}, Lio/olvid/engine/encoder/Encoded;->bytesFromBigUInt(Ljava/math/BigInteger;I)[B

    move-result-object p2

    invoke-static {p2, v4, v1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    array-length p2, p3

    invoke-static {p3, v4, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    new-instance p2, Lio/olvid/engine/crypto/HashSHA256;

    invoke-direct {p2}, Lio/olvid/engine/crypto/HashSHA256;-><init>()V

    invoke-virtual {p2, v1}, Lio/olvid/engine/crypto/HashSHA256;->digest([B)[B

    move-result-object p2

    .line 43
    invoke-static {p2}, Lio/olvid/engine/encoder/Encoded;->bigUIntFromBytes([B)Ljava/math/BigInteger;

    move-result-object p3

    .line 44
    invoke-virtual {p4}, Lio/olvid/engine/crypto/EdwardCurve$ScalarAndPoint;->getScalar()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;->getA()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p3, p0, Lio/olvid/engine/crypto/SignatureECSdsa;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget-object p3, p3, Lio/olvid/engine/crypto/EdwardCurve;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 p3, v0, 0x20

    .line 46
    new-array p3, p3, [B

    const/16 p4, 0x20

    .line 47
    invoke-static {p2, v4, p3, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    invoke-static {p1, v0}, Lio/olvid/engine/encoder/Encoded;->bytesFromBigUInt(Ljava/math/BigInteger;I)[B

    move-result-object p1

    invoke-static {p1, v4, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lio/olvid/engine/encoder/EncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public internalVerify(Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;[B[B)Z
    .locals 7

    const/4 v0, 0x0

    .line 56
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/crypto/SignatureECSdsa;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget v1, v1, Lio/olvid/engine/crypto/EdwardCurve;->byteLength:I

    .line 57
    array-length v2, p3

    add-int/lit8 v3, v1, 0x20

    if-eq v2, v3, :cond_0

    return v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;->getAx()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;->getAy()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/crypto/SignatureECSdsa;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    invoke-static {v2, v4, v5}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->noCheckFactory(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object v2

    const/16 v4, 0x20

    .line 62
    invoke-static {p3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 63
    invoke-static {v5}, Lio/olvid/engine/encoder/Encoded;->bigUIntFromBytes([B)Ljava/math/BigInteger;

    move-result-object v6

    .line 64
    invoke-static {p3, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p3

    invoke-static {p3}, Lio/olvid/engine/encoder/Encoded;->bigUIntFromBytes([B)Ljava/math/BigInteger;

    move-result-object p3

    .line 65
    iget-object v3, p0, Lio/olvid/engine/crypto/SignatureECSdsa;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget-object v4, p0, Lio/olvid/engine/crypto/SignatureECSdsa;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    iget-object v4, v4, Lio/olvid/engine/crypto/EdwardCurve;->G:Lio/olvid/engine/datatypes/EdwardCurvePoint;

    invoke-virtual {v3, p3, v4, v6, v2}, Lio/olvid/engine/crypto/EdwardCurve;->mulAdd(Ljava/math/BigInteger;Lio/olvid/engine/datatypes/EdwardCurvePoint;Ljava/math/BigInteger;Lio/olvid/engine/datatypes/EdwardCurvePoint;)[Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p3

    .line 67
    array-length v2, p2

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 68
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;->getAy()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1, v1}, Lio/olvid/engine/encoder/Encoded;->bytesFromBigUInt(Ljava/math/BigInteger;I)[B

    move-result-object p1

    invoke-static {p1, v0, v2, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    array-length p1, p2

    invoke-static {p2, v0, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object v3, p3, p2

    .line 73
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3, v1}, Lio/olvid/engine/encoder/Encoded;->bytesFromBigUInt(Ljava/math/BigInteger;I)[B

    move-result-object v3

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    new-instance v3, Lio/olvid/engine/crypto/HashSHA256;

    invoke-direct {v3}, Lio/olvid/engine/crypto/HashSHA256;-><init>()V

    invoke-virtual {v3, v2}, Lio/olvid/engine/crypto/HashSHA256;->digest([B)[B

    move-result-object v3

    .line 75
    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3
    :try_end_0
    .catch Lio/olvid/engine/encoder/EncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return v0
.end method
