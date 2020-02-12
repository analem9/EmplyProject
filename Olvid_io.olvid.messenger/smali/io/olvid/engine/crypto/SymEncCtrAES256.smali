.class Lio/olvid/engine/crypto/SymEncCtrAES256;
.super Ljava/lang/Object;
.source "SymEnc.java"

# interfaces
.implements Lio/olvid/engine/crypto/SymEnc;


# static fields
.field static final AES_BLOCK_BYTE_LENGTH:I = 0x10

.field static final IV_BYTE_LENGTH:I = 0x8

.field static final KEY_BYTE_LENGTH:I = 0x20


# instance fields
.field private aes:Ljavax/crypto/Cipher;

.field private key:Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;


# direct methods
.method constructor <init>(Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "AES/CTR/NoPadding"

    .line 33
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/crypto/SymEncCtrAES256;->aes:Ljavax/crypto/Cipher;

    .line 34
    iput-object p1, p0, Lio/olvid/engine/crypto/SymEncCtrAES256;->key:Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ciphertextLengthFromPlaintextLength(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public decrypt(Lio/olvid/engine/datatypes/EncryptedBytes;)[B
    .locals 6

    .line 82
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 83
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 84
    array-length v3, p1

    invoke-static {p1, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 88
    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/crypto/SymEncCtrAES256;->aes:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lio/olvid/engine/crypto/SymEncCtrAES256;->key:Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;->getKeyBytes()[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v2, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 92
    iget-object v0, p0, Lio/olvid/engine/crypto/SymEncCtrAES256;->aes:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public encrypt([B[B)Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 60
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 63
    array-length v0, p2

    invoke-virtual {p0, v0}, Lio/olvid/engine/crypto/SymEncCtrAES256;->ciphertextLengthFromPlaintextLength(I)I

    move-result v0

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 64
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 67
    invoke-static {p1, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    :try_start_0
    iget-object p1, p0, Lio/olvid/engine/crypto/SymEncCtrAES256;->aes:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p0, Lio/olvid/engine/crypto/SymEncCtrAES256;->key:Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;->getKeyBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 71
    iget-object p1, p0, Lio/olvid/engine/crypto/SymEncCtrAES256;->aes:Ljavax/crypto/Cipher;

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 72
    array-length p2, p1

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    :goto_0
    new-instance p1, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    return-object p1

    .line 61
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1}, Ljava/security/InvalidKeyException;-><init>()V

    throw p1
.end method

.method public ivByteLength()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public keyByteLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public plaintextLengthFromCiphertextLength(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x8

    return p1
.end method
