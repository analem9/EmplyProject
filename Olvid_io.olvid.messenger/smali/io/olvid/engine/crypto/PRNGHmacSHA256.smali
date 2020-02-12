.class Lio/olvid/engine/crypto/PRNGHmacSHA256;
.super Ljava/lang/Object;
.source "PRNG.java"

# interfaces
.implements Lio/olvid/engine/crypto/PRNG;


# instance fields
.field state_k:[B

.field state_v:[B


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Seed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 18
    iput-object v1, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_k:[B

    new-array v0, v0, [B

    .line 19
    iput-object v0, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    .line 22
    iget-object v0, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_k:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 23
    iget-object v0, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 24
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Seed;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/engine/crypto/PRNGHmacSHA256;->update([B)V

    return-void
.end method

.method private update([B)V
    .locals 6

    .line 29
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 30
    iget-object v2, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    iget-object v3, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v2, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    array-length v2, v2

    aput-byte v4, v0, v2

    .line 32
    iget-object v2, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    array-length v2, v2

    add-int/2addr v2, v1

    array-length v3, p1

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    new-instance v2, Lio/olvid/engine/crypto/MACHmacSha256;

    invoke-direct {v2}, Lio/olvid/engine/crypto/MACHmacSha256;-><init>()V

    iget-object v3, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_k:[B

    invoke-static {v3}, Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;->of([B)Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lio/olvid/engine/crypto/MACHmacSha256;->digest(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B)[B

    move-result-object v2

    iput-object v2, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_k:[B

    .line 34
    new-instance v2, Lio/olvid/engine/crypto/MACHmacSha256;

    invoke-direct {v2}, Lio/olvid/engine/crypto/MACHmacSha256;-><init>()V

    iget-object v3, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_k:[B

    invoke-static {v3}, Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;->of([B)Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    move-result-object v3

    iget-object v5, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    invoke-virtual {v2, v3, v5}, Lio/olvid/engine/crypto/MACHmacSha256;->digest(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B)[B

    move-result-object v2

    iput-object v2, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    .line 35
    array-length v2, p1

    if-lez v2, :cond_0

    .line 36
    iget-object v2, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    iget-object v3, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget-object v2, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    array-length v2, v2

    aput-byte v1, v0, v2

    .line 38
    iget-object v2, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    array-length v2, v2

    add-int/2addr v2, v1

    array-length v1, p1

    invoke-static {p1, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    new-instance p1, Lio/olvid/engine/crypto/MACHmacSha256;

    invoke-direct {p1}, Lio/olvid/engine/crypto/MACHmacSha256;-><init>()V

    iget-object v1, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_k:[B

    invoke-static {v1}, Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;->of([B)Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lio/olvid/engine/crypto/MACHmacSha256;->digest(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_k:[B

    .line 40
    new-instance p1, Lio/olvid/engine/crypto/MACHmacSha256;

    invoke-direct {p1}, Lio/olvid/engine/crypto/MACHmacSha256;-><init>()V

    iget-object v0, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_k:[B

    invoke-static {v0}, Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;->of([B)Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    invoke-virtual {p1, v0, v1}, Lio/olvid/engine/crypto/MACHmacSha256;->digest(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public bigInt(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6

    .line 60
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 62
    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v3, v3, 0x8

    sub-int/2addr v0, v3

    shl-int v0, v2, v0

    sub-int/2addr v0, v2

    .line 65
    :cond_0
    invoke-virtual {p0, v1}, Lio/olvid/engine/crypto/PRNGHmacSHA256;->bytes(I)[B

    move-result-object v3

    const/4 v4, 0x0

    .line 66
    aget-byte v5, v3, v4

    and-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 67
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 68
    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_0

    return-object v4
.end method

.method public bytes(I)[B
    .locals 7

    .line 47
    new-array v0, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p1, -0x1

    const/16 v4, 0x20

    .line 48
    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_0

    .line 50
    :try_start_0
    new-instance v3, Lio/olvid/engine/crypto/MACHmacSha256;

    invoke-direct {v3}, Lio/olvid/engine/crypto/MACHmacSha256;-><init>()V

    iget-object v5, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_k:[B

    invoke-static {v5}, Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;->of([B)Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    move-result-object v5

    iget-object v6, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    invoke-virtual {v3, v5, v6}, Lio/olvid/engine/crypto/MACHmacSha256;->digest(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B)[B

    move-result-object v3

    iput-object v3, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    .line 51
    iget-object v3, p0, Lio/olvid/engine/crypto/PRNGHmacSHA256;->state_v:[B

    mul-int/lit8 v5, v2, 0x20

    sub-int v6, p1, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v1, [B

    .line 54
    invoke-direct {p0, p1}, Lio/olvid/engine/crypto/PRNGHmacSHA256;->update([B)V

    return-object v0
.end method
