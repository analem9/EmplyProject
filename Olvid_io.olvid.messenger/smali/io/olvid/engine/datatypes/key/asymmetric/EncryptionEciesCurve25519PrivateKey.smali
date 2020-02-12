.class public Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesCurve25519PrivateKey;
.super Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPrivateKey;
.source "EncryptionEciesCurve25519PrivateKey.java"


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

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0, p1}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionEciesPrivateKey;-><init>(BLjava/util/HashMap;)V

    return-void
.end method
