.class public abstract Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
.super Ljava/lang/Object;
.source "ConcreteProtocol.java"


# static fields
.field public static final CHANNEL_CREATION_WITH_CONTACT_DEVICE_PROTOCOL_ID:I = 0x2

.field public static final CONTACT_MUTUAL_INTRODUCTION_PROTOCOL_ID:I = 0x4

.field public static final DEVICE_DISCOVERY_CHILD_PROTOCOL_ID:I = 0x3

.field public static final DEVICE_DISCOVERY_PROTOCOL_ID:I = 0x0

.field public static final DOWNLOAD_IDENTITY_PHOTO_CHILD_PROTOCOL_ID:I = 0x7

.field public static final GROUP_CREATION_PROTOCOL_ID:I = 0x5

.field public static final GROUP_INVITATION_PROTOCOL_ID:I = 0x8

.field public static final GROUP_MANAGEMENT_PROTOCOL_ID:I = 0x9

.field public static final IDENTITY_DETAILS_PUBLICATION_PROTOCOL_ID:I = 0x6

.field public static final INITIAL_STATE_ID:I = 0x0

.field public static final OBLIVIOUS_CHANNEL_MANAGEMENT_PROTOCOL_ID:I = 0xa

.field public static final TRUST_ESTABLISHMENT_PROTOCOL_ID:I = 0x1

.field public static final TRUST_ESTABLISHMENT_WITH_MUTUAL_SCAN_PROTOCOL_ID:I = 0xc

.field public static final TRUST_ESTABLISHMENT_WITH_SAS_PROTOCOL_ID:I = 0xb


# instance fields
.field protected currentState:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

.field public eraseReceivedMessagesAfterReachingAFinalState:Z

.field protected final jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field protected final ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field protected final prng:Lio/olvid/engine/crypto/PRNGService;

.field protected final protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

.field protected final protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->eraseReceivedMessagesAfterReachingAFinalState:Z

    .line 91
    iput-object p1, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    .line 92
    iput-object p2, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    .line 93
    iput-object p5, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 94
    iput-object p6, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->prng:Lio/olvid/engine/crypto/PRNGService;

    .line 95
    iput-object p7, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 96
    invoke-virtual {p0, p3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getStateClass(I)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolState(Ljava/lang/Class;Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->currentState:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    return-void
.end method

.method public static getConcreteProtocol(Lio/olvid/engine/protocol/databases/ProtocolInstance;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->getProtocolId()I

    move-result v1

    .line 105
    invoke-virtual {p0}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 106
    invoke-virtual {p0}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->getCurrentStateId()I

    move-result v3

    .line 107
    invoke-virtual {p0}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->getEncodedCurrentState()Lio/olvid/engine/encoder/Encoded;

    move-result-object v4

    .line 108
    invoke-virtual {p0}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    move-object v6, p1

    move-object v7, p2

    .line 109
    invoke-static/range {v0 .. v7}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getConcreteProtocol(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;ILio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    move-result-object p0

    return-object p0
.end method

.method private static getConcreteProtocol(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;ILio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 148
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown protocol id: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 146
    :pswitch_1
    new-instance p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object p1

    .line 144
    :pswitch_2
    new-instance p1, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object p1

    .line 142
    :pswitch_3
    new-instance p1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object p1

    .line 140
    :pswitch_4
    new-instance p1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object p1

    .line 138
    :pswitch_5
    new-instance p1, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object p1

    .line 134
    :pswitch_6
    new-instance p1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object p1

    .line 132
    :pswitch_7
    new-instance p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object p1

    .line 130
    :pswitch_8
    new-instance p1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object p1

    .line 128
    :pswitch_9
    new-instance p1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object p1

    .line 126
    :pswitch_a
    new-instance p1, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getConcreteProtocolInInitialState(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 113
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getConcreteProtocol(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;ILio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getConcreteProtocolMessage(Lio/olvid/engine/protocol/databases/ReceivedMessage;)Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
    .locals 5

    .line 164
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getProtocolMessageId()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getMessageClass(I)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 165
    const-class v3, Lio/olvid/engine/protocol/databases/ReceivedMessage;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentState()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->currentState:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    return-object v0
.end method

.method public abstract getFinalStateIds()[I
.end method

.method public getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method protected abstract getMessageClass(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method protected abstract getPossibleStepClasses(I)[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public getPrng()Lio/olvid/engine/crypto/PRNGService;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->prng:Lio/olvid/engine/crypto/PRNGService;

    return-object v0
.end method

.method public abstract getProtocolId()I
.end method

.method public getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    return-object v0
.end method

.method protected final getProtocolState(Ljava/lang/Class;Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/olvid/engine/encoder/Encoded;",
            ")",
            "Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 156
    const-class v2, Lio/olvid/engine/encoder/Encoded;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    return-object p1
.end method

.method protected abstract getStateClass(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public final getStepToExecute(Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;)Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
    .locals 12

    const/4 v0, 0x0

    .line 178
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->currentState:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    iget v1, v1, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;->id:I

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getPossibleStepClasses(I)[Ljava/lang/Class;

    move-result-object v1

    .line 179
    array-length v2, v1

    const/4 v3, 0x0

    move-object v6, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ge v4, v2, :cond_0

    aget-object v10, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-array v8, v8, [Ljava/lang/Class;

    .line 181
    iget-object v11, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->currentState:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v8, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v10, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v5, 0x1

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eq v5, v9, :cond_1

    .line 186
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " protocolStep to execute in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->currentState:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-array v1, v8, [Ljava/lang/Object;

    .line 189
    iget-object v2, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->currentState:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    aput-object v2, v1, v3

    aput-object p1, v1, v9

    aput-object p0, v1, v7

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    return-object v0
.end method

.method public final hasReachedFinalState()Z
    .locals 6

    .line 198
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getFinalStateIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 199
    iget-object v5, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->currentState:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    iget v5, v5, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;->id:I

    if-ne v5, v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public updateCurrentState(Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->currentState:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    return-void
.end method
