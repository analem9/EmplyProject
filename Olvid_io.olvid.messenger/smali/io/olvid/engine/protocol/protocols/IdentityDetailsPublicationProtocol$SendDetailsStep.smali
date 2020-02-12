.class public Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "IdentityDetailsPublicationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendDetailsStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ServerPutPhotoMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ServerPutPhotoMessage;Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 357
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 358
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsStep;->startState:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;

    .line 359
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ServerPutPhotoMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 366
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getContactsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    .line 367
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfosForMultipleIdentities([Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    .line 368
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 370
    :try_start_0
    invoke-virtual {p0, v4}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v4

    .line 371
    new-instance v5, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsStep;->startState:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;

    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;->access$200(Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Ljava/lang/String;)V

    invoke-virtual {v5}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v4

    .line 372
    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    invoke-interface {v5, v6, v4, v7}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "One contact with no channel during IdentityDetailsPublicationProtocol.SendDetailsStep"

    .line 374
    invoke-static {v4}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    :cond_0
    new-instance v0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$DetailsSentState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$DetailsSentState;-><init>()V

    return-object v0
.end method
