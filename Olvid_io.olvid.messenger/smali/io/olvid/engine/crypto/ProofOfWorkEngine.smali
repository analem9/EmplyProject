.class public Lio/olvid/engine/crypto/ProofOfWorkEngine;
.super Ljava/lang/Object;
.source "ProofOfWorkEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;
    }
.end annotation


# static fields
.field private static final N:I = 0x100

.field private static final R:I = 0x80

.field private static final W:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateMatrix(Lio/olvid/engine/datatypes/Seed;)[Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;
    .locals 7

    const/16 v0, 0x100

    new-array v1, v0, [Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;

    const-string v2, "prng_hmac_sha-256"

    .line 62
    invoke-static {v2, p0}, Lio/olvid/engine/crypto/Suite;->getPRNG(Ljava/lang/String;Lio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/crypto/PRNG;

    move-result-object p0

    const/16 v2, 0x1000

    .line 63
    invoke-interface {p0, v2}, Lio/olvid/engine/crypto/PRNG;->bytes(I)[B

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 65
    new-instance v4, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;

    const/4 v5, 0x1

    new-array v5, v5, [I

    aput v3, v5, v2

    mul-int/lit16 v6, v3, 0x80

    div-int/lit8 v6, v6, 0x8

    invoke-direct {v4, v5, p0, v6}, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;-><init>([I[BI)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static solveChallenge(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 72
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 75
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeSeed()Lio/olvid/engine/datatypes/Seed;

    move-result-object v1

    const/4 v2, 0x1

    .line 76
    aget-object p0, p0, v2

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object p0

    .line 77
    array-length v3, p0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 80
    new-instance v3, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;

    new-array v4, v0, [I

    invoke-direct {v3, v4, p0}, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;-><init>([I[B)V

    .line 81
    invoke-static {v1}, Lio/olvid/engine/crypto/ProofOfWorkEngine;->generateMatrix(Lio/olvid/engine/datatypes/Seed;)[Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;

    move-result-object p0

    .line 83
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 84
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :goto_0
    const/16 v5, 0x100

    if-ge v2, v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_0

    .line 88
    aget-object v6, p0, v2

    aget-object v7, p0, v5

    invoke-virtual {v6, v7}, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->xor(Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;)Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;

    move-result-object v6

    .line 89
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v6, v3}, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->xor(Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;)Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 96
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;

    .line 97
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 98
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;

    .line 101
    invoke-virtual {p0, v1}, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->xor(Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;)Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;

    move-result-object p0

    iget-object p0, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->indexes:[I

    .line 102
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 103
    array-length v1, p0

    new-array v1, v1, [Lio/olvid/engine/encoder/Encoded;

    .line 104
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 105
    aget v2, p0, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 107
    :cond_2
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "No solution was found for this challenge..."

    .line 111
    invoke-static {p0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_4
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 73
    :cond_5
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0
.end method
