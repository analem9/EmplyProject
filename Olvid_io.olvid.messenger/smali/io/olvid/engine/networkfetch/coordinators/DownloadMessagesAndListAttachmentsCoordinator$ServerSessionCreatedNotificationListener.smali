.class Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;
.super Ljava/lang/Object;
.source "DownloadMessagesAndListAttachmentsCoordinator.java"

# interfaces
.implements Lio/olvid/engine/datatypes/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerSessionCreatedNotificationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "network_fetch_notification_server_session_created"

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "identity"

    .line 148
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 149
    instance-of p2, p1, Lio/olvid/engine/datatypes/Identity;

    if-nez p2, :cond_1

    return-void

    .line 152
    :cond_1
    check-cast p1, Lio/olvid/engine/datatypes/Identity;

    .line 153
    iget-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-static {p2}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->access$100(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 154
    iget-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-static {p2}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->access$200(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/engine/datatypes/UID;

    if-eqz p2, :cond_2

    .line 156
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->access$200(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-static {v0, p1, p2}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->access$000(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    .line 159
    :cond_2
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-static {p1}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->access$100(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
