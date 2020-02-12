.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "TrustEstablishmentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckPropagatedSasAndAddTrustStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateEnteredSasToOtherDevicesMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateEnteredSasToOtherDevicesMessage;Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1269
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelWithOwnedDeviceInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1270
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    .line 1271
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateEnteredSasToOtherDevicesMessage;

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

    .line 1276
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1278
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$3900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lio/olvid/engine/crypto/SAS;->compute(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;I)[B

    move-result-object v1

    .line 1279
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v2

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$3900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lio/olvid/engine/crypto/SAS;->compute(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;I)[B

    move-result-object v2

    .line 1280
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateEnteredSasToOtherDevicesMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateEnteredSasToOtherDevicesMessage;->access$4500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateEnteredSasToOtherDevicesMessage;)[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "The propagated SAS does not match the computed SAS."

    .line 1281
    invoke-static {v1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/datatypes/containers/DialogType;->createDeleteDialog()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1285
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1286
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1288
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CancelledState;-><init>()V

    return-object v0

    .line 1292
    :cond_0
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1293
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createDirectTrustOrigin(J)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lio/olvid/engine/metamanager/IdentityDelegate;->addContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V

    goto :goto_0

    .line 1295
    :cond_1
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createDirectTrustOrigin(J)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->addTrustOriginToContact(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V

    .line 1297
    :goto_0
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1298
    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v8, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v8}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-interface {v6, v7, v5, v8, v9}, Lio/olvid/engine/metamanager/IdentityDelegate;->addDeviceForContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1303
    :cond_2
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateEnteredSasToOtherDevicesMessage;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateEnteredSasToOtherDevicesMessage;->access$4500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateEnteredSasToOtherDevicesMessage;)[B

    move-result-object v5

    invoke-static {v3, v4, v1, v5}, Lio/olvid/engine/datatypes/containers/DialogType;->createSasConfirmedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[B)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1304
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1305
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1308
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$4300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$CheckPropagatedSasAndAddTrustStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;->access$3800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;-><init>(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;)V

    return-object v0
.end method
