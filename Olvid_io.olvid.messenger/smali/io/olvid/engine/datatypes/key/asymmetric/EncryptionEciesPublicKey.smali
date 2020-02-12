.class public abstract Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPublicKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;
.source "EncryptionEciesPublicKey.java"


# static fields
.field public static final PUBLIC_X_COORD_KEY_NAME:Ljava/lang/String; = "x"

.field public static final PUBLIC_Y_COORD_KEY_NAME:Ljava/lang/String; = "y"


# instance fields
.field private final Ax:Ljava/math/BigInteger;

.field private final Ay:Ljava/math/BigInteger;


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

    .line 21
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;-><init>(BLjava/util/HashMap;)V

    .line 23
    :try_start_0
    new-instance p1, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v0, "y"

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeBigUInt()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPublicKey;->Ay:Ljava/math/BigInteger;

    .line 24
    new-instance p1, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v0, "x"

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeBigUInt()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPublicKey;->Ax:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPublicKey;->Ax:Ljava/math/BigInteger;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 31
    :catch_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getAx()Ljava/math/BigInteger;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPublicKey;->Ax:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getAy()Ljava/math/BigInteger;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPublicKey;->Ay:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCompactKey()[B
    .locals 5

    .line 44
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPublicKey;->getCompactKeyLength()I

    move-result v0

    new-array v0, v0, [B

    .line 45
    iget-byte v1, p0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPublicKey;->algorithmImplementation:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 47
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPublicKey;->key:Ljava/util/HashMap;

    new-instance v3, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v4, "y"

    invoke-direct {v3, v4}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeBigUInt()Ljava/math/BigInteger;

    move-result-object v1

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Lio/olvid/engine/encoder/Encoded;->bytesFromBigUInt(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 48
    array-length v3, v1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lio/olvid/engine/encoder/EncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
