.class public interface abstract Lio/olvid/engine/metamanager/NetworkFetchDelegate;
.super Ljava/lang/Object;
.source "NetworkFetchDelegate.java"


# virtual methods
.method public abstract canAllAttachmentsBeDownloaded(Lio/olvid/engine/datatypes/UID;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract connectWebsockets()V
.end method

.method public abstract createPendingServerQuery(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ServerQuery;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract deleteAttachment(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract deleteExistingServerSessionAndCreateANewOne(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V
.end method

.method public abstract deleteMessage(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V
.end method

.method public abstract deleteMessageAndAttachments(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V
.end method

.method public abstract disconnectWebsockets()V
.end method

.method public abstract downloadAttachment(Lio/olvid/engine/datatypes/UID;II)V
.end method

.method public abstract downloadMessages(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
.end method

.method public abstract getAttachment(Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/containers/ReceivedAttachment;
.end method

.method public abstract getMessage(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;
.end method

.method public abstract getMessageAttachments(Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/datatypes/containers/ReceivedAttachment;
.end method

.method public abstract isInboxAttachmentReceived(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract pauseDownloadAttachment(Lio/olvid/engine/datatypes/UID;I)V
.end method

.method public abstract resendAllDownloadedAttachmentNotifications()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setAttachmentKeyAndMetadataAndMessagePayload(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
