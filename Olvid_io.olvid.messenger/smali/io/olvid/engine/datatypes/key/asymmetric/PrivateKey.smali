.class public abstract Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;
.super Lio/olvid/engine/datatypes/key/CryptographicKey;
.source "PrivateKey.java"


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

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lio/olvid/engine/datatypes/key/CryptographicKey;-><init>(BBLjava/util/HashMap;)V

    return-void
.end method

.method public static of(BBLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)",
            "Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;"
        }
    .end annotation

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    invoke-static {p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;->of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;

    move-result-object p0

    return-object p0

    .line 21
    :cond_1
    invoke-static {p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;->of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    move-result-object p0

    return-object p0

    .line 23
    :cond_2
    invoke-static {p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;->of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;

    move-result-object p0

    return-object p0
.end method
