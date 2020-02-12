.class public abstract Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;
.source "SignatureECSdsaPrivateKey.java"


# static fields
.field public static final SECRET_EXPONENT_KEY_NAME:Ljava/lang/String; = "n"


# instance fields
.field private final a:Ljava/math/BigInteger;


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

    .line 18
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;-><init>(BLjava/util/HashMap;)V

    .line 20
    :try_start_0
    new-instance p1, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v0, "n"

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeBigUInt()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;->a:Ljava/math/BigInteger;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 22
    :catch_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;->a:Ljava/math/BigInteger;

    return-object v0
.end method
