.class public abstract Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.super Ljava/lang/Object;
.source "ConcreteProtocolState.java"


# instance fields
.field public final id:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;->id:I

    return-void
.end method


# virtual methods
.method public abstract encode()Lio/olvid/engine/encoder/Encoded;
.end method
