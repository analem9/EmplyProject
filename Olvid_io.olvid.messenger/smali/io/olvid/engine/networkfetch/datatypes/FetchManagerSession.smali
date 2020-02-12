.class public Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;
.super Ljava/lang/Object;
.source "FetchManagerSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final attachmentStoragePath:Ljava/lang/String;

.field public final identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

.field public final inboxAttachmentListener:Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;

.field public final inboxMessageListener:Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;

.field public final notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field public final pendingDeleteFromServerListener:Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer$PendingDeleteFromServerListener;

.field public final pendingServerQueryListener:Lio/olvid/engine/networkfetch/databases/PendingServerQuery$PendingServerQueryListener;

.field public final registeredPushNotificationListener:Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification$RegisteredPushNotificationListener;

.field public final session:Lio/olvid/engine/datatypes/Session;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer$PendingDeleteFromServerListener;Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification$RegisteredPushNotificationListener;Lio/olvid/engine/networkfetch/databases/PendingServerQuery$PendingServerQueryListener;Lio/olvid/engine/metamanager/IdentityDelegate;Ljava/lang/String;Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 37
    iput-object p2, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->inboxMessageListener:Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;

    .line 38
    iput-object p3, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->inboxAttachmentListener:Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;

    .line 39
    iput-object p4, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->pendingDeleteFromServerListener:Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer$PendingDeleteFromServerListener;

    .line 40
    iput-object p5, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->registeredPushNotificationListener:Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification$RegisteredPushNotificationListener;

    .line 41
    iput-object p6, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->pendingServerQueryListener:Lio/olvid/engine/networkfetch/databases/PendingServerQuery$PendingServerQueryListener;

    .line 42
    iput-object p7, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    .line 43
    iput-object p8, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->attachmentStoragePath:Ljava/lang/String;

    .line 44
    iput-object p9, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

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

    .line 49
    iget-object v0, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->close()V

    return-void
.end method
