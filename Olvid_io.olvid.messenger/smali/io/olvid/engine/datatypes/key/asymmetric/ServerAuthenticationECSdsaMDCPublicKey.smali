.class public Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;
.source "ServerAuthenticationECSdsaMDCPublicKey.java"


# static fields
.field public static final COMPACT_KEY_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MDC"

    .line 19
    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getCurve(Ljava/lang/String;)Lio/olvid/engine/crypto/EdwardCurve;

    move-result-object v0

    iget v0, v0, Lio/olvid/engine/crypto/EdwardCurve;->byteLength:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;->COMPACT_KEY_LENGTH:I

    return-void
.end method

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

    .line 16
    new-instance v0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaMDCPublicKey;

    invoke-direct {v0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaMDCPublicKey;-><init>(Ljava/util/HashMap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;-><init>(BLjava/util/HashMap;Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;)V

    return-void
.end method

.method public static of([B)Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    array-length v0, p0

    sget v1, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;->COMPACT_KEY_LENGTH:I

    if-ne v0, v1, :cond_0

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    :try_start_0
    new-instance v1, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v2, "y"

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    const/4 v3, 0x1

    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lio/olvid/engine/encoder/Encoded;->bigUIntFromBytes([B)Ljava/math/BigInteger;

    move-result-object p0

    sget v2, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;->COMPACT_KEY_LENGTH:I

    sub-int/2addr v2, v3

    invoke-static {p0, v2}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/math/BigInteger;I)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lio/olvid/engine/encoder/EncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    new-instance p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;

    invoke-direct {p0, v0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaMDCPublicKey;-><init>(Ljava/util/HashMap;)V

    return-object p0

    .line 29
    :catch_0
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 23
    :cond_0
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0
.end method
