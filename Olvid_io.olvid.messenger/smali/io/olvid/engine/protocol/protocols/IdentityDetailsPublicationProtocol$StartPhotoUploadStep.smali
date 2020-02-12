.class public Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "IdentityDetailsPublicationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartPhotoUploadStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 275
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 276
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    .line 284
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v1, v2, v7}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOwnedIdentityPublishedAndLatestDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return-object v8

    :cond_0
    const/4 v9, 0x0

    .line 290
    aget-object v2, v1, v9

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getVersion()I

    move-result v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version mismatch in IdentityDetailsPublicationProtocol "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    return-object v8

    .line 295
    :cond_1
    aget-object v10, v1, v9

    .line 297
    invoke-virtual {v10}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object v1

    if-nez v1, :cond_5

    .line 299
    :cond_2
    new-instance v11, Lio/olvid/engine/datatypes/UID;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v1

    invoke-direct {v11, v1}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 300
    invoke-static {v9}, Lio/olvid/engine/crypto/Suite;->getDefaultAuthEnc(I)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v12

    .line 301
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v1

    invoke-interface {v12, v1}, Lio/olvid/engine/crypto/AuthEnc;->generateKey(Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v13

    .line 305
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getVersion()I

    move-result v4

    move-object v3, v7

    move-object v5, v11

    move-object v6, v13

    invoke-interface/range {v1 .. v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->setOwnedIdentityDetailsServerLabelAndKey(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    .line 309
    new-instance v1, Ljava/io/File;

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [B

    .line 311
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 313
    :goto_0
    :try_start_0
    array-length v1, v2

    if-ge v9, v1, :cond_4

    .line 314
    array-length v1, v2

    sub-int/2addr v1, v9

    invoke-virtual {v3, v2, v9, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr v9, v1

    goto :goto_0

    .line 320
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 321
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v1

    invoke-interface {v12, v13, v2, v1}, Lio/olvid/engine/crypto/AuthEnc;->encrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[BLio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v1

    .line 323
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v7, v11, v1}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->createPutUserDataQuery(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v1

    invoke-static {v2, v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createServerQueryChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 324
    new-instance v2, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ServerPutPhotoMessage;

    invoke-direct {v2, v1, v8}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ServerPutPhotoMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$1;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ServerPutPhotoMessage;->generateChannelServerQueryMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;

    move-result-object v1

    .line 325
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 328
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 329
    new-instance v1, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;

    invoke-direct {v1, v0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;-><init>(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 311
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 320
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    .line 333
    :cond_5
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v1, v2, v7}, Lio/olvid/engine/metamanager/IdentityDelegate;->getContactsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    .line 334
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v1, v7}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfosForMultipleIdentities([Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    .line 337
    array-length v3, v1

    :goto_3
    if-ge v9, v3, :cond_6

    aget-object v4, v1, v9

    .line 339
    :try_start_3
    invoke-virtual {p0, v4}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v4

    .line 340
    new-instance v5, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;

    invoke-direct {v5, v4, v2}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Ljava/lang/String;)V

    invoke-virtual {v5}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v4

    .line 341
    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    invoke-interface {v5, v6, v4, v7}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    const-string v4, "One contact with no channel during IdentityDetailsPublicationProtocol.StartPhotoUploadStep"

    .line 343
    invoke-static {v4}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 347
    :cond_6
    new-instance v0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$DetailsSentState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$DetailsSentState;-><init>()V

    return-object v0
.end method
