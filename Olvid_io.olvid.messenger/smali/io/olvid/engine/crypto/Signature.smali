.class public interface abstract Lio/olvid/engine/crypto/Signature;
.super Ljava/lang/Object;
.source "Signature.java"


# virtual methods
.method public abstract sign(Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;[BLio/olvid/engine/crypto/PRNGService;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract verify(Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;[B[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method
