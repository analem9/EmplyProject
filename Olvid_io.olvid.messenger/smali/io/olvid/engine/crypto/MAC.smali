.class public interface abstract Lio/olvid/engine/crypto/MAC;
.super Ljava/lang/Object;
.source "MAC.java"


# static fields
.field public static final HMAC_SHA256:Ljava/lang/String; = "hmac_sha-256"


# virtual methods
.method public abstract digest(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract generateKey(Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/key/symmetric/MACKey;
.end method

.method public abstract outputLength()I
.end method

.method public abstract verify(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method
