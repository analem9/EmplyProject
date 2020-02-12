.class public Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "GroupInvitationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvitationResponseMessage"
.end annotation


# instance fields
.field private groupUid:Lio/olvid/engine/datatypes/UID;

.field private invitationAccepted:Z


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 357
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 360
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->groupUid:Lio/olvid/engine/datatypes/UID;

    .line 361
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->invitationAccepted:Z

    return-void

    .line 358
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/UID;Z)V
    .locals 0

    .line 349
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 350
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->groupUid:Lio/olvid/engine/datatypes/UID;

    .line 351
    iput-boolean p3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->invitationAccepted:Z

    return-void
.end method

.method static synthetic access$1100(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;)Lio/olvid/engine/datatypes/UID;
    .locals 0

    .line 344
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->groupUid:Lio/olvid/engine/datatypes/UID;

    return-object p0
.end method

.method static synthetic access$1200(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;)Z
    .locals 0

    .line 344
    iget-boolean p0, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->invitationAccepted:Z

    return p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 371
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->groupUid:Lio/olvid/engine/datatypes/UID;

    .line 372
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->invitationAccepted:Z

    .line 373
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Z)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
