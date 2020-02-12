.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitiateGroupCreationMessage"
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


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 156
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 159
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lio/olvid/engine/datatypes/containers/GroupInformation;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    .line 161
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

    .line 162
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    invoke-static {v2}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 157
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
            "Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 149
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 150
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;)Ljava/util/HashSet;
    .locals 0

    .line 143
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;
    .locals 0

    .line 143
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 6

    .line 173
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 175
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->groupMemberIdentitiesAndSerializedDetails:Ljava/util/HashSet;

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

    .line 176
    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lio/olvid/engine/encoder/Encoded;

    .line 179
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->groupInformation:Lio/olvid/engine/datatypes/containers/GroupInformation;

    .line 180
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    aput-object v3, v1, v2

    .line 181
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v1, v5

    return-object v1
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
