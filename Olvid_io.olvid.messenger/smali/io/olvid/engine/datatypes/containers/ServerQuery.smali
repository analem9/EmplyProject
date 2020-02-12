.class public Lio/olvid/engine/datatypes/containers/ServerQuery;
.super Ljava/lang/Object;
.source "ServerQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/datatypes/containers/ServerQuery$Type;
    }
.end annotation


# instance fields
.field private final encodedElements:Lio/olvid/engine/encoder/Encoded;

.field private encodedResponse:Lio/olvid/engine/encoder/Encoded;

.field private final ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final type:Lio/olvid/engine/datatypes/containers/ServerQuery$Type;


# direct methods
.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/ServerQuery;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 17
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/ServerQuery;->type:Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    .line 18
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ServerQuery;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ServerQuery;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method

.method public static of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/ServerQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 24
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 27
    new-instance v0, Lio/olvid/engine/datatypes/containers/ServerQuery;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    .line 29
    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    const/4 v3, 0x2

    aget-object p0, p0, v3

    .line 30
    invoke-static {p0}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lio/olvid/engine/datatypes/containers/ServerQuery;-><init>(Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;)V

    return-object v0

    .line 25
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

    .line 35
    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/ServerQuery;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/ServerQuery;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 37
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/ServerQuery;->type:Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    .line 38
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedElements()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 55
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ServerQuery;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getEncodedResponse()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ServerQuery;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ServerQuery;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ServerQuery;->type:Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    return-object v0
.end method

.method public setResponse(Lio/olvid/engine/encoder/Encoded;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ServerQuery;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method
