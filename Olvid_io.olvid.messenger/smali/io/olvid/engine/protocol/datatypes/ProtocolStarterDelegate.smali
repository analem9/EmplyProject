.class public interface abstract Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;
.super Ljava/lang/Object;
.source "ProtocolStarterDelegate.java"


# virtual methods
.method public abstract deleteContact(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract disbandGroup([BLio/olvid/engine/datatypes/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract inviteContactsToGroup([BLio/olvid/engine/datatypes/Identity;Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lio/olvid/engine/datatypes/Identity;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/Identity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract leaveGroup([BLio/olvid/engine/datatypes/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract reinvitePendingToGroup([BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract removeContactsFromGroup([BLio/olvid/engine/datatypes/Identity;Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lio/olvid/engine/datatypes/Identity;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/Identity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startChannelCreationWithContactDeviceProtocol(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startContactMutualIntroductionProtocol(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startDeviceDiscoveryProtocol(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startGroupCreationProtocol(Ljava/lang/String;Ljava/util/HashSet;Lio/olvid/engine/datatypes/Identity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;",
            ">;",
            "Lio/olvid/engine/datatypes/Identity;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startGroupDetailsPublicationProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startIdentityDetailsPublicationProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startTrustEstablishmentProtocol(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
