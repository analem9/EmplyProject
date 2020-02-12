.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "TrustEstablishmentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckSasAndAddTrustStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1199
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1200
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    .line 1201
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1206
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1208
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;->access$3700(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "ObvDialog uuid mismatch in DialogForSasExchangeMessage."

    .line 1209
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 1213
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$3900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lio/olvid/engine/crypto/SAS;->compute(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;I)[B

    move-result-object v1

    .line 1214
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v2

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$3900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lio/olvid/engine/crypto/SAS;->compute(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;I)[B

    move-result-object v2

    .line 1215
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;->access$4100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;)[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "The SAS entered by the user does not match the computed SAS."

    .line 1216
    invoke-static {v2}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;

    invoke-virtual {v5}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;->getServerTimestamp()J

    move-result-wide v5

    invoke-static {v3, v4, v1, v5, v6}, Lio/olvid/engine/datatypes/containers/DialogType;->createSasExchangeDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;[BJ)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1219
    new-instance v2, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1220
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1221
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    return-object v0

    .line 1225
    :cond_1
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1226
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createDirectTrustOrigin(J)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lio/olvid/engine/metamanager/IdentityDelegate;->addContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V

    goto :goto_0

    .line 1228
    :cond_2
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createDirectTrustOrigin(J)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->addTrustOriginToContact(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V

    .line 1230
    :goto_0
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1231
    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v8, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v8}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-interface {v6, v7, v5, v8, v9}, Lio/olvid/engine/metamanager/IdentityDelegate;->addDeviceForContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1237
    :cond_3
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_4

    .line 1239
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllOwnedConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 1240
    new-instance v3, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateEnteredSasToOtherDevicesMessage;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;->access$4100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;)[B

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateEnteredSasToOtherDevicesMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;[B)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateEnteredSasToOtherDevicesMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v2

    .line 1241
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1247
    :cond_4
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;->access$4100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;)[B

    move-result-object v5

    invoke-static {v3, v4, v1, v5}, Lio/olvid/engine/datatypes/containers/DialogType;->createSasConfirmedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[B)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1248
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1249
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1254
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricChannelInfo(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1255
    new-instance v2, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$MutualTrustConfirmationMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$MutualTrustConfirmationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$MutualTrustConfirmationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 1256
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1259
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;-><init>(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;)V

    return-object v0
.end method
