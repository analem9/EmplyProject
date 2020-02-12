.class public abstract Lio/olvid/engine/engine/types/EngineNotifications;
.super Ljava/lang/Object;
.source "EngineNotifications.java"


# static fields
.field public static final API_KEY_ACCEPTED:Ljava/lang/String; = "engine_notification_api_key_accepted"

.field public static final API_KEY_ACCEPTED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final API_KEY_REJECTED:Ljava/lang/String; = "engine_notification_api_key_rejected"

.field public static final API_KEY_REJECTED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final ATTACHMENT_DOWNLOADED:Ljava/lang/String; = "engine_notification_attachment_downloaded"

.field public static final ATTACHMENT_DOWNLOADED_ATTACHMENT_KEY:Ljava/lang/String; = "attachment"

.field public static final ATTACHMENT_DOWNLOAD_PROGRESS:Ljava/lang/String; = "engine_notification_download_attachment_progress"

.field public static final ATTACHMENT_DOWNLOAD_PROGRESS_ATTACHMENT_NUMBER_KEY:Ljava/lang/String; = "attachment_number"

.field public static final ATTACHMENT_DOWNLOAD_PROGRESS_MESSAGE_IDENTIFIER_KEY:Ljava/lang/String; = "message_identifier"

.field public static final ATTACHMENT_DOWNLOAD_PROGRESS_PROGRESS_KEY:Ljava/lang/String; = "progress"

.field public static final ATTACHMENT_FAILED:Ljava/lang/String; = "engine_notification_attachment_failed"

.field public static final ATTACHMENT_FAILED_ATTACHMENT_NUMBER_KEY:Ljava/lang/String; = "attachment_number"

.field public static final ATTACHMENT_FAILED_MESSAGE_IDENTIFIER_KEY:Ljava/lang/String; = "message_identifier"

.field public static final ATTACHMENT_UPLOADED:Ljava/lang/String; = "engine_notification_attachment_uploaded"

.field public static final ATTACHMENT_UPLOADED_ATTACHMENT_NUMBER_KEY:Ljava/lang/String; = "attachment_number"

.field public static final ATTACHMENT_UPLOADED_MESSAGE_IDENTIFIER_KEY:Ljava/lang/String; = "message_identifier"

.field public static final ATTACHMENT_UPLOAD_PROGRESS:Ljava/lang/String; = "engine_notification_upload_attachment_progress"

.field public static final ATTACHMENT_UPLOAD_PROGRESS_ATTACHMENT_NUMBER_KEY:Ljava/lang/String; = "attachment_number"

.field public static final ATTACHMENT_UPLOAD_PROGRESS_MESSAGE_IDENTIFIER_KEY:Ljava/lang/String; = "message_identifier"

.field public static final ATTACHMENT_UPLOAD_PROGRESS_PROGRESS_KEY:Ljava/lang/String; = "progress"

.field public static final CHANNEL_CONFIRMED_OR_DELETED:Ljava/lang/String; = "engine_notification_channel_confirmed_or_deleted"

.field public static final CHANNEL_CONFIRMED_OR_DELETED_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final CHANNEL_CONFIRMED_OR_DELETED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final CONTACT_DELETED:Ljava/lang/String; = "engine_notification_contact_deleted"

.field public static final CONTACT_DELETED_BYTES_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "bytes_contact_identity"

.field public static final CONTACT_DELETED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final CONTACT_PUBLISHED_DETAILS_TRUSTED:Ljava/lang/String; = "engine_notification_contact_published_details_trusted"

.field public static final CONTACT_PUBLISHED_DETAILS_TRUSTED_BYTES_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "bytes_contact_identity"

.field public static final CONTACT_PUBLISHED_DETAILS_TRUSTED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final CONTACT_PUBLISHED_DETAILS_TRUSTED_IDENTITY_DETAILS_KEY:Ljava/lang/String; = "identity_details"

.field public static final GROUP_CREATED:Ljava/lang/String; = "engine_notification_group_created"

.field public static final GROUP_CREATED_GROUP_KEY:Ljava/lang/String; = "group"

.field public static final GROUP_DELETED:Ljava/lang/String; = "engine_notification_group_deleted"

.field public static final GROUP_DELETED_BYTES_GROUP_OWNER_AND_UID_KEY:Ljava/lang/String; = "bytes_group_owner_and_uid"

.field public static final GROUP_DELETED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final GROUP_MEMBER_ADDED:Ljava/lang/String; = "engine_notification_group_member_added"

.field public static final GROUP_MEMBER_ADDED_BYTES_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final GROUP_MEMBER_ADDED_BYTES_GROUP_UID_KEY:Ljava/lang/String; = "group_uid"

.field public static final GROUP_MEMBER_ADDED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final GROUP_MEMBER_REMOVED:Ljava/lang/String; = "engine_notification_group_member_removed"

.field public static final GROUP_MEMBER_REMOVED_BYTES_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final GROUP_MEMBER_REMOVED_BYTES_GROUP_UID_KEY:Ljava/lang/String; = "bytes_group_uid"

.field public static final GROUP_MEMBER_REMOVED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final GROUP_PUBLISHED_DETAILS_TRUSTED:Ljava/lang/String; = "engine_notification_group_published_details_trusted"

.field public static final GROUP_PUBLISHED_DETAILS_TRUSTED_BYTES_GROUP_UID_KEY:Ljava/lang/String; = "bytes_group_uid"

.field public static final GROUP_PUBLISHED_DETAILS_TRUSTED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final GROUP_PUBLISHED_DETAILS_TRUSTED_GROUP_DETAILS_KEY:Ljava/lang/String; = "group_details"

.field public static final GROUP_PUBLISHED_DETAILS_UPDATED:Ljava/lang/String; = "engine_notification_group_published_details_updated"

.field public static final GROUP_PUBLISHED_DETAILS_UPDATED_BYTES_GROUP_UID_KEY:Ljava/lang/String; = "bytes_group_uid"

.field public static final GROUP_PUBLISHED_DETAILS_UPDATED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final GROUP_PUBLISHED_DETAILS_UPDATED_GROUP_NAME_KEY:Ljava/lang/String; = "group_name"

.field public static final MESSAGE_UPLOADED:Ljava/lang/String; = "engine_notification_message_uploaded"

.field public static final MESSAGE_UPLOADED_IDENTIFIER_KEY:Ljava/lang/String; = "identifier"

.field public static final MESSAGE_UPLOADED_TIMESTAMP_FROM_SERVER:Ljava/lang/String; = "timestamp_from_server"

.field public static final NEW_CONTACT:Ljava/lang/String; = "engine_notification_new_contact"

.field public static final NEW_CONTACT_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NEW_CONTACT_DEVICE:Ljava/lang/String; = "engine_notification_new_contact_device"

.field public static final NEW_CONTACT_DEVICE_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NEW_CONTACT_DEVICE_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NEW_CONTACT_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NEW_CONTACT_PHOTO:Ljava/lang/String; = "engine_notification_new_contact_photo"

.field public static final NEW_CONTACT_PHOTO_BYTES_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "bytes_contact_identity"

.field public static final NEW_CONTACT_PHOTO_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final NEW_CONTACT_PHOTO_IS_TRUSTED_KEY:Ljava/lang/String; = "is_trusted"

.field public static final NEW_CONTACT_PHOTO_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final NEW_CONTACT_PUBLISHED_DETAILS:Ljava/lang/String; = "engine_notification_new_contact_published_details"

.field public static final NEW_CONTACT_PUBLISHED_DETAILS_BYTES_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "bytes_contact_identity"

.field public static final NEW_CONTACT_PUBLISHED_DETAILS_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final NEW_GROUP_PHOTO:Ljava/lang/String; = "engine_notification_new_group_photo"

.field public static final NEW_GROUP_PHOTO_BYTES_GROUP_UID_KEY:Ljava/lang/String; = "bytes_group_uid"

.field public static final NEW_GROUP_PHOTO_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final NEW_GROUP_PHOTO_IS_TRUSTED_KEY:Ljava/lang/String; = "is_trusted"

.field public static final NEW_GROUP_PHOTO_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final NEW_GROUP_PUBLISHED_DETAILS:Ljava/lang/String; = "engine_notification_new_group_published_details"

.field public static final NEW_GROUP_PUBLISHED_DETAILS_BYTES_GROUP_UID_KEY:Ljava/lang/String; = "bytes_group_uid"

.field public static final NEW_GROUP_PUBLISHED_DETAILS_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final NEW_MESSAGE:Ljava/lang/String; = "engine_notification_new_message"

.field public static final NEW_MESSAGE_MESSAGE_KEY:Ljava/lang/String; = "message_key"

.field public static final OWNED_IDENTITY_DISPLAY_NAME_CHANGED:Ljava/lang/String; = "engine_notification_owned_identity_display_name_changed"

.field public static final OWNED_IDENTITY_DISPLAY_NAME_CHANGED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final OWNED_IDENTITY_DISPLAY_NAME_CHANGED_DISPLAY_NAME_KEY:Ljava/lang/String; = "display_name"

.field public static final OWNED_IDENTITY_LATEST_DETAILS_UPDATED:Ljava/lang/String; = "engine_notification_owned_identity_latest_details_updated"

.field public static final OWNED_IDENTITY_LATEST_DETAILS_UPDATED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final OWNED_IDENTITY_LATEST_DETAILS_UPDATED_HAS_UNPUBLISHED_KEY:Ljava/lang/String; = "has_unpublished"

.field public static final PENDING_GROUP_MEMBER_ADDED:Ljava/lang/String; = "engine_notification_pending_group_member_added"

.field public static final PENDING_GROUP_MEMBER_ADDED_BYTES_GROUP_UID_KEY:Ljava/lang/String; = "bytes_group_uid"

.field public static final PENDING_GROUP_MEMBER_ADDED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final PENDING_GROUP_MEMBER_ADDED_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final PENDING_GROUP_MEMBER_DECLINE_TOGGLED:Ljava/lang/String; = "engine_notification_pending_group_member_decline_toggled"

.field public static final PENDING_GROUP_MEMBER_DECLINE_TOGGLED_BYTES_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "bytes_contact_identity"

.field public static final PENDING_GROUP_MEMBER_DECLINE_TOGGLED_BYTES_GROUP_UID_KEY:Ljava/lang/String; = "bytes_group_uid"

.field public static final PENDING_GROUP_MEMBER_DECLINE_TOGGLED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final PENDING_GROUP_MEMBER_DECLINE_TOGGLED_DECLINED_KEY:Ljava/lang/String; = "declined"

.field public static final PENDING_GROUP_MEMBER_REMOVED:Ljava/lang/String; = "engine_notification_pending_group_member_removed"

.field public static final PENDING_GROUP_MEMBER_REMOVED_BYTES_GROUP_UID_KEY:Ljava/lang/String; = "bytes_group_uid"

.field public static final PENDING_GROUP_MEMBER_REMOVED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final PENDING_GROUP_MEMBER_REMOVED_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final RETURN_RECEIPT_RECEIVED:Ljava/lang/String; = "engine_notification_return_receipt_received"

.field public static final RETURN_RECEIPT_RECEIVED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final RETURN_RECEIPT_RECEIVED_ENCRYPTED_PAYLOAD_KEY:Ljava/lang/String; = "encrypted_payload"

.field public static final RETURN_RECEIPT_RECEIVED_NONCE_KEY:Ljava/lang/String; = "nonce"

.field public static final RETURN_RECEIPT_RECEIVED_SERVER_UID_KEY:Ljava/lang/String; = "server_uid"

.field public static final RETURN_RECEIPT_RECEIVED_TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"

.field public static final SERVER_POLLED:Ljava/lang/String; = "engine_notification_server_polled"

.field public static final SERVER_POLLED_BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final SERVER_POLLED_SUCCESS_KEY:Ljava/lang/String; = "success"

.field public static final UI_DIALOG:Ljava/lang/String; = "engine_notification_ui_dialog"

.field public static final UI_DIALOG_CREATION_TIMESTAMP_KEY:Ljava/lang/String; = "creation_timestamp"

.field public static final UI_DIALOG_DELETED:Ljava/lang/String; = "engine_notification_ui_dialog_deleted"

.field public static final UI_DIALOG_DELETED_UUID_KEY:Ljava/lang/String; = "uuid"

.field public static final UI_DIALOG_DIALOG_KEY:Ljava/lang/String; = "dialog"

.field public static final UI_DIALOG_UUID_KEY:Ljava/lang/String; = "uuid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
