.class public abstract Lio/olvid/engine/datatypes/notifications/DownloadNotifications;
.super Ljava/lang/Object;
.source "DownloadNotifications.java"


# static fields
.field public static final NOTIFICATION_API_KEY_REJECTED_BY_SERVER:Ljava/lang/String; = "network_fetch_notification_api_key_rejected_by_server"

.field public static final NOTIFICATION_API_KEY_REJECTED_BY_SERVER_IDENTITY_KEY:Ljava/lang/String; = "identity"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_FAILED:Ljava/lang/String; = "network_fetch_notification_attachment_download_failed"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_FAILED_ATTACHMENT_NUMBER_KEY:Ljava/lang/String; = "attachmentNumber"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_FAILED_MESSAGE_UID_KEY:Ljava/lang/String; = "messageUid"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_FINISHED:Ljava/lang/String; = "network_fetch_notification_attachment_download_finished"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_FINISHED_ATTACHMENT_NUMBER_KEY:Ljava/lang/String; = "attachmentNumber"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_FINISHED_MESSAGE_UID_KEY:Ljava/lang/String; = "messageUid"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_PROGRESS:Ljava/lang/String; = "network_fetch_notification_attachment_download_progress"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_PROGRESS_ATTACHMENT_NUMBER_KEY:Ljava/lang/String; = "attachmentNumber"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_PROGRESS_MESSAGE_UID_KEY:Ljava/lang/String; = "messageUid"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_PROGRESS_PROGRESS_KEY:Ljava/lang/String; = "progress"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_WAS_PAUSED:Ljava/lang/String; = "network_fetch_notification_attachment_download_was_paused"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_WAS_PAUSED_ATTACHMENT_NUMBER:Ljava/lang/String; = "attachmentNumber"

.field public static final NOTIFICATION_ATTACHMENT_DOWNLOAD_WAS_PAUSED_MESSAGE_UID_KEY:Ljava/lang/String; = "messageUid"

.field public static final NOTIFICATION_INBOX_ATTACHMENT_SIGNED_URL_REFRESHED:Ljava/lang/String; = "netword_fetch_notification_signed_url_refreshed"

.field public static final NOTIFICATION_INBOX_ATTACHMENT_SIGNED_URL_REFRESHED_ATTACHMENT_NUMBER_KEY:Ljava/lang/String; = "attachment_number"

.field public static final NOTIFICATION_INBOX_ATTACHMENT_SIGNED_URL_REFRESHED_MESSAGE_UID_KEY:Ljava/lang/String; = "message_uid"

.field public static final NOTIFICATION_MESSAGE_DECRYPTED:Ljava/lang/String; = "network_fetch_notification_message_payload_set"

.field public static final NOTIFICATION_MESSAGE_DECRYPTED_UID_KEY:Ljava/lang/String; = "uid"

.field public static final NOTIFICATION_RETURN_RECEIPT_RECEIVED:Ljava/lang/String; = "netword_fetch_notification_return_receipt_received"

.field public static final NOTIFICATION_RETURN_RECEIPT_RECEIVED_ENCRYPTED_PAYLOAD_KEY:Ljava/lang/String; = "encrypted_payload"

.field public static final NOTIFICATION_RETURN_RECEIPT_RECEIVED_NONCE_KEY:Ljava/lang/String; = "nonce"

.field public static final NOTIFICATION_RETURN_RECEIPT_RECEIVED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final NOTIFICATION_RETURN_RECEIPT_RECEIVED_SERVER_UID_KEY:Ljava/lang/String; = "server_uid"

.field public static final NOTIFICATION_RETURN_RECEIPT_RECEIVED_TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"

.field public static final NOTIFICATION_SERVER_POLLED:Ljava/lang/String; = "network_fetch_notification_server_polled"

.field public static final NOTIFICATION_SERVER_POLLED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_SERVER_POLLED_SUCCESS_KEY:Ljava/lang/String; = "success"

.field public static final NOTIFICATION_SERVER_SESSION_CREATED:Ljava/lang/String; = "network_fetch_notification_server_session_created"

.field public static final NOTIFICATION_SERVER_SESSION_CREATED_IDENTITY_KEY:Ljava/lang/String; = "identity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
