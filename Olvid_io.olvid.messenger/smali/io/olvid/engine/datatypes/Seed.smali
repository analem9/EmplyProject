.class public Lio/olvid/engine/datatypes/Seed;
.super Ljava/lang/Object;
.source "Seed.java"


# static fields
.field public static final MIN_SEED_LENGTH:I = 0x20


# instance fields
.field public final length:I

.field private final seed:[B


# direct methods
.method public constructor <init>(Lio/olvid/engine/crypto/PRNG;)V
    .locals 1

    const/16 v0, 0x20

    .line 39
    invoke-interface {p1, v0}, Lio/olvid/engine/crypto/PRNG;->bytes(I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    array-length v0, p1

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 20
    iput-object p1, p0, Lio/olvid/engine/datatypes/Seed;->seed:[B

    .line 21
    array-length p1, p1

    iput p1, p0, Lio/olvid/engine/datatypes/Seed;->length:I

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public varargs constructor <init>([Lio/olvid/engine/datatypes/Seed;)V
    .locals 8

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    .line 27
    iget v4, v4, Lio/olvid/engine/datatypes/Seed;->length:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    new-array v0, v3, [B

    iput-object v0, p0, Lio/olvid/engine/datatypes/Seed;->seed:[B

    .line 30
    iput v3, p0, Lio/olvid/engine/datatypes/Seed;->length:I

    .line 32
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 33
    iget-object v5, v4, Lio/olvid/engine/datatypes/Seed;->seed:[B

    iget-object v6, p0, Lio/olvid/engine/datatypes/Seed;->seed:[B

    iget v7, v4, Lio/olvid/engine/datatypes/Seed;->length:I

    invoke-static {v5, v1, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget v4, v4, Lio/olvid/engine/datatypes/Seed;->length:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static varargs of([Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)Lio/olvid/engine/datatypes/Seed;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 50
    new-instance v0, Lio/olvid/engine/datatypes/Seed;

    const/16 v1, 0x20

    new-array v2, v1, [B

    invoke-direct {v0, v2}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    const-string v2, "prng_hmac_sha-256"

    .line 51
    invoke-static {v2, v0}, Lio/olvid/engine/crypto/Suite;->getPRNG(Ljava/lang/String;Lio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/crypto/PRNG;

    move-result-object v0

    .line 54
    array-length v2, p0

    new-array v2, v2, [Lio/olvid/engine/datatypes/EncryptedBytes;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 55
    :goto_0
    array-length v6, p0

    if-ge v4, v6, :cond_0

    .line 56
    aget-object v6, p0, v4

    invoke-static {v6}, Lio/olvid/engine/crypto/Suite;->getAuthEnc(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v6

    .line 57
    aget-object v7, p0, v4

    new-array v8, v1, [B

    invoke-interface {v6, v7, v8, v0}, Lio/olvid/engine/crypto/AuthEnc;->encrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[BLio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v6

    aput-object v6, v2, v4

    .line 58
    aget-object v6, v2, v4

    iget v6, v6, Lio/olvid/engine/datatypes/EncryptedBytes;->length:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    :cond_0
    new-array v0, v5, [B

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 62
    :goto_1
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 63
    aget-object v5, v2, v1

    iget-object v5, v5, Lio/olvid/engine/datatypes/EncryptedBytes;->bytes:[B

    aget-object v6, v2, v1

    iget v6, v6, Lio/olvid/engine/datatypes/EncryptedBytes;->length:I

    invoke-static {v5, v3, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    aget-object v5, v2, v1

    iget v5, v5, Lio/olvid/engine/datatypes/EncryptedBytes;->length:I

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string p0, "sha-256"

    .line 66
    invoke-static {p0}, Lio/olvid/engine/crypto/Suite;->getHash(Ljava/lang/String;)Lio/olvid/engine/crypto/Hash;

    move-result-object p0

    .line 67
    new-instance v1, Lio/olvid/engine/datatypes/Seed;

    invoke-interface {p0, v0}, Lio/olvid/engine/crypto/Hash;->digest([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    return-object v1

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 43
    iget-object v0, p0, Lio/olvid/engine/datatypes/Seed;->seed:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/olvid/engine/datatypes/Seed;->seed:[B

    invoke-static {v0}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
