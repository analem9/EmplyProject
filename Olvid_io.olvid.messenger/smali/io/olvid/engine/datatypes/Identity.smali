.class public Lio/olvid/engine/datatypes/Identity;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final encryptionPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

.field private identityBytes:[B

.field private final server:Ljava/lang/String;

.field private final serverAuthenticationPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/olvid/engine/datatypes/Identity;->server:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lio/olvid/engine/datatypes/Identity;->serverAuthenticationPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    .line 22
    iput-object p3, p0, Lio/olvid/engine/datatypes/Identity;->encryptionPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lio/olvid/engine/datatypes/Identity;->identityBytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;[B)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/olvid/engine/datatypes/Identity;->server:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lio/olvid/engine/datatypes/Identity;->serverAuthenticationPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    .line 29
    iput-object p3, p0, Lio/olvid/engine/datatypes/Identity;->encryptionPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    .line 30
    iput-object p4, p0, Lio/olvid/engine/datatypes/Identity;->identityBytes:[B

    return-void
.end method

.method public static of([B)Lio/olvid/engine/datatypes/Identity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    :goto_0
    array-length v2, p0

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 39
    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v3, :cond_4

    .line 47
    new-instance v2, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    add-int/lit8 v1, v1, 0x1

    .line 50
    aget-byte v0, p0, v1

    invoke-static {v0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;->getCompactKeyLength(B)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/2addr v0, v1

    .line 54
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;->of([B)Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    move-result-object v1

    .line 57
    aget-byte v3, p0, v0

    invoke-static {v3}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;->getCompactKeyLength(B)I

    move-result v3

    if-ltz v3, :cond_2

    add-int/2addr v3, v0

    .line 61
    invoke-static {p0, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;->of([B)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-result-object v0

    .line 63
    new-instance v3, Lio/olvid/engine/datatypes/Identity;

    invoke-direct {v3, v2, v1, v0, p0}, Lio/olvid/engine/datatypes/Identity;-><init>(Ljava/lang/String;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;[B)V

    return-object v3

    .line 59
    :cond_2
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 52
    :cond_3
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 45
    :cond_4
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 118
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    .line 119
    check-cast p1, Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    .line 121
    array-length v1, v0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 122
    array-length v0, v0

    array-length p1, p1

    :goto_0
    sub-int/2addr v0, p1

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 124
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 125
    aget-byte v3, v0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 126
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public computeUniqueUid()Lio/olvid/engine/datatypes/UID;
    .locals 3

    const-string v0, "sha-256"

    .line 93
    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getHash(Ljava/lang/String;)Lio/olvid/engine/crypto/Hash;

    move-result-object v0

    .line 94
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lio/olvid/engine/crypto/Hash;->digest([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 104
    instance-of v0, p1, Lio/olvid/engine/datatypes/Identity;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    check-cast p1, Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 7

    .line 67
    iget-object v0, p0, Lio/olvid/engine/datatypes/Identity;->identityBytes:[B

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lio/olvid/engine/datatypes/Identity;->server:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 69
    iget-object v1, p0, Lio/olvid/engine/datatypes/Identity;->serverAuthenticationPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;->getCompactKey()[B

    move-result-object v1

    .line 70
    iget-object v2, p0, Lio/olvid/engine/datatypes/Identity;->encryptionPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;->getCompactKey()[B

    move-result-object v2

    .line 71
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    add-int/2addr v3, v4

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lio/olvid/engine/datatypes/Identity;->identityBytes:[B

    .line 72
    iget-object v3, p0, Lio/olvid/engine/datatypes/Identity;->identityBytes:[B

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v3, p0, Lio/olvid/engine/datatypes/Identity;->identityBytes:[B

    array-length v4, v0

    aput-byte v5, v3, v4

    .line 74
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    array-length v6, v1

    invoke-static {v1, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-object v3, p0, Lio/olvid/engine/datatypes/Identity;->identityBytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, v2

    invoke-static {v2, v5, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/Identity;->identityBytes:[B

    return-object v0
.end method

.method public getEncryptionPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/olvid/engine/datatypes/Identity;->encryptionPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/olvid/engine/datatypes/Identity;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getServerAuthenticationPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/olvid/engine/datatypes/Identity;->serverAuthenticationPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 99
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/olvid/engine/datatypes/Identity;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/olvid/engine/datatypes/Identity;->serverAuthenticationPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;->getCompactKey()[B

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/olvid/engine/datatypes/Identity;->encryptionPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;->getCompactKey()[B

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
