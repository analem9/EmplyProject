.class Lio/olvid/engine/crypto/CommitmentWithSHA256;
.super Ljava/lang/Object;
.source "Commitment.java"

# interfaces
.implements Lio/olvid/engine/crypto/Commitment;


# static fields
.field static final COMMITMENT_RANDOM_LENGTH:I = 0x20


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commit([B[BLio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/crypto/Commitment$CommitmentOutput;
    .locals 5

    .line 27
    new-instance v0, Lio/olvid/engine/crypto/HashSHA256;

    invoke-direct {v0}, Lio/olvid/engine/crypto/HashSHA256;-><init>()V

    const/16 v1, 0x20

    .line 28
    invoke-interface {p3, v1}, Lio/olvid/engine/crypto/PRNGService;->bytes(I)[B

    move-result-object p3

    .line 29
    array-length v2, p2

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 30
    array-length v3, p2

    const/4 v4, 0x0

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    array-length v3, p2

    invoke-static {p3, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    array-length p3, p1

    array-length p2, p2

    add-int/2addr p3, p2

    add-int/2addr p3, v1

    new-array p2, p3, [B

    .line 34
    array-length p3, p1

    invoke-static {p1, v4, p2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    array-length p1, p1

    array-length p3, v2

    invoke-static {v2, v4, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-virtual {v0, p2}, Lio/olvid/engine/crypto/HashSHA256;->digest([B)[B

    move-result-object p1

    .line 39
    new-instance p2, Lio/olvid/engine/crypto/Commitment$CommitmentOutput;

    invoke-direct {p2, p1, v2}, Lio/olvid/engine/crypto/Commitment$CommitmentOutput;-><init>([B[B)V

    return-object p2
.end method

.method public open([B[B[B)[B
    .locals 4

    .line 44
    new-instance v0, Lio/olvid/engine/crypto/HashSHA256;

    invoke-direct {v0}, Lio/olvid/engine/crypto/HashSHA256;-><init>()V

    .line 45
    array-length v1, p1

    array-length v2, p3

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 46
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    array-length p1, p1

    array-length v2, p3

    invoke-static {p3, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    invoke-virtual {v0, v1}, Lio/olvid/engine/crypto/HashSHA256;->digest([B)[B

    move-result-object p1

    .line 50
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    array-length p1, p3

    add-int/lit8 p1, p1, -0x20

    invoke-static {p3, v3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
