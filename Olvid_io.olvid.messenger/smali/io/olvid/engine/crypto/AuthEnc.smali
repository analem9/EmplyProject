.class public interface abstract Lio/olvid/engine/crypto/AuthEnc;
.super Ljava/lang/Object;
.source "AuthEnc.java"


# static fields
.field public static final CTR_AES256_THEN_HMAC_SHA256:Ljava/lang/String; = "ctr-aes-256_then_hmac_sha-256"


# virtual methods
.method public abstract ciphertextLengthFromPlaintextLength(I)I
.end method

.method public abstract decrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/EncryptedBytes;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/crypto/exceptions/DecryptionException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract encrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[BLio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/EncryptedBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract generateKey(Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
.end method

.method public abstract getKDFDelegate()Lio/olvid/engine/crypto/KDF$Delegate;
.end method

.method public abstract keyByteLength()I
.end method

.method public abstract plaintextLengthFromCiphertextLength(I)I
.end method
