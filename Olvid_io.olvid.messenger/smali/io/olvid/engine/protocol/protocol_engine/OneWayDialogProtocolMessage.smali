.class public Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "OneWayDialogProtocolMessage.java"


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    return-void
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
