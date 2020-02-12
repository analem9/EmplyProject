.class Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;
.super Ljava/lang/Object;
.source "DownloadAttachmentCoordinator.java"

# interfaces
.implements Lio/olvid/engine/datatypes/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignedUrlsRefreshedNotificationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
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

    const-string v0, "netword_fetch_notification_signed_url_refreshed"

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "message_uid"

    .line 222
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "attachment_number"

    .line 223
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 224
    instance-of v0, p1, Lio/olvid/engine/datatypes/UID;

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    check-cast p1, Lio/olvid/engine/datatypes/UID;

    .line 228
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 229
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->access$100(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 230
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->access$200(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v1, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;

    if-eqz v0, :cond_2

    .line 232
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    invoke-static {v1}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->access$200(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v2, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v3, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->getAttachmentNumber()I

    move-result v5

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->getPriorityCategory()I

    move-result v6

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->getInitialPriority()J

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->access$000(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IIJ)V

    .line 235
    :cond_2
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    invoke-static {p1}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->access$100(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_3
    :goto_0
    return-void
.end method
