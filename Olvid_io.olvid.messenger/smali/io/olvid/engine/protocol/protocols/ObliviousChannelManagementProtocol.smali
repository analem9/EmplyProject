.class public Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
.source "ObliviousChannelManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;,
        Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessPropagatedContactDeletionStep;,
        Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;,
        Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$PropagateContactDeletionMessage;,
        Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ContactDeletionNotificationMessage;,
        Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;,
        Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$FinalState;
    }
.end annotation


# static fields
.field static final FINAL_STATE_ID:I = 0x1

.field private static final INITIATE_CONTACT_DELETION_MESSAGE_ID:I = 0x0

.field private static final NOTIFY_CONTACT_DELETED_MESSAGE_ID:I = 0x1

.field private static final PROPAGATE_CONTACT_DELETED_MESSAGE_ID:I = 0x2


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-direct/range {p0 .. p7}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;->eraseReceivedMessagesAfterReachingAFinalState:Z

    return-void
.end method


# virtual methods
.method public getFinalStateIds()[I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    return-object v1
.end method

.method protected getMessageClass(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$PropagateContactDeletionMessage;

    return-object p1

    .line 101
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ContactDeletionNotificationMessage;

    return-object p1

    .line 99
    :cond_2
    const-class p1, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;

    return-object p1
.end method

.method protected getPossibleStepClasses(I)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Class;

    return-object p1

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Class;

    .line 205
    const-class v1, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-class v1, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-class v1, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessPropagatedContactDeletionStep;

    aput-object v1, p1, v0

    return-object p1
.end method

.method public getProtocolId()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected getStateClass(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$FinalState;

    return-object p1

    .line 52
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    return-object p1
.end method
