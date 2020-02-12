.class public Lio/olvid/engine/encoder/Encoded;
.super Ljava/lang/Object;
.source "Encoded.java"


# static fields
.field private static final BYTE_IDS_BIG_UINT:B = -0x80t

.field private static final BYTE_IDS_BOOLEAN:B = 0x2t

.field private static final BYTE_IDS_BYTE_ARRAY:B = 0x0t

.field private static final BYTE_IDS_DICTIONARY:B = 0x4t

.field private static final BYTE_IDS_INT:B = 0x1t

.field private static final BYTE_IDS_LIST:B = 0x3t

.field private static final BYTE_IDS_PRV_KEY:B = -0x6et

.field private static final BYTE_IDS_PUB_KEY:B = -0x6ft

.field private static final BYTE_IDS_SYM_KEY:B = -0x70t

.field public static final ENCODED_HEADER_LENGTH:I = 0x5

.field public static final INT_ENCODING_LENGTH:I = 0x8


# instance fields
.field protected data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    return-void
.end method

.method public static bigUIntFromBytes([B)Ljava/math/BigInteger;
    .locals 2

    .line 373
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static bytesFromBigUInt(Ljava/math/BigInteger;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/EncodingException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    mul-int/lit8 v1, p1, 0x8

    if-gt v0, v1, :cond_1

    .line 190
    new-array v0, p1, [B

    .line 191
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 192
    array-length v1, p0

    sub-int v1, p1, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 194
    invoke-static {p0, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 196
    :cond_0
    array-length p1, p0

    invoke-static {p0, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    .line 188
    :cond_1
    new-instance p0, Lio/olvid/engine/encoder/EncodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/EncodingException;-><init>()V

    throw p0
.end method

.method static bytesFromUInt32(I)[B
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x3

    and-int/lit16 v4, p0, 0xff

    int-to-byte v4, v4

    .line 461
    aput-byte v4, v1, v3

    ushr-int/lit8 p0, p0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static of(J)Lio/olvid/engine/encoder/Encoded;
    .locals 6

    const/16 v0, 0xd

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/4 v3, 0x4

    aput-byte v1, v0, v3

    :goto_0
    if-ge v2, v1, :cond_0

    rsub-int/lit8 v3, v2, 0xc

    const-wide/16 v4, 0xff

    and-long/2addr v4, p0

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 126
    aput-byte v4, v0, v3

    ushr-long/2addr p0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_0
    new-instance p0, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p0, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    return-object p0
.end method

.method public static of(Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/encoder/Encoded;
    .locals 0

    .line 83
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;
    .locals 0

    .line 87
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/encoder/Encoded;
    .locals 0

    .line 99
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Seed;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;)Lio/olvid/engine/encoder/Encoded;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 155
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;->getAlgorithmClass()B

    move-result v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;->getAlgorithmImplementation()B

    move-result v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    .line 156
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;->getKey()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/util/HashMap;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    aput-object v1, v0, v3

    aput-object p0, v0, v4

    const/16 p0, -0x6e

    .line 157
    invoke-static {p0, v0}, Lio/olvid/engine/encoder/Encoded;->pack(B[Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;)Lio/olvid/engine/encoder/Encoded;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 149
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;->getAlgorithmClass()B

    move-result v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;->getAlgorithmImplementation()B

    move-result v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;->getKey()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/util/HashMap;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    aput-object v1, v0, v3

    aput-object p0, v0, v4

    const/16 p0, -0x6f

    .line 151
    invoke-static {p0, v0}, Lio/olvid/engine/encoder/Encoded;->pack(B[Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 161
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;->getAlgorithmClass()B

    move-result v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;->getAlgorithmImplementation()B

    move-result v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;->getKey()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/util/HashMap;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    aput-object v1, v0, v3

    aput-object p0, v0, v4

    const/16 p0, -0x70

    .line 163
    invoke-static {p0, v0}, Lio/olvid/engine/encoder/Encoded;->pack(B[Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 103
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/math/BigInteger;I)Lio/olvid/engine/encoder/Encoded;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/EncodingException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    mul-int/lit8 v1, p1, 0x8

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x5

    .line 171
    new-array v0, v0, [B

    const/16 v1, -0x80

    const/4 v2, 0x0

    .line 172
    aput-byte v1, v0, v2

    .line 173
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->bytesFromUInt32(I)[B

    move-result-object v1

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 174
    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 176
    array-length v1, p0

    sub-int v1, p1, v1

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-ne v1, v3, :cond_0

    .line 178
    invoke-static {p0, v4, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int/2addr v1, v5

    .line 180
    array-length p1, p0

    invoke-static {p0, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    :goto_0
    new-instance p0, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p0, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    return-object p0

    .line 169
    :cond_1
    new-instance p0, Lio/olvid/engine/encoder/EncodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/EncodingException;-><init>()V

    throw p0
.end method

.method public static of(Ljava/util/HashMap;)Lio/olvid/engine/encoder/Encoded;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)",
            "Lio/olvid/engine/encoder/Encoded;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 225
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/olvid/engine/datatypes/DictionaryKey;

    iget-object v5, v5, Lio/olvid/engine/datatypes/DictionaryKey;->data:[B

    array-length v5, v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    .line 226
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/encoder/Encoded;

    iget-object v3, v3, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v2, 0x5

    .line 228
    new-array v0, v0, [B

    const/4 v3, 0x4

    .line 229
    aput-byte v3, v0, v1

    .line 230
    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->bytesFromUInt32(I)[B

    move-result-object v2

    const/4 v5, 0x1

    .line 231
    invoke-static {v2, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 234
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/DictionaryKey;

    iget-object v3, v3, Lio/olvid/engine/datatypes/DictionaryKey;->data:[B

    invoke-static {v3}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    .line 235
    iget-object v5, v3, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iget-object v3, v3, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v3, v3

    add-int/2addr v4, v3

    .line 237
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/encoder/Encoded;

    .line 238
    iget-object v3, v2, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object v2, v2, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v2, v2

    add-int/2addr v4, v2

    goto :goto_1

    .line 241
    :cond_1
    new-instance p0, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p0, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    return-object p0
.end method

.method public static of(Ljava/util/UUID;)Lio/olvid/engine/encoder/Encoded;
    .locals 0

    .line 115
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of(Z)Lio/olvid/engine/encoder/Encoded;
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    if-eqz p0, :cond_0

    aput-byte v3, v0, v1

    goto :goto_0

    :cond_0
    aput-byte v2, v0, v1

    .line 144
    :goto_0
    new-instance p0, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p0, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    return-object p0
.end method

.method public static of([B)Lio/olvid/engine/encoder/Encoded;
    .locals 6

    .line 61
    array-length v0, p0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 62
    aput-byte v2, v0, v2

    .line 63
    array-length v3, p0

    invoke-static {v3}, Lio/olvid/engine/encoder/Encoded;->bytesFromUInt32(I)[B

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x4

    .line 64
    invoke-static {v3, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    array-length v3, p0

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    new-instance p0, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p0, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    return-object p0
.end method

.method public static of([Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;
    .locals 3

    .line 91
    array-length v0, p0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    const/4 v1, 0x0

    .line 92
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 93
    aget-object v2, p0, v1

    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of([Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;
    .locals 3

    .line 74
    array-length v0, p0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    const/4 v1, 0x0

    .line 75
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 76
    aget-object v2, p0, v1

    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;
    .locals 1

    const/4 v0, 0x3

    .line 202
    invoke-static {v0, p0}, Lio/olvid/engine/encoder/Encoded;->pack(B[Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of([Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;
    .locals 3

    .line 107
    array-length v0, p0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    const/4 v1, 0x0

    .line 108
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 109
    aget-object v2, p0, v1

    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method private static pack(B[Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;
    .locals 7

    .line 207
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    .line 208
    iget-object v4, v4, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v3, 0x5

    .line 210
    new-array v0, v0, [B

    .line 211
    aput-byte p0, v0, v1

    .line 212
    invoke-static {v3}, Lio/olvid/engine/encoder/Encoded;->bytesFromUInt32(I)[B

    move-result-object p0

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 213
    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    array-length p0, p1

    const/4 v2, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x5

    :goto_1
    if-ge v2, p0, :cond_1

    aget-object v4, p1, v2

    .line 216
    iget-object v5, v4, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v6, v5

    invoke-static {v5, v1, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget-object v4, v4, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 219
    :cond_1
    new-instance p0, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p0, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    return-object p0
.end method

.method static uint32FromBytes([B)I
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-static {p0, v0}, Lio/olvid/engine/encoder/Encoded;->uint32FromBytes([BI)I

    move-result p0

    return p0
.end method

.method static uint32FromBytes([BI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int v2, v0, p1

    .line 475
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private unpack()[Lio/olvid/engine/encoder/Encoded;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x5

    :goto_0
    add-int/lit8 v2, v1, 0x4

    .line 387
    iget-object v3, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v4, v3

    if-ge v2, v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 388
    invoke-static {v3, v2}, Lio/olvid/engine/encoder/Encoded;->uint32FromBytes([BI)I

    move-result v2

    add-int/lit8 v3, v1, 0x5

    add-int/2addr v3, v2

    .line 389
    iget-object v4, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v5, v4

    if-gt v3, v5, :cond_0

    .line 392
    new-instance v5, Lio/olvid/engine/encoder/Encoded;

    invoke-static {v4, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v5, v3}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    .line 393
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    goto :goto_0

    .line 390
    :cond_0
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Lio/olvid/engine/encoder/Encoded;

    .line 396
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method


# virtual methods
.method public decodeBigUInt()Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v1, -0x80

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->isEncodedValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v3, 0x5

    array-length v4, v2

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0

    .line 367
    :cond_0
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0
.end method

.method public decodeBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 321
    array-length v0, v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->isEncodedValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v2, 0x5

    aget-byte v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 330
    :cond_0
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    :cond_1
    return v1

    .line 322
    :cond_2
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 319
    :cond_3
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0
.end method

.method public decodeBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->isEncodedValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v1, 0x5

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 273
    :cond_0
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 270
    :cond_1
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0
.end method

.method public decodeDictionary()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->isEncodedValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x5

    :goto_0
    add-int/lit8 v2, v1, 0x4

    .line 405
    iget-object v3, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v4, v3

    if-ge v2, v4, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 406
    invoke-static {v3, v2}, Lio/olvid/engine/encoder/Encoded;->uint32FromBytes([BI)I

    move-result v2

    add-int/lit8 v3, v1, 0x5

    add-int/2addr v3, v2

    .line 407
    iget-object v4, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v5, v4

    if-gt v3, v5, :cond_2

    .line 411
    new-instance v5, Lio/olvid/engine/datatypes/DictionaryKey;

    new-instance v6, Lio/olvid/engine/encoder/Encoded;

    invoke-static {v4, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v6, v3}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {v6}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v3

    invoke-direct {v5, v3}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>([B)V

    add-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x5

    .line 414
    iget-object v3, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v4, v3

    if-gt v2, v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    .line 417
    invoke-static {v3, v4}, Lio/olvid/engine/encoder/Encoded;->uint32FromBytes([BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 418
    iget-object v4, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v6, v4

    if-gt v2, v6, :cond_0

    .line 421
    new-instance v6, Lio/olvid/engine/encoder/Encoded;

    invoke-static {v4, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v6, v2}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v1, v3

    .line 423
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 419
    :cond_0
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 415
    :cond_1
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 408
    :cond_2
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    :cond_3
    return-object v0

    .line 401
    :cond_4
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0
.end method

.method public decodeEncryptedData()Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 299
    new-instance v0, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    return-object v0
.end method

.method public decodeIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    return-object v0
.end method

.method public decodeIdentityArray()[Lio/olvid/engine/datatypes/Identity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 439
    array-length v1, v0

    new-array v1, v1, [Lio/olvid/engine/datatypes/Identity;

    const/4 v2, 0x0

    .line 440
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 441
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public decodeList()[Lio/olvid/engine/encoder/Encoded;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->isEncodedValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0}, Lio/olvid/engine/encoder/Encoded;->unpack()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0

    .line 379
    :cond_0
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0
.end method

.method public decodeLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 306
    array-length v0, v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->isEncodedValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_0

    shl-long/2addr v2, v0

    .line 312
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    add-int/lit8 v4, v1, 0x5

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2

    .line 307
    :cond_1
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 304
    :cond_2
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0
.end method

.method public decodePrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, -0x6e

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->isEncodedValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    invoke-direct {p0}, Lio/olvid/engine/encoder/Encoded;->unpack()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 347
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 348
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v2

    .line 349
    array-length v4, v2

    if-ne v4, v3, :cond_0

    const/4 v3, 0x1

    .line 350
    aget-object v0, v0, v3

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeDictionary()Ljava/util/HashMap;

    move-result-object v0

    .line 351
    aget-byte v1, v2, v1

    aget-byte v2, v2, v3

    invoke-static {v1, v2, v0}, Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;->of(BBLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    move-result-object v0

    return-object v0

    .line 349
    :cond_0
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 347
    :cond_1
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 345
    :cond_2
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0
.end method

.method public decodePublicKey()Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, -0x6f

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->isEncodedValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    invoke-direct {p0}, Lio/olvid/engine/encoder/Encoded;->unpack()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 337
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 338
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v2

    .line 339
    array-length v4, v2

    if-ne v4, v3, :cond_0

    const/4 v3, 0x1

    .line 340
    aget-object v0, v0, v3

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeDictionary()Ljava/util/HashMap;

    move-result-object v0

    .line 341
    aget-byte v1, v2, v1

    aget-byte v2, v2, v3

    invoke-static {v1, v2, v0}, Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;->of(BBLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    move-result-object v0

    return-object v0

    .line 339
    :cond_0
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 337
    :cond_1
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 335
    :cond_2
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0
.end method

.method public decodeSeed()Lio/olvid/engine/datatypes/Seed;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 291
    new-instance v0, Lio/olvid/engine/datatypes/Seed;

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    return-object v0
.end method

.method public decodeString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public decodeStringArray()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 448
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 449
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 450
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, -0x70

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->isEncodedValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    invoke-direct {p0}, Lio/olvid/engine/encoder/Encoded;->unpack()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 357
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 358
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v2

    .line 359
    array-length v4, v2

    if-ne v4, v3, :cond_0

    const/4 v3, 0x1

    .line 360
    aget-object v0, v0, v3

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeDictionary()Ljava/util/HashMap;

    move-result-object v0

    .line 361
    aget-byte v1, v2, v1

    aget-byte v2, v2, v3

    invoke-static {v1, v2, v0}, Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;->of(BBLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object v0

    return-object v0

    .line 359
    :cond_0
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 357
    :cond_1
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 355
    :cond_2
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0
.end method

.method public decodeUid()Lio/olvid/engine/datatypes/UID;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 283
    new-instance v0, Lio/olvid/engine/datatypes/UID;

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    return-object v0
.end method

.method public decodeUidArray()[Lio/olvid/engine/datatypes/UID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 430
    array-length v1, v0

    new-array v1, v1, [Lio/olvid/engine/datatypes/UID;

    const/4 v2, 0x0

    .line 431
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 432
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public decodeUuid()Ljava/util/UUID;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 55
    instance-of v0, p1, Lio/olvid/engine/encoder/Encoded;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    check-cast p1, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    return-object v0
.end method

.method public isEncodedValue()Z
    .locals 5

    .line 245
    iget-object v0, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/olvid/engine/encoder/Encoded;->uint32FromBytes([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    .line 246
    iget-object v2, p0, Lio/olvid/engine/encoder/Encoded;->data:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_0

    return v4

    .line 249
    :cond_0
    aget-byte v0, v2, v4

    const/16 v2, -0x80

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    return v4

    :cond_1
    :pswitch_0
    return v1

    :pswitch_data_0
    .packed-switch -0x70
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
