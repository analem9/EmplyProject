.class public Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "ContactMutualIntroductionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifyContactOfAcceptedInvitationMessage"
.end annotation


# instance fields
.field private final contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

.field private final signature:[B


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 494
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 495
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 498
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeUidArray()[Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 499
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->signature:[B

    return-void

    .line 496
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;[Lio/olvid/engine/datatypes/UID;[B)V
    .locals 0

    .line 487
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 488
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 489
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->signature:[B

    return-void
.end method

.method static synthetic access$1700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;)[B
    .locals 0

    .line 482
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->signature:[B

    return-object p0
.end method

.method static synthetic access$1900(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;)[Lio/olvid/engine/datatypes/UID;
    .locals 0

    .line 482
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 509
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 510
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->signature:[B

    .line 511
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
