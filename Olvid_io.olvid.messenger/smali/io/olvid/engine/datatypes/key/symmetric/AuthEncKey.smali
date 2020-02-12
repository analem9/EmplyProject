.class public abstract Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
.super Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;
.source "AuthEncKey.java"


# static fields
.field public static final ALGO_IMPL_AES256_THEN_SHA256:B


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

    const/4 v0, 0x2

    .line 13
    invoke-direct {p0, v0, p1, p2}, Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;-><init>(BBLjava/util/HashMap;)V

    return-void
.end method

.method public static of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)",
            "Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 19
    :cond_0
    new-instance p0, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method
