.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KickFromGroupMessage"
.end annotation


# instance fields
.field private final groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 449
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 450
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 453
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    return-void

    .line 451
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 444
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    return-void
.end method

.method static synthetic access$1500(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;
    .locals 0

    .line 439
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 463
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 464
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
