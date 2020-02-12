.class public Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;
.super Lio/olvid/engine/datatypes/key/symmetric/MACKey;
.source "MACHmacSha256Key.java"


# static fields
.field public static final KEY_BYTE_LENGTH:I = 0x20


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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, p1}, Lio/olvid/engine/datatypes/key/symmetric/MACKey;-><init>(BLjava/util/HashMap;)V

    .line 14
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;->getKeyLength()I

    move-result p1

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public static of([B)Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;
    .locals 3

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    new-instance v1, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v2, "mackey"

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance p0, Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    invoke-direct {p0, v0}, Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method
