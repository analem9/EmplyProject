.class public Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.source "ContactMutualIntroductionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvitationAcceptedState"
.end annotation


# instance fields
.field private final acceptType:I

.field private final contactDisplayName:Ljava/lang/String;

.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final dialogUuid:Ljava/util/UUID;

.field private final mediatorIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method constructor <init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;I)V
    .locals 1

    const/4 v0, 0x3

    .line 167
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 168
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 169
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->contactDisplayName:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->mediatorIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 171
    iput-object p4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->dialogUuid:Ljava/util/UUID;

    .line 172
    iput p5, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->acceptType:I

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    .line 154
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 155
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 156
    array-length v1, p1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 159
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    const/4 v1, 0x1

    .line 160
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->contactDisplayName:Ljava/lang/String;

    const/4 v1, 0x2

    .line 161
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->mediatorIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 162
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->dialogUuid:Ljava/util/UUID;

    const/4 v0, 0x4

    .line 163
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->acceptType:I

    return-void

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method static synthetic access$1500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 145
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->mediatorIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method static synthetic access$1600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 145
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method static synthetic access$1800(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->contactDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Ljava/util/UUID;
    .locals 0

    .line 145
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->dialogUuid:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$2100(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)I
    .locals 0

    .line 145
    iget p0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->acceptType:I

    return p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 177
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 178
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->contactDisplayName:Ljava/lang/String;

    .line 179
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->mediatorIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 180
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->dialogUuid:Ljava/util/UUID;

    .line 181
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/util/UUID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->acceptType:I

    int-to-long v1, v1

    .line 182
    invoke-static {v1, v2}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 177
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method
