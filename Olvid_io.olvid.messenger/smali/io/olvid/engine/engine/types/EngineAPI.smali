.class public interface abstract Lio/olvid/engine/engine/types/EngineAPI;
.super Ljava/lang/Object;
.source "EngineAPI.java"


# virtual methods
.method public abstract abortProtocol(Lio/olvid/engine/engine/types/ObvDialog;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract cancelAttachmentUpload([BI)V
.end method

.method public abstract connectWebsocket()V
.end method

.method public abstract decryptReturnReceipt([B[B)Lio/olvid/engine/engine/types/ObvReturnReceipt;
.end method

.method public abstract deleteAttachment(Lio/olvid/engine/engine/types/ObvAttachment;)V
.end method

.method public abstract deleteAttachment([BI)V
.end method

.method public abstract deleteContact([B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract deleteMessage([B)V
.end method

.method public abstract deleteOwnedIdentity([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract deletePersistedDialog(Ljava/util/UUID;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract deleteReturnReceipt([B[B)V
.end method

.method public abstract disbandGroup([B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract discardLatestGroupDetails([B[B)V
.end method

.method public abstract discardLatestIdentityDetails([B)V
.end method

.method public abstract disconnectWebsocket()V
.end method

.method public abstract doesContactHaveAutoAcceptTrustLevel([B[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract downloadLargeAttachment([BI)V
.end method

.method public abstract downloadMessages([B)V
.end method

.method public abstract downloadSmallAttachment([BI)V
.end method

.method public abstract generateOwnedIdentity(Ljava/lang/String;Lio/olvid/engine/engine/types/JsonIdentityDetails;Ljava/util/UUID;)Lio/olvid/engine/engine/types/identities/ObvIdentity;
.end method

.method public abstract getApiKeyForOwnedIdentity([B)Ljava/util/UUID;
.end method

.method public abstract getContactDeviceCount([B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getContactEstablishedChannelsCount([B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getContactPublishedAndTrustedDetails([B[B)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getContactTrustOrigins([B[B)[Lio/olvid/engine/engine/types/ObvTrustOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getContactsOfOwnedIdentity([B)[Lio/olvid/engine/engine/types/identities/ObvIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getGroupPublishedAndLatestOrTrustedDetails([B[B)[Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getGroupsOfOwnedIdentity([B)[Lio/olvid/engine/engine/types/identities/ObvGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getOwnedIdentities()[Lio/olvid/engine/engine/types/identities/ObvIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getOwnedIdentityPublishedAndLatestDetails([B)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getReturnReceiptKey()[B
.end method

.method public abstract getReturnReceiptNonce()[B
.end method

.method public abstract inviteContactsToGroup([B[B[[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isContactOfOwnedIdentity([B[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isInboxAttachmentReceived([BI)Z
.end method

.method public abstract isOutboxAttachmentSent([BI)Z
.end method

.method public abstract isOutboxMessageSent([B)Z
.end method

.method public abstract leaveGroup([B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract pauseAttachmentDownload([BI)V
.end method

.method public abstract post([B[Lio/olvid/engine/engine/types/ObvOutboundAttachment;Ljava/util/List;[BZ)Lio/olvid/engine/engine/types/ObvPostMessageOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lio/olvid/engine/engine/types/ObvOutboundAttachment;",
            "Ljava/util/List<",
            "[B>;[BZ)",
            "Lio/olvid/engine/engine/types/ObvPostMessageOutput;"
        }
    .end annotation
.end method

.method public abstract processAndroidPushNotification(Ljava/lang/String;)V
.end method

.method public abstract publishLatestGroupDetails([B[B)V
.end method

.method public abstract publishLatestIdentityDetails([B)V
.end method

.method public abstract recreateAllChannels([B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract registerToPushNotification([BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract reinvitePendingToGroup([B[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract removeContactsFromGroup([B[B[[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract resendAllAttachmentNotifications()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract resendAllPersistedDialogs()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract respondToDialog(Lio/olvid/engine/engine/types/ObvDialog;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract restartAllOngoingChannelEstablishmentProtocols([B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sendReturnReceipt([B[BI[B[B)V
.end method

.method public abstract startContactMutualIntroductionProtocol([B[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startGroupCreationProtocol(Ljava/lang/String;[B[[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startTrustEstablishmentProtocol([BLjava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract trustPublishedContactDetails([B[B)V
.end method

.method public abstract trustPublishedGroupDetails([B[B)V
.end method

.method public abstract unregisterToPushNotification([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract updateApiKeyForOwnedIdentity([BLjava/util/UUID;)Z
.end method

.method public abstract updateLatestGroupDetails([B[BLio/olvid/engine/engine/types/JsonGroupDetails;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract updateLatestIdentityDetails([BLio/olvid/engine/engine/types/JsonIdentityDetails;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
