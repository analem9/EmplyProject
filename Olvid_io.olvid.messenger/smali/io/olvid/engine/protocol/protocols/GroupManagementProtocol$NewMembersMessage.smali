.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewMembersMessage"
.end annotation


# instance fields
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

.field private final membersVersion:J

.field private final pendingMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 276
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 279
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lio/olvid/engine/datatypes/containers/GroupInformation;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 280
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    .line 281
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 282
    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    invoke-static {v4}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->pendingMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    .line 285
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 286
    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->pendingMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    invoke-static {v3}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    :cond_1
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->membersVersion:J

    return-void

    .line 277
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;Ljava/util/HashSet;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;",
            "Lio/olvid/engine/datatypes/containers/GroupInformation;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;",
            ">;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;",
            ">;J)V"
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 267
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 268
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    .line 269
    iput-object p4, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->pendingMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    .line 270
    iput-wide p5, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->membersVersion:J

    return-void
.end method

.method static synthetic access$300(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;
    .locals 0

    .line 259
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;)J
    .locals 2

    .line 259
    iget-wide v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->membersVersion:J

    return-wide v0
.end method

.method static synthetic access$500(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;)Ljava/util/HashSet;
    .locals 0

    .line 259
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$600(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;)Ljava/util/HashSet;
    .locals 0

    .line 259
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->pendingMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 7

    .line 297
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 299
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

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

    .line 300
    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/2addr v3, v5

    goto :goto_0

    .line 303
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->pendingMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Lio/olvid/engine/encoder/Encoded;

    .line 305
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->pendingMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 306
    invoke-virtual {v6}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    aput-object v6, v1, v4

    add-int/2addr v4, v5

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    new-array v3, v3, [Lio/olvid/engine/encoder/Encoded;

    .line 309
    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 310
    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/GroupInformation;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v4

    aput-object v4, v3, v2

    .line 311
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x2

    .line 312
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x3

    iget-wide v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->membersVersion:J

    .line 313
    invoke-static {v1, v2}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v3, v0

    return-object v3
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
