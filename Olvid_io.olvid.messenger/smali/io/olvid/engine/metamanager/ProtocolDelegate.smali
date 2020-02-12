.class public interface abstract Lio/olvid/engine/metamanager/ProtocolDelegate;
.super Ljava/lang/Object;
.source "ProtocolDelegate.java"


# virtual methods
.method public abstract abortProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract process(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract process(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract process(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
