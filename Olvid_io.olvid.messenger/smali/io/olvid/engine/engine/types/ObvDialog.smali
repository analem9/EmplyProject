.class public Lio/olvid/engine/engine/types/ObvDialog;
.super Ljava/lang/Object;
.source "ObvDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/engine/types/ObvDialog$Category;
    }
.end annotation


# instance fields
.field private final bytesOwnedIdentity:[B

.field private final category:Lio/olvid/engine/engine/types/ObvDialog$Category;

.field private final encodedElements:Lio/olvid/engine/encoder/Encoded;

.field private encodedResponse:Lio/olvid/engine/encoder/Encoded;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;[BLio/olvid/engine/engine/types/ObvDialog$Category;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/olvid/engine/engine/types/ObvDialog;->uuid:Ljava/util/UUID;

    .line 40
    iput-object p2, p0, Lio/olvid/engine/engine/types/ObvDialog;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    .line 41
    iput-object p3, p0, Lio/olvid/engine/engine/types/ObvDialog;->bytesOwnedIdentity:[B

    .line 42
    iput-object p4, p0, Lio/olvid/engine/engine/types/ObvDialog;->category:Lio/olvid/engine/engine/types/ObvDialog$Category;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lio/olvid/engine/engine/types/ObvDialog;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method

.method public static of(Lio/olvid/engine/encoder/Encoded;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/engine/types/ObvDialog;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 48
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 51
    new-instance v0, Lio/olvid/engine/engine/types/ObvDialog;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    .line 52
    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-object v3, p0, v3

    .line 54
    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v3

    const/4 v4, 0x3

    aget-object p0, p0, v4

    .line 55
    invoke-static {p0, p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->access$000(Lio/olvid/engine/encoder/Encoded;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lio/olvid/engine/engine/types/ObvDialog;-><init>(Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;[BLio/olvid/engine/engine/types/ObvDialog$Category;)V

    return-object v0

    .line 49
    :cond_0
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0
.end method


# virtual methods
.method public encode(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 60
    iget-object v1, p0, Lio/olvid/engine/engine/types/ObvDialog;->uuid:Ljava/util/UUID;

    .line 61
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/util/UUID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/engine/types/ObvDialog;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/engine/types/ObvDialog;->bytesOwnedIdentity:[B

    .line 63
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/engine/types/ObvDialog;->category:Lio/olvid/engine/engine/types/ObvDialog$Category;

    .line 64
    invoke-static {v1, p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->access$100(Lio/olvid/engine/engine/types/ObvDialog$Category;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 60
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    return-object p1
.end method

.method public getBytesOwnedIdentity()[B
    .locals 1

    .line 27
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog;->bytesOwnedIdentity:[B

    return-object v0
.end method

.method public getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog;->category:Lio/olvid/engine/engine/types/ObvDialog$Category;

    return-object v0
.end method

.method public getEncodedElements()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getEncodedResponse()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public setResponseToAcceptGroupInvite(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog;->category:Lio/olvid/engine/engine/types/ObvDialog$Category;

    invoke-static {v0}, Lio/olvid/engine/engine/types/ObvDialog$Category;->access$200(Lio/olvid/engine/engine/types/ObvDialog$Category;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 104
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of(Z)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/ObvDialog;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method

.method public setResponseToAcceptInvite(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog;->category:Lio/olvid/engine/engine/types/ObvDialog$Category;

    invoke-static {v0}, Lio/olvid/engine/engine/types/ObvDialog$Category;->access$200(Lio/olvid/engine/engine/types/ObvDialog$Category;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of(Z)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/ObvDialog;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public setResponseToAcceptMediatorInvite(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog;->category:Lio/olvid/engine/engine/types/ObvDialog$Category;

    invoke-static {v0}, Lio/olvid/engine/engine/types/ObvDialog$Category;->access$200(Lio/olvid/engine/engine/types/ObvDialog$Category;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 93
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of(Z)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/ObvDialog;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public setResponseToSasExchange([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog;->category:Lio/olvid/engine/engine/types/ObvDialog$Category;

    invoke-static {v0}, Lio/olvid/engine/engine/types/ObvDialog$Category;->access$200(Lio/olvid/engine/engine/types/ObvDialog$Category;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 83
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/ObvDialog;->encodedResponse:Lio/olvid/engine/encoder/Encoded;

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method
