.class public interface abstract Lio/olvid/engine/metamanager/NetworkSendDelegate;
.super Ljava/lang/Object;
.source "NetworkSendDelegate.java"


# virtual methods
.method public abstract cancelAttachmentUpload(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract isOutboxAttachmentSent(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract isOutboxMessageSent(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/MessageToSend;)V
.end method
