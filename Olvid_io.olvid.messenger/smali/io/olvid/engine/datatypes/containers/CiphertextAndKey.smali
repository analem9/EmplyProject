.class public Lio/olvid/engine/datatypes/containers/CiphertextAndKey;
.super Ljava/lang/Object;
.source "CiphertextAndKey.java"


# instance fields
.field private ciphertext:Lio/olvid/engine/datatypes/EncryptedBytes;

.field private key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/EncryptedBytes;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/CiphertextAndKey;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 13
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/CiphertextAndKey;->ciphertext:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-void
.end method


# virtual methods
.method public getCiphertext()Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/CiphertextAndKey;->ciphertext:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-object v0
.end method

.method public getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/CiphertextAndKey;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-object v0
.end method
