.class Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;
.super Ljava/lang/Object;
.source "ServerPushNotificationsCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->startPolling(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/encoder/Encoded;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

.field final synthetic val$deviceUid:Lio/olvid/engine/datatypes/UID;

.field final synthetic val$identity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;->val$identity:Lio/olvid/engine/datatypes/Identity;

    iput-object p3, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;->val$deviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 247
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->access$100(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    move-result-object v0

    invoke-interface {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :try_start_1
    iget-object v1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;->val$identity:Lio/olvid/engine/datatypes/Identity;

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->isOwnedOrEphemeralIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;->val$identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1, v2}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->stopPolling(Lio/olvid/engine/datatypes/Identity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_2

    .line 251
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 247
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 251
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 254
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;->this$0:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->access$200(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;)Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;->val$identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;->val$deviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-interface {v0, v1, v2}, Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;->downloadMessagesAndListAttachments(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method
