.class public Lio/olvid/engine/datatypes/containers/GroupInformation;
.super Ljava/lang/Object;
.source "GroupInformation.java"


# instance fields
.field public final groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

.field public final groupUid:Lio/olvid/engine/datatypes/UID;

.field public final serializedGroupDetailsWithVersionAndPhoto:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 18
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    .line 19
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->serializedGroupDetailsWithVersionAndPhoto:Ljava/lang/String;

    return-void
.end method

.method public static computeProtocolUid([B[B)Lio/olvid/engine/datatypes/UID;
    .locals 3

    .line 52
    new-instance v0, Lio/olvid/engine/datatypes/Seed;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/olvid/engine/datatypes/Seed;

    new-instance v2, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {v2, p0}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    new-instance v2, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {v2, p1}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    const/4 p1, 0x1

    aput-object v2, v1, p1

    invoke-direct {v0, v1}, Lio/olvid/engine/datatypes/Seed;-><init>([Lio/olvid/engine/datatypes/Seed;)V

    .line 53
    invoke-static {p0, v0}, Lio/olvid/engine/crypto/Suite;->getDefaultPRNG(ILio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/crypto/PRNG;

    move-result-object p0

    .line 54
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    invoke-direct {p1, p0}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    return-object p1
.end method

.method public static generate(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/containers/GroupInformation;
    .locals 1

    .line 43
    new-instance v0, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v0, p2}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 44
    new-instance p2, Lio/olvid/engine/datatypes/containers/GroupInformation;

    invoke-direct {p2, p0, v0, p1}, Lio/olvid/engine/datatypes/containers/GroupInformation;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Ljava/lang/String;)V

    return-object p2
.end method

.method public static of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/GroupInformation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 32
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 35
    new-instance v0, Lio/olvid/engine/datatypes/containers/GroupInformation;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    .line 36
    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    .line 37
    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    const/4 v3, 0x2

    aget-object p0, p0, v3

    .line 38
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lio/olvid/engine/datatypes/containers/GroupInformation;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Ljava/lang/String;)V

    return-object v0

    .line 33
    :cond_0
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0
.end method


# virtual methods
.method public computeProtocolUid()Lio/olvid/engine/datatypes/UID;
    .locals 2

    .line 48
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid([B[B)Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    return-object v0
.end method

.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 23
    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 24
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    .line 25
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->serializedGroupDetailsWithVersionAndPhoto:Ljava/lang/String;

    .line 26
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 23
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method

.method public getGroupOwnerAndUid()[B
    .locals 5

    .line 58
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 59
    iget-object v2, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget-object v2, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
