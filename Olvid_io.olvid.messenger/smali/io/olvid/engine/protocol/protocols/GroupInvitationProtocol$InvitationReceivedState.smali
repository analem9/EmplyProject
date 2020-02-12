.class public Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.source "GroupInvitationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvitationReceivedState"
.end annotation


# instance fields
.field private final dialogUuid:Ljava/util/UUID;

.field private final groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

.field private final groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/UUID;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/olvid/engine/datatypes/containers/GroupInformation;",
            "Ljava/util/UUID;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 100
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 101
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 102
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->dialogUuid:Ljava/util/UUID;

    .line 103
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 86
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 87
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 88
    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 91
    aget-object v2, p1, v1

    invoke-static {v2}, Lio/olvid/engine/datatypes/containers/GroupInformation;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    iput-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    const/4 v2, 0x1

    .line 92
    aget-object v2, p1, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeUuid()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->dialogUuid:Ljava/util/UUID;

    .line 93
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    .line 94
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 95
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    invoke-static {v2}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method static synthetic access$600(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/UUID;
    .locals 0

    .line 79
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->dialogUuid:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;
    .locals 0

    .line 79
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    return-object p0
.end method

.method static synthetic access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;
    .locals 0

    .line 79
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    return-object p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 6

    .line 108
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 110
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 111
    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Lio/olvid/engine/encoder/Encoded;

    .line 114
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 115
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->dialogUuid:Ljava/util/UUID;

    .line 116
    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/util/UUID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    .line 117
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v1, v2

    .line 114
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method
