.class public abstract Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;
.super Lio/olvid/engine/datatypes/key/CryptographicKey;
.source "SymmetricKey.java"


# direct methods
.method public constructor <init>(BBLjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lio/olvid/engine/datatypes/key/CryptographicKey;-><init>(BBLjava/util/HashMap;)V

    return-void
.end method

.method public static of(BBLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)",
            "Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;->of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object p0

    return-object p0

    .line 20
    :cond_1
    invoke-static {p1, p2}, Lio/olvid/engine/datatypes/key/symmetric/MACKey;->of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/symmetric/MACKey;

    move-result-object p0

    return-object p0

    .line 22
    :cond_2
    invoke-static {p1, p2}, Lio/olvid/engine/datatypes/key/symmetric/SymEncKey;->of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/symmetric/SymEncKey;

    move-result-object p0

    return-object p0
.end method
