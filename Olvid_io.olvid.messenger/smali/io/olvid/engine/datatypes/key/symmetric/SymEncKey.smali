.class public abstract Lio/olvid/engine/datatypes/key/symmetric/SymEncKey;
.super Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;
.source "SymEncKey.java"


# static fields
.field public static final ALGO_IMPL_CTR_AES256:B = 0x0t

.field public static final SYMENC_KEY_NAME:Ljava/lang/String; = "enckey"


# instance fields
.field private final keyBytes:[B


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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0, p1, p2}, Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;-><init>(BBLjava/util/HashMap;)V

    .line 21
    :try_start_0
    new-instance p1, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v0, "enckey"

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/key/symmetric/SymEncKey;->keyBytes:[B
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 23
    :catch_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public static of(BLjava/util/HashMap;)Lio/olvid/engine/datatypes/key/symmetric/SymEncKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)",
            "Lio/olvid/engine/datatypes/key/symmetric/SymEncKey;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    new-instance p0, Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method


# virtual methods
.method public getKeyBytes()[B
    .locals 1

    .line 28
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/symmetric/SymEncKey;->keyBytes:[B

    return-object v0
.end method

.method public getKeyLength()I
    .locals 1

    .line 32
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/symmetric/SymEncKey;->keyBytes:[B

    array-length v0, v0

    return v0
.end method
