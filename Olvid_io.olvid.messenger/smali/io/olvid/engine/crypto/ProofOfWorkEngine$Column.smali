.class Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;
.super Ljava/lang/Object;
.source "ProofOfWorkEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/crypto/ProofOfWorkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Column"
.end annotation


# instance fields
.field final indexes:[I

.field final val:[J


# direct methods
.method constructor <init>([I[B)V
    .locals 7

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 19
    iput-object v0, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->val:[J

    .line 23
    iput-object p1, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->indexes:[I

    const/4 p1, 0x0

    .line 24
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 25
    iget-object v0, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->val:[J

    div-int/lit8 v1, p1, 0x8

    aget-wide v2, v0, v1

    aget-byte v4, p2, p1

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    and-int/lit8 v6, p1, 0x7

    mul-int/lit8 v6, v6, 0x8

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>([I[BI)V
    .locals 7

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 19
    iput-object v0, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->val:[J

    .line 29
    iput-object p1, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->indexes:[I

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 31
    iget-object v0, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->val:[J

    div-int/lit8 v1, p1, 0x8

    aget-wide v2, v0, v1

    add-int v4, p3, p1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    and-int/lit8 v6, p1, 0x7

    mul-int/lit8 v6, v6, 0x8

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>([I[J)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [J

    .line 19
    iput-object v1, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->val:[J

    .line 36
    iput-object p1, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->indexes:[I

    .line 37
    iget-object p1, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->val:[J

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 52
    instance-of v0, p1, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->val:[J

    check-cast p1, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;

    iget-object p1, p1, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->val:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 56
    iget-object v0, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->val:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method public xor(Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;)Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;
    .locals 8

    .line 41
    iget-object v0, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->val:[J

    array-length v0, v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 42
    :goto_0
    iget-object v3, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->val:[J

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 43
    aget-wide v4, v3, v2

    iget-object v3, p1, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->val:[J

    aget-wide v6, v3, v2

    xor-long v3, v4, v6

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iget-object v2, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->indexes:[I

    array-length v3, v2

    iget-object v4, p1, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->indexes:[I

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v3, v3, [I

    .line 46
    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object p1, p1, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->indexes:[I

    iget-object v2, p0, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;->indexes:[I

    array-length v2, v2

    array-length v4, p1

    invoke-static {p1, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    new-instance p1, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;

    invoke-direct {p1, v3, v0}, Lio/olvid/engine/crypto/ProofOfWorkEngine$Column;-><init>([I[J)V

    return-object p1
.end method
