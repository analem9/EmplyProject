.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "TrustEstablishmentWithSasProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckPropagatedSasAndAddTrustStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1283
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelWithOwnedDeviceInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1284
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    .line 1285
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;

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

    .line 1290
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1296
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$3900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v1, :cond_0

    .line 1297
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v1

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v5

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-static {v1, v5, v6, v4}, Lio/olvid/engine/crypto/SAS;->computeDouble(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Identity;I)[B

    move-result-object v1

    .line 1298
    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 1299
    invoke-static {v1, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    goto :goto_0

    .line 1301
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v1

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v5

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-static {v1, v5, v6, v4}, Lio/olvid/engine/crypto/SAS;->computeDouble(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Identity;I)[B

    move-result-object v1

    .line 1302
    invoke-static {v1, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 1303
    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1306
    :goto_0
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;->access$4600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "The propagated SAS does not match the computed SAS."

    .line 1307
    invoke-static {v1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/datatypes/containers/DialogType;->createDeleteDialog()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1311
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1312
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1314
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CancelledState;-><init>()V

    return-object v0

    .line 1318
    :cond_1
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-interface {v1, v2, v4, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1319
    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createDirectTrustOrigin(J)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v11

    invoke-interface/range {v6 .. v11}, Lio/olvid/engine/metamanager/IdentityDelegate;->addContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V

    goto :goto_1

    .line 1321
    :cond_2
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createDirectTrustOrigin(J)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v7

    invoke-interface {v1, v2, v4, v6, v7}, Lio/olvid/engine/metamanager/IdentityDelegate;->addTrustOriginToContact(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V

    .line 1323
    :goto_1
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 1324
    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v8, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v8}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-interface {v6, v7, v4, v8, v9}, Lio/olvid/engine/metamanager/IdentityDelegate;->addDeviceForContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1329
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;->access$4600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateEnteredSasToOtherDevicesMessage;)[B

    move-result-object v4

    invoke-static {v2, v3, v5, v4}, Lio/olvid/engine/datatypes/containers/DialogType;->createSasConfirmedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[B)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1330
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1331
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1334
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ContactIdentityTrustedState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ContactIdentityTrustedState;-><init>(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;)V

    return-object v0
.end method
