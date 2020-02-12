.class public Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaCurve25519PrivateKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;
.source "ServerAuthenticationECSdsaCurve25519PrivateKey.java"


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)V"
        }
    .end annotation

    .line 11
    new-instance v0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaCurve25519PrivateKey;

    invoke-direct {v0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaCurve25519PrivateKey;-><init>(Ljava/util/HashMap;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;-><init>(BLjava/util/HashMap;Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;)V

    return-void
.end method
