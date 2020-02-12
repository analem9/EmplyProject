.class public Lio/olvid/engine/crypto/Commitment$CommitmentOutput;
.super Ljava/lang/Object;
.source "Commitment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/crypto/Commitment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommitmentOutput"
.end annotation


# instance fields
.field public final commitment:[B

.field public final decommitment:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/olvid/engine/crypto/Commitment$CommitmentOutput;->commitment:[B

    .line 16
    iput-object p2, p0, Lio/olvid/engine/crypto/Commitment$CommitmentOutput;->decommitment:[B

    return-void
.end method
