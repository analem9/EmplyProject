.class Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;
.super Ljava/lang/Object;
.source "SendAttachmentCoordinator.java"

# interfaces
.implements Lio/olvid/engine/datatypes/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignedUrlsRefreshedNotificationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;


# direct methods
.method constructor <init>(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;->this$0:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
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

    const-string v0, "netword_send_notification_signed_url_refreshed"

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "message_uid"

    .line 195
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "attachment_number"

    .line 196
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 197
    instance-of v0, p1, Lio/olvid/engine/datatypes/UID;

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    check-cast p1, Lio/olvid/engine/datatypes/UID;

    .line 201
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 202
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;->this$0:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->access$100(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 203
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;->this$0:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    invoke-static {v0}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->access$200(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v1, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;

    if-eqz v0, :cond_2

    .line 205
    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;->this$0:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    invoke-static {v1}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->access$200(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v2, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;->this$0:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p2

    invoke-virtual {v0}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;->getAttachmentNumber()I

    move-result v1

    invoke-virtual {v0}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;->getInitialPriority()J

    move-result-wide v2

    invoke-static {p1, p2, v1, v2, v3}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->access$000(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IJ)V

    .line 208
    :cond_2
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;->this$0:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    invoke-static {p1}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->access$100(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_3
    :goto_0
    return-void
.end method
