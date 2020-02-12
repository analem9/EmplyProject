.class public abstract Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;
.source "SignaturePrivateKey.java"


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

    const/16 v0, 0x11

    .line 11
    invoke-direct {p0, v0, p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;-><init>(BBLjava/util/HashMap;)V

    return-void
.end method

.method public static of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)",
            "Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 19
    :cond_0
    new-instance p0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaCurve25519PrivateKey;

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaCurve25519PrivateKey;-><init>(Ljava/util/HashMap;)V

    return-object p0

    .line 17
    :cond_1
    new-instance p0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaMDCPrivateKey;

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaMDCPrivateKey;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method
