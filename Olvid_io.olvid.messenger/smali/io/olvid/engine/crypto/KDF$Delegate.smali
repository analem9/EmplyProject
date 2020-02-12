.class public interface abstract Lio/olvid/engine/crypto/KDF$Delegate;
.super Ljava/lang/Object;
.source "KDF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/crypto/KDF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract getKeyLength()I
.end method

.method public abstract processBytes([B)[Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;
.end method
