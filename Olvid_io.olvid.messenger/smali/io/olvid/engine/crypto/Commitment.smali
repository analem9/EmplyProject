.class public interface abstract Lio/olvid/engine/crypto/Commitment;
.super Ljava/lang/Object;
.source "Commitment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/crypto/Commitment$CommitmentOutput;
    }
.end annotation


# virtual methods
.method public abstract commit([B[BLio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/crypto/Commitment$CommitmentOutput;
.end method

.method public abstract open([B[B[B)[B
.end method
