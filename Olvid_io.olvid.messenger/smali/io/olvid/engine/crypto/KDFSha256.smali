.class Lio/olvid/engine/crypto/KDFSha256;
.super Ljava/lang/Object;
.source "KDF.java"

# interfaces
.implements Lio/olvid/engine/crypto/KDF;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gen(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/crypto/KDF$Delegate;)[Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 24
    new-instance v0, Lio/olvid/engine/crypto/PRNGHmacSHA256;

    invoke-direct {v0, p1}, Lio/olvid/engine/crypto/PRNGHmacSHA256;-><init>(Lio/olvid/engine/datatypes/Seed;)V

    .line 25
    invoke-interface {p2}, Lio/olvid/engine/crypto/KDF$Delegate;->getKeyLength()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/olvid/engine/crypto/PRNGHmacSHA256;->bytes(I)[B

    move-result-object p1

    .line 26
    invoke-interface {p2, p1}, Lio/olvid/engine/crypto/KDF$Delegate;->processBytes([B)[Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    return-object p1
.end method
