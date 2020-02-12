.class public abstract Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;
.source "SignatureECSdsaPublicKey.java"


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

    .line 20
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;-><init>(BLjava/util/HashMap;)V

    .line 22
    :try_start_0
    new-instance p1, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v0, "y"

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeBigUInt()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;->Ay:Ljava/math/BigInteger;

    .line 23
    new-instance p1, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v0, "x"

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeBigUInt()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;->Ax:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;->Ax:Ljava/math/BigInteger;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 30
    :catch_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getAx()Ljava/math/BigInteger;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;->Ax:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getAy()Ljava/math/BigInteger;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;->Ay:Ljava/math/BigInteger;

    return-object v0
.end method
