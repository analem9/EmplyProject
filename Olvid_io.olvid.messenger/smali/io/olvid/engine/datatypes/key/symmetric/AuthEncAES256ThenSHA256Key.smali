.class public Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;
.super Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
.source "AuthEncAES256ThenSHA256Key.java"


# instance fields
.field private final encKey:Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;

.field private final macKey:Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;


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

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0, p1}, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;-><init>(BLjava/util/HashMap;)V

    .line 17
    new-instance v0, Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    invoke-direct {v0, p1}, Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;->macKey:Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    .line 18
    new-instance v0, Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;

    invoke-direct {v0, p1}, Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;->encKey:Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;

    return-void
.end method

.method public static generate(Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;
    .locals 3

    const/16 v0, 0x40

    .line 29
    invoke-interface {p0, v0}, Lio/olvid/engine/crypto/PRNG;->bytes(I)[B

    move-result-object p0

    const/16 v1, 0x20

    const/4 v2, 0x0

    .line 30
    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {v2, p0}, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;->of([B[B)Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;

    move-result-object p0

    return-object p0
.end method

.method public static of([B[B)Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;
    .locals 3

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    new-instance v1, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v2, "mackey"

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance p0, Lio/olvid/engine/datatypes/DictionaryKey;

    const-string v1, "enckey"

    invoke-direct {p0, v1}, Lio/olvid/engine/datatypes/DictionaryKey;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance p0, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;

    invoke-direct {p0, v0}, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method


# virtual methods
.method public getEncKey()Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;->encKey:Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;

    return-object v0
.end method

.method public getMacKey()Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;->macKey:Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;->macKey:Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;->getKeyBytes()[B

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;->encKey:Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;->getKeyBytes()[B

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
