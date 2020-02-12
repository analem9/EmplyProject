.class public Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaCurve25519PrivateKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;
.source "SignatureECSdsaCurve25519PrivateKey.java"


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, v0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;-><init>(BLjava/util/HashMap;)V

    return-void
.end method
