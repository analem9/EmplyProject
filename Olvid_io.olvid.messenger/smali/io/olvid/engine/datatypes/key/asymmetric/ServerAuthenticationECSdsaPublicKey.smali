.class public abstract Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;
.source "ServerAuthenticationECSdsaPublicKey.java"


# static fields
.field public static final PUBLIC_X_COORD_KEY_NAME:Ljava/lang/String; = "x"

.field public static final PUBLIC_Y_COORD_KEY_NAME:Ljava/lang/String; = "y"


# instance fields
.field private final signaturePublicKey:Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;


# direct methods
.method public constructor <init>(BLjava/util/HashMap;Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;",
            "Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;-><init>(BLjava/util/HashMap;)V

    .line 19
    iput-object p3, p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;->signaturePublicKey:Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;

    return-void
.end method


# virtual methods
.method public getCompactKey()[B
    .locals 5

    .line 27
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;->getCompactKeyLength()I

    move-result v0

    new-array v0, v0, [B

    .line 28
    iget-byte v1, p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;->algorithmImplementation:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 30
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;->key:Ljava/util/HashMap;

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

    .line 31
    array-length v3, v1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lio/olvid/engine/encoder/EncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getSignaturePublicKey()Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;->signaturePublicKey:Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;

    return-object v0
.end method

.method public bridge synthetic getSignaturePublicKey()Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;->getSignaturePublicKey()Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;

    move-result-object v0

    return-object v0
.end method
