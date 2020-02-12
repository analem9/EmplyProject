.class public abstract Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;
.source "ServerAuthenticationPrivateKey.java"


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

    .line 12
    invoke-direct {p0, v0, p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;-><init>(BBLjava/util/HashMap;)V

    return-void
.end method

.method public static of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)",
            "Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 20
    :cond_0
    new-instance p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PrivateKey;

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PrivateKey;-><init>(Ljava/util/HashMap;)V

    return-object p0

    .line 18
    :cond_1
    new-instance p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPrivateKey;

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPrivateKey;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method


# virtual methods
.method public getSignaturePrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    iget-byte v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;->algorithmImplementation:B

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "This server authentication private key does not implement signature"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;->getSignaturePrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;

    move-result-object v0

    return-object v0
.end method
