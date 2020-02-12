.class public Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "ContactMutualIntroductionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropagateConfirmationMessage"
.end annotation


# instance fields
.field private final contactDisplayName:Ljava/lang/String;

.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final invitationAccepted:Z

.field private final mediatorIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 456
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 457
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 460
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->invitationAccepted:Z

    .line 461
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 462
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->contactDisplayName:Ljava/lang/String;

    .line 463
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->mediatorIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void

    .line 458
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;ZLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 447
    iput-boolean p2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->invitationAccepted:Z

    .line 448
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 449
    iput-object p4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->contactDisplayName:Ljava/lang/String;

    .line 450
    iput-object p5, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->mediatorIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method

.method static synthetic access$1100(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;)Z
    .locals 0

    .line 439
    iget-boolean p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->invitationAccepted:Z

    return p0
.end method

.method static synthetic access$1200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;)Ljava/lang/String;
    .locals 0

    .line 439
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->contactDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 439
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method static synthetic access$1400(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 439
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->mediatorIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 473
    iget-boolean v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->invitationAccepted:Z

    .line 474
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Z)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 475
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->contactDisplayName:Ljava/lang/String;

    .line 476
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->mediatorIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 477
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
