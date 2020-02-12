.class public Lio/olvid/engine/channel/datatypes/RatchetingOutput;
.super Ljava/lang/Object;
.source "RatchetingOutput.java"


# instance fields
.field private final authEncKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

.field private final keyId:Lio/olvid/engine/datatypes/KeyId;

.field private final ratchetedSeed:Lio/olvid/engine/datatypes/Seed;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/KeyId;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->ratchetedSeed:Lio/olvid/engine/datatypes/Seed;

    .line 15
    iput-object p2, p0, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->keyId:Lio/olvid/engine/datatypes/KeyId;

    .line 16
    iput-object p3, p0, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->authEncKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-void
.end method


# virtual methods
.method public getAuthEncKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->authEncKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-object v0
.end method

.method public getKeyId()Lio/olvid/engine/datatypes/KeyId;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->keyId:Lio/olvid/engine/datatypes/KeyId;

    return-object v0
.end method

.method public getRatchetedSeed()Lio/olvid/engine/datatypes/Seed;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/RatchetingOutput;->ratchetedSeed:Lio/olvid/engine/datatypes/Seed;

    return-object v0
.end method
