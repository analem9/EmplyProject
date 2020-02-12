.class public abstract Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;
.source "SignaturePublicKey.java"


# static fields
.field public static final ALGO_IMPL_EC_SDSA_CURVE25519:B = 0x1t

.field public static final ALGO_IMPL_EC_SDSA_MDC:B


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

    .line 14
    invoke-direct {p0, v0, p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;-><init>(BBLjava/util/HashMap;)V

    return-void
.end method

.method public static of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)",
            "Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 22
    :cond_0
    new-instance p0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaCurve25519PublicKey;

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaCurve25519PublicKey;-><init>(Ljava/util/HashMap;)V

    return-object p0

    .line 20
    :cond_1
    new-instance p0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaMDCPublicKey;

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaMDCPublicKey;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method
