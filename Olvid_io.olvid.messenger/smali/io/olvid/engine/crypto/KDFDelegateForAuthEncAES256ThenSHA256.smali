.class Lio/olvid/engine/crypto/KDFDelegateForAuthEncAES256ThenSHA256;
.super Ljava/lang/Object;
.source "AuthEnc.java"

# interfaces
.implements Lio/olvid/engine/crypto/KDF$Delegate;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyLength()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public processBytes([B)[Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    const/16 v1, 0x20

    const/4 v2, 0x0

    .line 38
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/16 v4, 0x40

    .line 39
    invoke-static {p1, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 37
    invoke-static {v3, p1}, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;->of([B[B)Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;

    move-result-object p1

    aput-object p1, v0, v2

    return-object v0
.end method
