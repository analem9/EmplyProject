.class interface abstract Lio/olvid/engine/crypto/SymEnc;
.super Ljava/lang/Object;
.source "SymEnc.java"


# static fields
.field public static final CTR_AES256:Ljava/lang/String; = "ctr-aes-256"


# virtual methods
.method public abstract ciphertextLengthFromPlaintextLength(I)I
.end method

.method public abstract decrypt(Lio/olvid/engine/datatypes/EncryptedBytes;)[B
.end method

.method public abstract encrypt([B[B)Lio/olvid/engine/datatypes/EncryptedBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract ivByteLength()I
.end method

.method public abstract keyByteLength()I
.end method

.method public abstract plaintextLengthFromCiphertextLength(I)I
.end method
