.class public Lio/olvid/engine/protocol/ProtocolManager;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Lio/olvid/engine/metamanager/ProtocolDelegate;
.implements Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;
.implements Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;
.implements Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;
.implements Lio/olvid/engine/metamanager/ObvManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/protocol/ProtocolManager$ContactTrustLevelListener;,
        Lio/olvid/engine/protocol/ProtocolManager$ContactDeletedListener;,
        Lio/olvid/engine/protocol/ProtocolManager$NewContactListener;
    }
.end annotation


# instance fields
.field private channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

.field private final contactDeletedListener:Lio/olvid/engine/protocol/ProtocolManager$ContactDeletedListener;

.field private final contactTrustLevelListener:Lio/olvid/engine/protocol/ProtocolManager$ContactTrustLevelListener;

.field private createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

.field private encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

.field private identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

.field private final jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final metaManager:Lio/olvid/engine/metamanager/MetaManager;

.field private final newContactListener:Lio/olvid/engine/protocol/ProtocolManager$NewContactListener;

.field private notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

.field private final prng:Lio/olvid/engine/crypto/PRNGService;

.field private final protocolStepCoordinator:Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;


# direct methods
.method public constructor <init>(Lio/olvid/engine/metamanager/MetaManager;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lio/olvid/engine/protocol/ProtocolManager;->metaManager:Lio/olvid/engine/metamanager/MetaManager;

    .line 78
    iput-object p2, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    .line 79
    iput-object p3, p0, Lio/olvid/engine/protocol/ProtocolManager;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 80
    new-instance p2, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;

    iget-object p3, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p2, p0, p3, v0}, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSessionFactory;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    iput-object p2, p0, Lio/olvid/engine/protocol/ProtocolManager;->protocolStepCoordinator:Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;

    .line 81
    new-instance p2, Lio/olvid/engine/protocol/ProtocolManager$NewContactListener;

    invoke-direct {p2, p0}, Lio/olvid/engine/protocol/ProtocolManager$NewContactListener;-><init>(Lio/olvid/engine/protocol/ProtocolManager;)V

    iput-object p2, p0, Lio/olvid/engine/protocol/ProtocolManager;->newContactListener:Lio/olvid/engine/protocol/ProtocolManager$NewContactListener;

    .line 82
    new-instance p2, Lio/olvid/engine/protocol/ProtocolManager$ContactDeletedListener;

    invoke-direct {p2, p0}, Lio/olvid/engine/protocol/ProtocolManager$ContactDeletedListener;-><init>(Lio/olvid/engine/protocol/ProtocolManager;)V

    iput-object p2, p0, Lio/olvid/engine/protocol/ProtocolManager;->contactDeletedListener:Lio/olvid/engine/protocol/ProtocolManager$ContactDeletedListener;

    .line 83
    new-instance p2, Lio/olvid/engine/protocol/ProtocolManager$ContactTrustLevelListener;

    invoke-direct {p2, p0}, Lio/olvid/engine/protocol/ProtocolManager$ContactTrustLevelListener;-><init>(Lio/olvid/engine/protocol/ProtocolManager;)V

    iput-object p2, p0, Lio/olvid/engine/protocol/ProtocolManager;->contactTrustLevelListener:Lio/olvid/engine/protocol/ProtocolManager$ContactTrustLevelListener;

    .line 86
    const-class p2, Lio/olvid/engine/metamanager/CreateSessionDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 87
    const-class p2, Lio/olvid/engine/metamanager/ChannelDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 88
    const-class p2, Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 89
    const-class p2, Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 90
    const-class p2, Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 91
    invoke-virtual {p1, p0}, Lio/olvid/engine/metamanager/MetaManager;->registerImplementedDelegates(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/protocol/ProtocolManager;)Lio/olvid/engine/crypto/PRNGService;
    .locals 0

    .line 59
    iget-object p0, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    return-object p0
.end method

.method private startLegacyTrustEstablishmentProtocol(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 430
    invoke-virtual {p1, p3}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Cannot start a protocol with contactIdentity == ownedIdentity"

    .line 431
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 434
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 435
    :try_start_0
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 436
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v1, v5}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 440
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v1, v3, p3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getSerializedPublishedDetailsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p1, "Error finding own identity details in startTrustEstablishmentProtocol"

    .line 442
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_1
    return-void

    .line 445
    :cond_2
    :try_start_1
    new-instance v1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$InitialMessage;

    invoke-direct {v1, v2, p1, p2, p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$InitialMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$InitialMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p1

    .line 446
    iget-object p2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object p3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p2, p3, p1, v1}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 447
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 448
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 434
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_4

    .line 448
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p2
.end method

.method private startTrustEstablishmentWithSasProtocol(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 452
    invoke-virtual {p1, p3}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Cannot start a protocol with contactIdentity == ownedIdentity"

    .line 453
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 456
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 457
    :try_start_0
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 458
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v1, v5}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 462
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v1, v3, p3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getSerializedPublishedDetailsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p1, "Error finding own identity details in startTrustEstablishmentProtocol"

    .line 464
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_1
    return-void

    .line 467
    :cond_2
    :try_start_1
    new-instance v1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$InitialMessage;

    invoke-direct {v1, v2, p1, p2, p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$InitialMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$InitialMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p1

    .line 468
    iget-object p2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object p3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p2, p3, p1, v1}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 469
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 470
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 456
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_4

    .line 470
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p2
.end method

.method public static upgradeTables(Lio/olvid/engine/datatypes/Session;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 175
    invoke-static {p0, p1, p2}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 176
    invoke-static {p0, p1, p2}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 177
    invoke-static {p0, p1, p2}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 178
    invoke-static {p0, p1, p2}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 179
    invoke-static {p0, p1, p2}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    return-void
.end method

.method private wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;
    .locals 9

    .line 396
    new-instance v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, p0, Lio/olvid/engine/protocol/ProtocolManager;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    iget-object v5, p0, Lio/olvid/engine/protocol/ProtocolManager;->protocolStepCoordinator:Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;

    move-object v0, v8

    move-object v1, p1

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/ChannelDelegate;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;Lio/olvid/engine/protocol/datatypes/ProtocolReceivedMessageProcessorDelegate;Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;Lio/olvid/engine/metamanager/ProtocolDelegate;)V

    return-object v8
.end method


# virtual methods
.method public abortProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 309
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/ProtocolManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting Protocol "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 311
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v1, v2, p2}, Lio/olvid/engine/metamanager/IdentityDelegate;->deleteAllProtocolEphemeralIdentities(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V

    .line 314
    invoke-static {v0, p2, p3}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->getAllParentLinks(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;

    move-result-object v1

    .line 315
    invoke-static {v0, p2, p3}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->getAllChildLinks(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;

    move-result-object v2

    .line 318
    invoke-static {v0, p2, p3}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/ProtocolInstance;

    move-result-object v3

    .line 319
    invoke-virtual {v3}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->delete()V

    .line 322
    invoke-static {v0, p2, p3}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getAll(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/protocol/databases/ReceivedMessage;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 323
    invoke-virtual {v7}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->delete()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 328
    :cond_0
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v6, v1, v4

    .line 329
    invoke-static {v0, p2, p3}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/ProtocolInstance;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 331
    invoke-virtual {v6}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->getParentProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v6

    invoke-virtual {p0, p1, v6, p3}, Lio/olvid/engine/protocol/ProtocolManager;->abortProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 335
    :cond_2
    array-length v1, v2

    :goto_2
    if-ge v5, v1, :cond_4

    aget-object v3, v2, v5

    .line 336
    invoke-static {v0, p2, p3}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/ProtocolInstance;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 338
    invoke-virtual {v3}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->getChildProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p3}, Lio/olvid/engine/protocol/ProtocolManager;->abortProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public deleteContact(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 764
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 765
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v1, v2, p1, p2}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 772
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p2

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v1, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 777
    new-instance p2, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;

    invoke-direct {p2, v2, p1}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;)V

    invoke-virtual {p2}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p1

    .line 778
    iget-object p2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p2, v1, p1, v2}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 779
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string p1, "Error in deleteContact: contact not found"

    .line 766
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 767
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 764
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_2

    .line 780
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2

    .line 761
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public disbandGroup([BLio/olvid/engine/datatypes/Identity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 732
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 733
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v1, v2, p2, p1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    .line 734
    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v2, v3, p2, p1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroupInformation(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object p1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 740
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 745
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 747
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p2

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v1, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 752
    new-instance p2, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;

    invoke-direct {p2, v2, p1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;)V

    invoke-virtual {p2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p1

    .line 753
    iget-object p2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p2, v1, p1, v2}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 754
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string p1, "Error in disbandGroup: trying to disband a group you do not own"

    .line 741
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 742
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_2
    const-string p1, "Error in disbandGroup: group not found"

    .line 736
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 737
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 732
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_3

    .line 755
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p2

    .line 729
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    if-eqz v0, :cond_0

    .line 392
    new-instance v9, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    invoke-interface {v0}, Lio/olvid/engine/metamanager/CreateSessionDelegate;->getSession()Lio/olvid/engine/datatypes/Session;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/ProtocolManager;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v5, p0, Lio/olvid/engine/protocol/ProtocolManager;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    iget-object v6, p0, Lio/olvid/engine/protocol/ProtocolManager;->protocolStepCoordinator:Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;

    move-object v1, v9

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/ChannelDelegate;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;Lio/olvid/engine/protocol/datatypes/ProtocolReceivedMessageProcessorDelegate;Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;Lio/olvid/engine/metamanager/ProtocolDelegate;)V

    return-object v9

    .line 390
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "No CreateSessionDelegate was set in ChannelManager."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialisationComplete()V
    .locals 9

    .line 97
    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager;->protocolStepCoordinator:Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/coordinators/ProtocolStepCoordinator;->initialQueueing()V

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :try_start_1
    invoke-static {v0}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->getAll(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;)[Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 102
    iget-object v5, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v4}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->getContactIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    invoke-virtual {v4}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lio/olvid/engine/metamanager/IdentityDelegate;->getContactIdentityTrustLevel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {v4}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->getTargetTrustLevel()Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 107
    invoke-virtual {v4}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->getGenericProtocolMessageToSendWhenTrustLevelIncreased()Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;

    move-result-object v4

    .line 108
    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v4}, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v4

    iget-object v7, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {v5, v6, v4, v7}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 112
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 100
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 112
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method public inviteContactsToGroup([BLio/olvid/engine/datatypes/Identity;Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lio/olvid/engine/datatypes/Identity;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/Identity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    .line 574
    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 578
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 584
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 585
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v1, v2, p2, p1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    .line 586
    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v2, v3, p2, p1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroupInformation(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object p1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 592
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 593
    iget-object v6, v6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "Error in inviteContactsToGroup: adding a member that is already pending"

    .line 594
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 595
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 599
    :cond_1
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getGroupMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v5, v1, v3

    .line 600
    invoke-virtual {p3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "Error in inviteContactsToGroup: adding a member that is already in the group"

    .line 601
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 602
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 606
    :cond_3
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 608
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p2

    const/16 v3, 0x9

    invoke-direct {v2, p2, v3, v1, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 613
    new-instance p2, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;

    invoke-direct {p2, v2, p1, p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;)V

    invoke-virtual {p2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$AddGroupMembersMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p1

    .line 614
    iget-object p2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object p3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p2, p3, p1, v1}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 615
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 616
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    const-string p1, "Error in inviteContactsToGroup: group not found"

    .line 588
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 589
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 584
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_6

    .line 616
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p2

    :cond_7
    const-string p1, "Error in inviteContactsToGroup: ownedIdentity contained in newMembersIdentity"

    .line 579
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 580
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 575
    :cond_8
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public leaveGroup([BLio/olvid/engine/datatypes/Identity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 700
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 701
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v1, v2, p2, p1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    .line 702
    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v2, v3, p2, p1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroupInformation(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object p1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 708
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 713
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 715
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p2

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v1, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 720
    new-instance p2, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;

    invoke-direct {p2, v2, p1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;)V

    invoke-virtual {p2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p1

    .line 721
    iget-object p2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p2, v1, p1, v2}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 722
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string p1, "Error in leaveGroup: trying to leave a group you own"

    .line 709
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 710
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_2
    const-string p1, "Error in leaveGroup: group not found"

    .line 704
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 705
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 700
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_3

    .line 723
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p2

    .line 697
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public process(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 360
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-interface {v1, p1, v0}, Lio/olvid/engine/metamanager/IdentityDelegate;->isOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-static {p2, v0}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->of(Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;

    move-result-object p2

    .line 365
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/ProtocolManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-static {p1, p2, v0}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/protocol/databases/ReceivedMessage;

    return-void

    .line 362
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public process(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 345
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-interface {v1, p1, v0}, Lio/olvid/engine/metamanager/IdentityDelegate;->isOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 347
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-interface {v1, p1, v0}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOwnedIdentityAssociatedWithEphemeralIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 352
    :cond_1
    :goto_0
    invoke-static {p2, v0}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->of(Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;

    move-result-object p2

    .line 353
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/ProtocolManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-static {p1, p2, v0}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/protocol/databases/ReceivedMessage;

    return-void
.end method

.method public process(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-interface {v1, p1, v0}, Lio/olvid/engine/metamanager/IdentityDelegate;->isOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-static {p2, v0}, Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;->of(Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;

    move-result-object p2

    .line 377
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/ProtocolManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-static {p1, p2, v0}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/protocol/datatypes/GenericReceivedProtocolMessage;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/protocol/databases/ReceivedMessage;

    return-void

    .line 374
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public reinvitePendingToGroup([BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 625
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 626
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v1, v2, p2, p1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    .line 627
    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v2, v3, p2, p1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroupInformation(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object p1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 633
    invoke-virtual {v1, p3}, Lio/olvid/engine/datatypes/containers/Group;->isPendingMember(Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 640
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p2

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v1, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 645
    new-instance p2, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;

    invoke-direct {p2, v2, p1, p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;Lio/olvid/engine/datatypes/Identity;)V

    invoke-virtual {p2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p1

    .line 646
    iget-object p2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object p3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p2, p3, p1, v1}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 647
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string p1, "Error in reinvitePendingToGroup: pendingMemberIdentity is not a PendingMember"

    .line 634
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 635
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_2
    const-string p1, "Error in reinvitePendingToGroup: group not found"

    .line 629
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 630
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 625
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_3

    .line 648
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p2

    .line 622
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public removeContactsFromGroup([BLio/olvid/engine/datatypes/Identity;Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lio/olvid/engine/datatypes/Identity;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/Identity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 655
    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 659
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 665
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 666
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v1, v2, p2, p1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    .line 667
    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v2, v3, p2, p1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroupInformation(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object p1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 673
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/Identity;

    .line 674
    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/containers/Group;->isMember(Lio/olvid/engine/datatypes/Identity;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/containers/Group;->isPendingMember(Lio/olvid/engine/datatypes/Identity;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Error in removedMemberIdentities: removing a member that is neither member nor pending"

    .line 675
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 676
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 680
    :cond_2
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 682
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p2

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v1, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 687
    new-instance p2, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

    invoke-direct {p2, v2, p1, p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;)V

    invoke-virtual {p2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p1

    .line 688
    iget-object p2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object p3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p2, p3, p1, v1}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 689
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 690
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    const-string p1, "Error in inviteContactsToGroup: group not found"

    .line 669
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 670
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 665
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_5

    .line 690
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p2

    :cond_6
    const-string p1, "Error in inviteContactsToGroup: ownedIdentity contained in removedMemberIdentities"

    .line 660
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 661
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 656
    :cond_7
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/ChannelDelegate;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lio/olvid/engine/protocol/ProtocolManager;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/CreateSessionDelegate;)V
    .locals 2

    .line 159
    iput-object p1, p0, Lio/olvid/engine/protocol/ProtocolManager;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :try_start_1
    iget-object v0, p1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 163
    iget-object v0, p1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 164
    iget-object v0, p1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 165
    iget-object v0, p1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 166
    iget-object v0, p1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 167
    iget-object v0, p1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 168
    :try_start_2
    invoke-virtual {p1}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 161
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 168
    :try_start_4
    invoke-virtual {p1}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 170
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create protocol databases"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lio/olvid/engine/protocol/ProtocolManager;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/IdentityDelegate;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V
    .locals 2

    .line 195
    iput-object p1, p0, Lio/olvid/engine/protocol/ProtocolManager;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    .line 196
    iget-object p1, p0, Lio/olvid/engine/protocol/ProtocolManager;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager;->newContactListener:Lio/olvid/engine/protocol/ProtocolManager$NewContactListener;

    const-string v1, "identity_manager_notification_new_contact_device"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationListeningDelegate;->addListener(Ljava/lang/String;Lio/olvid/engine/datatypes/NotificationListener;)J

    .line 197
    iget-object p1, p0, Lio/olvid/engine/protocol/ProtocolManager;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager;->contactDeletedListener:Lio/olvid/engine/protocol/ProtocolManager$ContactDeletedListener;

    const-string v1, "identity_manager_notification_contact_identity_deleted"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationListeningDelegate;->addListener(Ljava/lang/String;Lio/olvid/engine/datatypes/NotificationListener;)J

    .line 198
    iget-object p1, p0, Lio/olvid/engine/protocol/ProtocolManager;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager;->contactTrustLevelListener:Lio/olvid/engine/protocol/ProtocolManager$ContactTrustLevelListener;

    const-string v1, "identity_manager_notification_contact_trust_level_increased"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationListeningDelegate;->addListener(Ljava/lang/String;Lio/olvid/engine/datatypes/NotificationListener;)J

    return-void
.end method

.method public startChannelCreationWithContactDeviceProtocol(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    invoke-virtual {p2, p3}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Cannot start a protocol with contactIdentity == ownedIdentity"

    .line 476
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 480
    :try_start_0
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 481
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, p3, v3, v1, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 485
    new-instance p3, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

    invoke-direct {p3, v2, p2, p1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p1

    .line 486
    iget-object p2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object p3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p2, p3, p1, v1}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 487
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 479
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_2

    .line 488
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2
.end method

.method public startContactMutualIntroductionProtocol(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 493
    invoke-virtual {p1, p3}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2, p3}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 497
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 498
    :try_start_0
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 499
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p3

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, p3, v3, v1, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 503
    new-instance p3, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;

    invoke-direct {p3, v2, p1, p2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InitialMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p1

    .line 504
    iget-object p2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object p3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p2, p3, p1, v1}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 505
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 497
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_2

    .line 506
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2

    :cond_3
    :goto_1
    const-string p1, "Cannot start a protocol with contactIdentity == ownedIdentity"

    .line 494
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public startDeviceDiscoveryProtocol(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 406
    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Cannot start a protocol with contactIdentity == ownedIdentity"

    .line 407
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 410
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 411
    :try_start_0
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 412
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3, v1, v3}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 416
    new-instance p2, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;

    invoke-direct {p2, v2, p1}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;)V

    invoke-virtual {p2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$InitialMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p1

    .line 417
    iget-object p2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p2, v1, p1, v2}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 418
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 410
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_2

    .line 419
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2
.end method

.method public startFullRatchetProtocolForObliviousChannel(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    return-void
.end method

.method public startGroupCreationProtocol(Ljava/lang/String;Ljava/util/HashSet;Lio/olvid/engine/datatypes/Identity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;",
            ">;",
            "Lio/olvid/engine/datatypes/Identity;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 511
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    .line 515
    new-instance v0, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    const-string v1, ""

    invoke-direct {v0, p3, v1}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 521
    invoke-virtual {p0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 522
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-static {p3, p1, v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->generate(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object p1

    .line 523
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 525
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p3

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, p3, v3, v1, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 530
    new-instance p3, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

    invoke-direct {p3, v2, p1, p2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;)V

    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p1

    .line 531
    iget-object p2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object p3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p2, p3, p1, v1}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 532
    iget-object p1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 521
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 533
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2

    :cond_2
    const-string p1, "Error in startGroupCreationProtocol: ownedIdentity contained in groupMemberIdentitiesAndSerializedDetails"

    .line 516
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 517
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 512
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public startGroupDetailsPublicationProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 557
    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-interface {v0, p1, p2, p3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroupInformation(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 561
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 562
    new-instance v1, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    .line 563
    invoke-static {p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p2

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v1, p2, v2, v0, v3}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 568
    new-instance p2, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GroupMembersOrDetailsChangedTriggerMessage;

    invoke-direct {p2, v1, p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GroupMembersOrDetailsChangedTriggerMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;)V

    invoke-virtual {p2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GroupMembersOrDetailsChangedTriggerMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p2

    .line 569
    iget-object p3, p0, Lio/olvid/engine/protocol/ProtocolManager;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p3, p1, p2, v0}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    return-void

    .line 559
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 554
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public startIdentityDetailsPublicationProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 542
    new-instance v0, Lio/olvid/engine/datatypes/UID;

    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-direct {v0, v1}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 543
    new-instance v1, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-static {p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p2

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, p2, v2, v0, v3}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 547
    new-instance p2, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;

    invoke-direct {p2, v1, p3}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;I)V

    invoke-virtual {p2}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object p2

    .line 548
    iget-object p3, p0, Lio/olvid/engine/protocol/ProtocolManager;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p3, p1, p2, v0}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    return-void

    .line 539
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public startTrustEstablishmentProtocol(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 424
    invoke-direct {p0, p1, p2, p3}, Lio/olvid/engine/protocol/ProtocolManager;->startLegacyTrustEstablishmentProtocol(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)V

    return-void
.end method
