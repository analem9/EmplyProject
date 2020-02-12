.class public Lio/olvid/engine/channel/datatypes/ChannelManagerSession;
.super Ljava/lang/Object;
.source "ChannelManagerSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

.field public final fullRatchetProtocolStarterDelegate:Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;

.field public final identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

.field public final networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

.field public final networkSendDelegate:Lio/olvid/engine/metamanager/NetworkSendDelegate;

.field public final notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field public final protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

.field public final session:Lio/olvid/engine/datatypes/Session;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;Lio/olvid/engine/metamanager/NetworkFetchDelegate;Lio/olvid/engine/metamanager/NetworkSendDelegate;Lio/olvid/engine/metamanager/ProtocolDelegate;Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 28
    iput-object p2, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->fullRatchetProtocolStarterDelegate:Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;

    .line 29
    iput-object p3, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    .line 30
    iput-object p4, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkSendDelegate:Lio/olvid/engine/metamanager/NetworkSendDelegate;

    .line 31
    iput-object p5, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    .line 32
    iput-object p6, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    .line 33
    iput-object p7, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    .line 34
    iput-object p8, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

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

    .line 39
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->close()V

    return-void
.end method
