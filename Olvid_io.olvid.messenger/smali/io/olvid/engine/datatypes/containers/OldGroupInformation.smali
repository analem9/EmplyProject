.class public Lio/olvid/engine/datatypes/containers/OldGroupInformation;
.super Ljava/lang/Object;
.source "OldGroupInformation.java"


# instance fields
.field public final groupId:[B

.field public final groupName:Ljava/lang/String;

.field public final groupOwner:Lio/olvid/engine/datatypes/Identity;

.field public final uid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Ljava/lang/String;)V
    .locals 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/OldGroupInformation;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    .line 16
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/OldGroupInformation;->uid:Lio/olvid/engine/datatypes/UID;

    .line 17
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/OldGroupInformation;->groupName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p3

    array-length p3, p3

    const/16 v0, 0x20

    add-int/2addr p3, v0

    new-array p3, p3, [B

    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/OldGroupInformation;->groupId:[B

    .line 19
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p3

    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/OldGroupInformation;->groupId:[B

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p3, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p2

    iget-object p3, p0, Lio/olvid/engine/datatypes/containers/OldGroupInformation;->groupId:[B

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-static {p2, v3, p3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/OldGroupInformation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 34
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 37
    new-instance v0, Lio/olvid/engine/datatypes/containers/OldGroupInformation;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    .line 38
    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    .line 39
    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    const/4 v3, 0x2

    aget-object p0, p0, v3

    .line 40
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lio/olvid/engine/datatypes/containers/OldGroupInformation;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Ljava/lang/String;)V

    return-object v0

    .line 35
    :cond_0
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 25
    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/OldGroupInformation;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    .line 26
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/OldGroupInformation;->uid:Lio/olvid/engine/datatypes/UID;

    .line 27
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/OldGroupInformation;->groupName:Ljava/lang/String;

    .line 28
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 25
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method
