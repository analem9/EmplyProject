.class public abstract Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;
.source "ServerAuthenticationECSdsaPrivateKey.java"


# static fields
.field public static final SECRET_EXPONENT_KEY_NAME:Ljava/lang/String; = "n"


# instance fields
.field private final signaturePrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;


# direct methods
.method public constructor <init>(BLjava/util/HashMap;Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;",
            "Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;-><init>(BLjava/util/HashMap;)V

    .line 16
    iput-object p3, p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;->signaturePrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;

    return-void
.end method


# virtual methods
.method public getSignaturePrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;->signaturePrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;

    return-object v0
.end method

.method public bridge synthetic getSignaturePrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;->getSignaturePrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;

    move-result-object v0

    return-object v0
.end method
