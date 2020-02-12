.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "TrustEstablishmentWithSasProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckSasAndAddTrustStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1202
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1203
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    .line 1204
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1209
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1211
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;->access$3700(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "ObvDialog uuid mismatch in DialogForSasExchangeMessage."

    .line 1212
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 1219
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$3900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    .line 1220
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v1

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v5

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-static {v1, v5, v6, v4}, Lio/olvid/engine/crypto/SAS;->computeDouble(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Identity;I)[B

    move-result-object v1

    .line 1221
    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 1222
    invoke-static {v1, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    goto :goto_0

    .line 1224
    :cond_1
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v1

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v5

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-static {v1, v5, v6, v4}, Lio/olvid/engine/crypto/SAS;->computeDouble(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Identity;I)[B

    move-result-object v1

    .line 1225
    invoke-static {v1, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 1226
    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1229
    :goto_0
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "The SAS entered by the user does not match the computed SAS."

    .line 1230
    invoke-static {v1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;

    invoke-virtual {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;->getServerTimestamp()J

    move-result-wide v6

    invoke-static {v2, v3, v5, v6, v7}, Lio/olvid/engine/datatypes/containers/DialogType;->createSasExchangeDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;[BJ)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1233
    new-instance v2, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1234
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1235
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    return-object v0

    .line 1239
    :cond_2
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-interface {v1, v2, v4, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1240
    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createDirectTrustOrigin(J)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v11

    invoke-interface/range {v6 .. v11}, Lio/olvid/engine/metamanager/IdentityDelegate;->addContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V

    goto :goto_1

    .line 1242
    :cond_3
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createDirectTrustOrigin(J)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v7

    invoke-interface {v1, v2, v4, v6, v7}, Lio/olvid/engine/metamanager/IdentityDelegate;->addTrustOriginToContact(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V

    .line 1244
    :goto_1
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 1245
    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v8, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v8}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-interface {v6, v7, v4, v8, v9}, Lio/olvid/engine/metamanager/IdentityDelegate;->addDeviceForContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1251
    :cond_4
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_5

    .line 1253
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllOwnedConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1254
    new-instance v2, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;)[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;[B)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 1255
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1261
    :cond_5
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$DialogForSasExchangeMessage;)[B

    move-result-object v4

    invoke-static {v2, v3, v5, v4}, Lio/olvid/engine/datatypes/containers/DialogType;->createSasConfirmedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[B)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1262
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1263
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1268
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricChannelInfo(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1269
    new-instance v2, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$MutualTrustConfirmationMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$MutualTrustConfirmationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$MutualTrustConfirmationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 1270
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1273
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ContactIdentityTrustedState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ContactIdentityTrustedState;-><init>(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;)V

    return-object v0
.end method
