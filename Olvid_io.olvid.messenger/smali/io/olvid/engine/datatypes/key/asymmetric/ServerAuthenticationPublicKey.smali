.class public abstract Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;
.source "ServerAuthenticationPublicKey.java"


# static fields
.field public static final ALGO_IMPL_SIGN_CHALLENGE_EC_SDSA_CURVE25519:B = 0x1t

.field public static final ALGO_IMPL_SIGN_CHALLENGE_EC_SDSA_MDC:B


# direct methods
.method public constructor <init>(BLjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x14

    .line 17
    invoke-direct {p0, v0, p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;-><init>(BBLjava/util/HashMap;)V

    return-void
.end method

.method public static getCompactKeyLength(B)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 35
    :cond_0
    sget p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PublicKey;->COMPACT_KEY_LENGTH:I

    return p0

    .line 33
    :cond_1
    sget p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;->COMPACT_KEY_LENGTH:I

    return p0
.end method

.method public static of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)",
            "Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    new-instance p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PublicKey;

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PublicKey;-><init>(Ljava/util/HashMap;)V

    return-object p0

    .line 23
    :cond_1
    new-instance p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method

.method public static of([B)Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    aget-byte v0, p0, v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 49
    invoke-static {p0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PublicKey;->of([B)Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PublicKey;

    move-result-object p0

    return-object p0

    .line 51
    :cond_0
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 47
    :cond_1
    invoke-static {p0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;->of([B)Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getCompactKey()[B
.end method

.method public getCompactKeyLength()I
    .locals 1

    .line 41
    iget-byte v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;->algorithmImplementation:B

    invoke-static {v0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;->getCompactKeyLength(B)I

    move-result v0

    return v0
.end method

.method public getSignaturePublicKey()Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-byte v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;->algorithmImplementation:B

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "This server authentication public key does not implement signature"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;->getSignaturePublicKey()Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;

    move-result-object v0

    return-object v0
.end method
