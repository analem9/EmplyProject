.class public Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "ContactMutualIntroductionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogAcceptMediatorInviteMessage"
.end annotation


# instance fields
.field private final dialogUuid:Ljava/util/UUID;

.field private final invitationAccepted:Z


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 419
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 420
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getEncodedResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getEncodedResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;->invitationAccepted:Z

    .line 424
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getUserDialogUuid()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;->dialogUuid:Ljava/util/UUID;

    return-void

    .line 421
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V
    .locals 0

    .line 412
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    const/4 p1, 0x0

    .line 413
    iput-boolean p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;->invitationAccepted:Z

    const/4 p1, 0x0

    .line 414
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;->dialogUuid:Ljava/util/UUID;

    return-void
.end method

.method static synthetic access$1000(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;)Z
    .locals 0

    .line 407
    iget-boolean p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;->invitationAccepted:Z

    return p0
.end method

.method static synthetic access$900(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;)Ljava/util/UUID;
    .locals 0

    .line 407
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;->dialogUuid:Ljava/util/UUID;

    return-object p0
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

    const/4 v0, 0x2

    return v0
.end method
