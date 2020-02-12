.class public interface abstract Lio/olvid/engine/crypto/ServerAuthentication;
.super Ljava/lang/Object;
.source "ServerAuthentication.java"


# virtual methods
.method public abstract solveChallenge([BLio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;Lio/olvid/engine/crypto/PRNGService;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method
