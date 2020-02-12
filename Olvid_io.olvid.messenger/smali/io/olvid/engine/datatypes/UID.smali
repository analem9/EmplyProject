.class public Lio/olvid/engine/datatypes/UID;
.super Ljava/lang/Object;
.source "UID.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final UID_LENGTH:I = 0x20


# instance fields
.field private final uid:[B


# direct methods
.method public constructor <init>(Lio/olvid/engine/crypto/PRNG;)V
    .locals 1

    const/16 v0, 0x20

    .line 26
    invoke-interface {p1, v0}, Lio/olvid/engine/crypto/PRNG;->bytes(I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p1}, Lio/olvid/engine/Logger;->fromHexString(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 18
    iput-object p1, p0, Lio/olvid/engine/datatypes/UID;->uid:[B

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static fromLong(J)Lio/olvid/engine/datatypes/UID;
    .locals 6

    const/16 v0, 0x20

    new-array v1, v0, [B

    const-wide/16 v2, 0xff

    and-long v4, p0, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    const/4 v5, 0x0

    aput-byte v4, v1, v5

    const/16 v4, 0x8

    shr-long v4, p0, v4

    and-long/2addr v4, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    const/16 v4, 0x10

    shr-long v4, p0, v4

    and-long/2addr v4, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    const/4 v5, 0x2

    aput-byte v4, v1, v5

    const/16 v4, 0x18

    shr-long v4, p0, v4

    and-long/2addr v4, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    const/4 v5, 0x3

    aput-byte v4, v1, v5

    shr-long v4, p0, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x4

    aput-byte v0, v1, v4

    const/16 v0, 0x28

    shr-long v4, p0, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x5

    aput-byte v0, v1, v4

    const/16 v0, 0x30

    shr-long v4, p0, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x6

    aput-byte v0, v1, v4

    const/16 v0, 0x38

    shr-long/2addr p0, v0

    and-long/2addr p0, v2

    long-to-int p1, p0

    int-to-byte p0, p1

    const/4 p1, 0x7

    aput-byte p0, v1, p1

    .line 39
    new-instance p0, Lio/olvid/engine/datatypes/UID;

    invoke-direct {p0, v1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6

    .line 66
    check-cast p1, Lio/olvid/engine/datatypes/UID;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 68
    iget-object v2, p0, Lio/olvid/engine/datatypes/UID;->uid:[B

    aget-byte v3, v2, v1

    iget-object v4, p1, Lio/olvid/engine/datatypes/UID;->uid:[B

    aget-byte v5, v4, v1

    if-eq v3, v5, :cond_0

    .line 69
    aget-byte p1, v2, v1

    and-int/lit16 p1, p1, 0xff

    aget-byte v0, v4, v1

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 53
    instance-of v0, p1, Lio/olvid/engine/datatypes/UID;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 56
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/UID;->uid:[B

    check-cast p1, Lio/olvid/engine/datatypes/UID;

    iget-object p1, p1, Lio/olvid/engine/datatypes/UID;->uid:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 43
    iget-object v0, p0, Lio/olvid/engine/datatypes/UID;->uid:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    iget-object v0, p0, Lio/olvid/engine/datatypes/UID;->uid:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/olvid/engine/datatypes/UID;->uid:[B

    invoke-static {v0}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
