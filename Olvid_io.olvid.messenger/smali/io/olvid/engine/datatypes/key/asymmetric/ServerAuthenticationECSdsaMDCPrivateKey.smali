.class public Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPrivateKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;
.source "ServerAuthenticationECSdsaMDCPrivateKey.java"


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
    new-instance v0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaMDCPrivateKey;

    invoke-direct {v0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaMDCPrivateKey;-><init>(Ljava/util/HashMap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;-><init>(BLjava/util/HashMap;Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;)V

    return-void
.end method
