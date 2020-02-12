.class interface abstract Lio/olvid/engine/crypto/KEM;
.super Ljava/lang/Object;
.source "PublicKeyEncryption.java"


# virtual methods
.method public abstract ciphertextLength()I
.end method

.method public abstract decrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;[B)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract encrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/CiphertextAndKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method
