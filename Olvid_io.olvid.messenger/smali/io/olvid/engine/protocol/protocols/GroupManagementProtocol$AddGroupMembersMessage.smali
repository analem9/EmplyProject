.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddGroupMembersMessage"
.end annotation


# instance fields
.field private final groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

.field private final newMembersIdentity:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/Identity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 331
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 334
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lio/olvid/engine/datatypes/containers/GroupInformation;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 335
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;->newMembersIdentity:Ljava/util/HashSet;

    .line 336
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 337
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;->newMembersIdentity:Ljava/util/HashSet;

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 332
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;",
            "Lio/olvid/engine/datatypes/containers/GroupInformation;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/Identity;",
            ">;)V"
        }
    .end annotation

    .line 323
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 324
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 325
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;->newMembersIdentity:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$1000(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;)Ljava/util/HashSet;
    .locals 0

    .line 318
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;->newMembersIdentity:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$700(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;
    .locals 0

    .line 318
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 6

    .line 348
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;->newMembersIdentity:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 350
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;->newMembersIdentity:Ljava/util/HashSet;

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

    check-cast v4, Lio/olvid/engine/datatypes/Identity;

    .line 351
    invoke-static {v4}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lio/olvid/engine/encoder/Encoded;

    .line 354
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 355
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    aput-object v3, v1, v2

    .line 356
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v1, v5

    return-object v1
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
