.class Lio/olvid/engine/crypto/KDFDelegateForHmacSHA256;
.super Ljava/lang/Object;
.source "MAC.java"

# interfaces
.implements Lio/olvid/engine/crypto/KDF$Delegate;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public processBytes([B)[Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    .line 70
    invoke-static {p1}, Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;->of([B)Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method
