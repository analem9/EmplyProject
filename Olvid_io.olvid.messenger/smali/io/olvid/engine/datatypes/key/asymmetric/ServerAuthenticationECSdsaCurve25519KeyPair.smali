.class public Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519KeyPair;
.super Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;
.source "ServerAuthenticationECSdsaCurve25519KeyPair.java"


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PublicKey;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PrivateKey;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;-><init>(Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;)V

    return-void
.end method

.method public static generate(Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519KeyPair;
    .locals 7

    const-string v0, "Curve_25519"

    .line 31
    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getCurve(Ljava/lang/String;)Lio/olvid/engine/crypto/EdwardCurve;

    move-result-object v0

    .line 34
    :cond_0
    iget-object v1, v0, Lio/olvid/engine/crypto/EdwardCurve;->q:Ljava/math/BigInteger;

    invoke-interface {p0, v1}, Lio/olvid/engine/crypto/PRNGService;->bigInt(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 35
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    iget-object p0, v0, Lio/olvid/engine/crypto/EdwardCurve;->G:Lio/olvid/engine/datatypes/EdwardCurvePoint;

    invoke-virtual {v0, v1, p0}, Lio/olvid/engine/crypto/EdwardCurve;->scalarMutliplicationWithX(Ljava/math/BigInteger;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p0

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 38
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 40
    :try_start_0
    new-instance v4, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v5, "x"

    invoke-direct {v4, v5}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getX()Ljava/math/BigInteger;

    move-result-object v5

    iget v6, v0, Lio/olvid/engine/crypto/EdwardCurve;->byteLength:I

    invoke-static {v5, v6}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/math/BigInteger;I)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v4, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v5, "y"

    invoke-direct {v4, v5}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object p0

    iget v5, v0, Lio/olvid/engine/crypto/EdwardCurve;->byteLength:I

    invoke-static {p0, v5}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/math/BigInteger;I)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    invoke-virtual {v2, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance p0, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v4, "n"

    invoke-direct {p0, v4}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lio/olvid/engine/crypto/EdwardCurve;->byteLength:I

    invoke-static {v1, v0}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/math/BigInteger;I)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lio/olvid/engine/encoder/EncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    new-instance p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519KeyPair;

    new-instance v0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PublicKey;

    invoke-direct {v0, v2}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PublicKey;-><init>(Ljava/util/HashMap;)V

    new-instance v1, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PrivateKey;

    invoke-direct {v1, v3}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PrivateKey;-><init>(Ljava/util/HashMap;)V

    invoke-direct {p0, v0, v1}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519KeyPair;-><init>(Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PublicKey;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PrivateKey;)V

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519KeyPair;->getPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PrivateKey;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519KeyPair;->privateKey:Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    check-cast v0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PrivateKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519KeyPair;->getPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PublicKey;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519KeyPair;->publicKey:Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    check-cast v0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PublicKey;

    return-object v0
.end method
