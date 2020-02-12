.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReinvitePendingMemberMessage"
.end annotation


# instance fields
.field private final groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

.field private final pendingMemberIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 416
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 417
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 420
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lio/olvid/engine/datatypes/containers/GroupInformation;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 421
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->pendingMemberIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void

    .line 418
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 410
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 411
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->pendingMemberIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method

.method static synthetic access$1600(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;
    .locals 0

    .line 404
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    return-object p0
.end method

.method static synthetic access$1700(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 404
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->pendingMemberIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 431
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 432
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->pendingMemberIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 433
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
