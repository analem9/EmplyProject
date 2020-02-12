.class public interface abstract Lio/olvid/engine/crypto/KDF;
.super Ljava/lang/Object;
.source "KDF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/crypto/KDF$Delegate;
    }
.end annotation


# static fields
.field public static final KDF_SHA256:Ljava/lang/String; = "kdf_sha-256"


# virtual methods
.method public abstract gen(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/crypto/KDF$Delegate;)[Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method
