.class public Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;
.super Ljava/lang/Object;
.source "ChildToParentProtocolMessageInputs.java"


# instance fields
.field private final childProtocolEncodedState:Lio/olvid/engine/encoder/Encoded;

.field private final childProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

.field private final childProtocolReachedStateId:I


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->childProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    .line 15
    iget p1, p2, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;->id:I

    iput p1, p0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->childProtocolReachedStateId:I

    .line 16
    invoke-virtual {p2}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->childProtocolEncodedState:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method

.method public constructor <init>([Lio/olvid/engine/encoder/Encoded;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 35
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->childProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    const/4 v0, 0x1

    .line 36
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->childProtocolReachedStateId:I

    const/4 v0, 0x2

    .line 37
    aget-object p1, p1, v0

    iput-object p1, p0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->childProtocolEncodedState:Lio/olvid/engine/encoder/Encoded;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method


# virtual methods
.method public getChildProtocolEncodedState()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->childProtocolEncodedState:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getChildProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->childProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getChildProtocolReachedStateId()I
    .locals 1

    .line 24
    iget v0, p0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->childProtocolReachedStateId:I

    return v0
.end method

.method public toEncodedInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 41
    iget-object v1, p0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->childProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->childProtocolReachedStateId:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->childProtocolEncodedState:Lio/olvid/engine/encoder/Encoded;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
