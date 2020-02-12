.class public Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;
.super Ljava/lang/Object;
.source "ProtocolManagerSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

.field public final encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

.field public final identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

.field public final protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

.field public final protocolReceivedMessageProcessorDelegate:Lio/olvid/engine/protocol/datatypes/ProtocolReceivedMessageProcessorDelegate;

.field public final protocolStarterDelegate:Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;

.field public final session:Lio/olvid/engine/datatypes/Session;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/ChannelDelegate;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;Lio/olvid/engine/protocol/datatypes/ProtocolReceivedMessageProcessorDelegate;Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;Lio/olvid/engine/metamanager/ProtocolDelegate;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 23
    iput-object p2, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    .line 24
    iput-object p3, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    .line 25
    iput-object p4, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    .line 26
    iput-object p5, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->protocolReceivedMessageProcessorDelegate:Lio/olvid/engine/protocol/datatypes/ProtocolReceivedMessageProcessorDelegate;

    .line 27
    iput-object p6, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->protocolStarterDelegate:Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;

    .line 28
    iput-object p7, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->close()V

    return-void
.end method
