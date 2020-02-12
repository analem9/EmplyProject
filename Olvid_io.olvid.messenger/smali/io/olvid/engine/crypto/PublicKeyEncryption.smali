.class public interface abstract Lio/olvid/engine/crypto/PublicKeyEncryption;
.super Ljava/lang/Object;
.source "PublicKeyEncryption.java"


# virtual methods
.method public abstract decrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;Lio/olvid/engine/datatypes/EncryptedBytes;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Lio/olvid/engine/crypto/exceptions/DecryptionException;
        }
    .end annotation
.end method

.method public abstract encrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;[BLio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/EncryptedBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract kemDecrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Lio/olvid/engine/crypto/exceptions/DecryptionException;
        }
    .end annotation
.end method

.method public abstract kemEncrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/CiphertextAndKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method
