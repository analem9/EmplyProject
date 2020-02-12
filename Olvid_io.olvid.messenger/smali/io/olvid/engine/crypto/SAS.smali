.class public abstract Lio/olvid/engine/crypto/SAS;
.super Ljava/lang/Object;
.source "SAS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compute(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;I)[B
    .locals 3

    .line 11
    new-instance v0, Lio/olvid/engine/datatypes/Seed;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/olvid/engine/datatypes/Seed;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Lio/olvid/engine/datatypes/Seed;-><init>([Lio/olvid/engine/datatypes/Seed;)V

    const-string p1, "prng_hmac_sha-256"

    .line 12
    invoke-static {p1, v0}, Lio/olvid/engine/crypto/Suite;->getPRNG(Ljava/lang/String;Lio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/crypto/PRNG;

    move-result-object p1

    const-wide/16 v0, 0xa

    .line 13
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p2

    .line 14
    invoke-interface {p1, p2}, Lio/olvid/engine/crypto/PRNG;->bigInt(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/16 p2, 0xa

    .line 15
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static computeDouble(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Identity;I)[B
    .locals 4

    const-string v0, "sha-256"

    .line 19
    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getHash(Ljava/lang/String;)Lio/olvid/engine/crypto/Hash;

    move-result-object v0

    .line 20
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    .line 21
    array-length v1, p2

    iget v2, p0, Lio/olvid/engine/datatypes/Seed;->length:I

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 22
    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Seed;->getBytes()[B

    move-result-object v2

    array-length p2, p2

    iget p0, p0, Lio/olvid/engine/datatypes/Seed;->length:I

    invoke-static {v2, v3, v1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    invoke-interface {v0, v1}, Lio/olvid/engine/crypto/Hash;->digest([B)[B

    move-result-object p0

    .line 26
    array-length p2, p0

    iget v0, p1, Lio/olvid/engine/datatypes/Seed;->length:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    new-array p2, p2, [B

    .line 27
    :goto_0
    array-length v0, p2

    if-ge v3, v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Seed;->getBytes()[B

    move-result-object v0

    aget-byte v0, v0, v3

    aget-byte v1, p0, v3

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {p0, p2}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    const-string p1, "prng_hmac_sha-256"

    .line 32
    invoke-static {p1, p0}, Lio/olvid/engine/crypto/Suite;->getPRNG(Ljava/lang/String;Lio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/crypto/PRNG;

    move-result-object p0

    const-wide/16 p1, 0xa

    .line 33
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    mul-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 34
    invoke-interface {p0, p1}, Lio/olvid/engine/crypto/PRNG;->bigInt(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0xa

    .line 35
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method
