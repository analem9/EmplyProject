.class public Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;
.super Ljava/lang/Object;
.source "IdentityWithSerializedDetails.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final identity:Lio/olvid/engine/datatypes/Identity;

.field public final serializedDetails:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 13
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->serializedDetails:Ljava/lang/String;

    return-void
.end method

.method public static of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 44
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 47
    new-instance v0, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    return-object v0

    .line 45
    :cond_0
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 31
    check-cast p1, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 32
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object p1, p1, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, p1}, Lio/olvid/engine/datatypes/Identity;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 36
    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 37
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->serializedDetails:Ljava/lang/String;

    .line 38
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 36
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 23
    instance-of v0, p1, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 26
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    check-cast p1, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    iget-object p1, p1, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, p1}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 18
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->hashCode()I

    move-result v0

    return v0
.end method
