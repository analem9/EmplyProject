.class public Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;
.super Ljava/lang/Object;
.source "ObvTrustOrigin.java"


# static fields
.field public static final DIRECT_TYPE:I = 0x0

.field public static final GROUP_TYPE:I = 0x2

.field public static final INTRODUCTION_TYPE:I = 0x1


# instance fields
.field private final groupId:[B

.field private final mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final timestamp:J

.field private final type:I


# direct methods
.method constructor <init>(IJLio/olvid/engine/datatypes/Identity;[B)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->type:I

    .line 37
    iput-wide p2, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->timestamp:J

    .line 38
    iput-object p4, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 39
    iput-object p5, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->groupId:[B

    return-void
.end method

.method public static decodeList(Lio/olvid/engine/encoder/Encoded;)[Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 106
    array-length v0, p0

    new-array v0, v0, [Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;

    const/4 v1, 0x0

    .line 107
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 108
    aget-object v2, p0, v1

    invoke-static {v2}, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static encodeList([Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;)Lio/olvid/engine/encoder/Encoded;
    .locals 3

    .line 97
    array-length v0, p0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    const/4 v1, 0x0

    .line 98
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 99
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 45
    array-length v0, p0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 48
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const/4 v3, 0x3

    if-eq v1, v2, :cond_2

    if-ne v1, v0, :cond_1

    .line 61
    array-length v1, p0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    .line 64
    new-instance v1, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;

    const/4 v6, 0x2

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v7

    aget-object v0, p0, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    aget-object p0, p0, v3

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v10

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;-><init>(IJLio/olvid/engine/datatypes/Identity;[B)V

    return-object v1

    .line 62
    :cond_0
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 66
    :cond_1
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ObvTrustOrigin type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/olvid/engine/encoder/DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_2
    array-length v1, p0

    if-ne v1, v3, :cond_3

    .line 59
    new-instance v1, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;

    const/4 v5, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v6

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;-><init>(IJLio/olvid/engine/datatypes/Identity;[B)V

    return-object v1

    .line 57
    :cond_3
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 51
    :cond_4
    array-length v1, p0

    if-ne v1, v0, :cond_5

    .line 54
    new-instance v0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;

    const/4 v4, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;-><init>(IJLio/olvid/engine/datatypes/Identity;[B)V

    return-object v0

    .line 52
    :cond_5
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 46
    :cond_6
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 8

    .line 71
    iget v0, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const/4 v4, 0x3

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ObvTrustOrigin type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v5, 0x4

    new-array v5, v5, [Lio/olvid/engine/encoder/Encoded;

    int-to-long v6, v0

    .line 85
    invoke-static {v6, v7}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v5, v1

    iget-wide v0, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->timestamp:J

    .line 86
    invoke-static {v0, v1}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v5, v3

    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 87
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->groupId:[B

    .line 88
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v5, v4

    .line 84
    invoke-static {v5}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0

    :cond_1
    new-array v4, v4, [Lio/olvid/engine/encoder/Encoded;

    int-to-long v5, v0

    .line 79
    invoke-static {v5, v6}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v4, v1

    iget-wide v0, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->timestamp:J

    .line 80
    invoke-static {v0, v1}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v4, v3

    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 81
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v4, v2

    .line 78
    invoke-static {v4}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0

    :cond_2
    new-array v2, v2, [Lio/olvid/engine/encoder/Encoded;

    int-to-long v4, v0

    .line 74
    invoke-static {v4, v5}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v2, v1

    iget-wide v0, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->timestamp:J

    .line 75
    invoke-static {v0, v1}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v2, v3

    .line 73
    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()[B
    .locals 1

    .line 31
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->groupId:[B

    return-object v0
.end method

.method public getMediatorOrGroupOwnerIdentifier()[B
    .locals 1

    .line 27
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 19
    iget v0, p0, Lio/olvid/engine/engine/types/identities/ObvTrustOrigin;->type:I

    return v0
.end method
