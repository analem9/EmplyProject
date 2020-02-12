.class public abstract Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.super Lio/olvid/engine/datatypes/Operation;
.source "ProtocolStep.java"


# instance fields
.field private endState:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

.field protected final protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lio/olvid/engine/datatypes/Operation;-><init>()V

    .line 23
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getChannelType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v3, "Protocol expected ReceptionChannelInfo mismatch."

    if-ne v0, v1, :cond_1

    .line 28
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getChannelType()I

    move-result p2

    if-ne p2, v2, :cond_0

    .line 29
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 30
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getConfirmed()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v3}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 32
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 34
    :cond_1
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getChannelType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 35
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getChannelType()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 36
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getConfirmed()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 37
    :cond_2
    invoke-static {v3}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 38
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 40
    :cond_3
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 44
    :goto_0
    iput-object p4, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    return-void

    .line 41
    :cond_4
    invoke-static {v3}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 42
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_5
    const-string p1, "Protocol expected toIdentity mismatch."

    .line 24
    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 25
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method


# virtual methods
.method protected buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;
    .locals 4

    .line 86
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->getProtocolId()I

    move-result v1

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    return-object v0
.end method

.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 2

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->endState:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    .line 56
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->setFinished()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->cancel(Ljava/lang/Integer;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public abstract executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getEndState()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->endState:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;

    return-object v0
.end method

.method public getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    return-object v0
.end method

.method public getPrng()Lio/olvid/engine/crypto/PRNGService;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolId()I
    .locals 1

    .line 80
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolId()I

    move-result v0

    return v0
.end method

.method public getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    return-object v0
.end method
