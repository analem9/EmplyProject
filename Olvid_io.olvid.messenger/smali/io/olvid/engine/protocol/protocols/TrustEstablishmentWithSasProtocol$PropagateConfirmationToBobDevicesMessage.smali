.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "TrustEstablishmentWithSasProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropagateConfirmationToBobDevicesMessage"
.end annotation


# instance fields
.field private final invitationAccepted:Z


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 601
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 602
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 605
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;->invitationAccepted:Z

    return-void

    .line 603
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Z)V
    .locals 0

    .line 595
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 596
    iput-boolean p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;->invitationAccepted:Z

    return-void
.end method

.method static synthetic access$2200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;)Z
    .locals 0

    .line 591
    iget-boolean p0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;->invitationAccepted:Z

    return p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 615
    iget-boolean v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;->invitationAccepted:Z

    .line 616
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Z)Lio/olvid/engine/encoder/Encoded;

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
