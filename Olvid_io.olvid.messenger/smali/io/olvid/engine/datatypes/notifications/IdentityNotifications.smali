.class public abstract Lio/olvid/engine/datatypes/notifications/IdentityNotifications;
.super Ljava/lang/Object;
.source "IdentityNotifications.java"


# static fields
.field public static final NOTIFICATION_CONTACT_IDENTITY_DELETED:Ljava/lang/String; = "identity_manager_notification_contact_identity_deleted"

.field public static final NOTIFICATION_CONTACT_IDENTITY_DELETED_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NOTIFICATION_CONTACT_IDENTITY_DELETED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_CONTACT_PHOTO_SET:Ljava/lang/String; = "identity_manager_notification_contact_photo_set"

.field public static final NOTIFICATION_CONTACT_PHOTO_SET_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NOTIFICATION_CONTACT_PHOTO_SET_IS_TRUSTED_KEY:Ljava/lang/String; = "is_trusted"

.field public static final NOTIFICATION_CONTACT_PHOTO_SET_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_CONTACT_PHOTO_SET_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final NOTIFICATION_CONTACT_PUBLISHED_DETAILS_TRUSTED:Ljava/lang/String; = "identity_manager_notification_contact_trusted_details_updated"

.field public static final NOTIFICATION_CONTACT_PUBLISHED_DETAILS_TRUSTED_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NOTIFICATION_CONTACT_PUBLISHED_DETAILS_TRUSTED_IDENTITY_DETAILS_KEY:Ljava/lang/String; = "identity_details"

.field public static final NOTIFICATION_CONTACT_PUBLISHED_DETAILS_TRUSTED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_CONTACT_TRUST_LEVEL_INCREASED:Ljava/lang/String; = "identity_manager_notification_contact_trust_level_increased"

.field public static final NOTIFICATION_CONTACT_TRUST_LEVEL_INCREASED_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NOTIFICATION_CONTACT_TRUST_LEVEL_INCREASED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_CONTACT_TRUST_LEVEL_INCREASED_TRUST_LEVEL_KEY:Ljava/lang/String; = "trust_level"

.field public static final NOTIFICATION_GROUP_CREATED:Ljava/lang/String; = "identity_manager_notification_group_created"

.field public static final NOTIFICATION_GROUP_CREATED_GROUP_OWNER_AND_UID_KEY:Ljava/lang/String; = "group_uid"

.field public static final NOTIFICATION_GROUP_CREATED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_GROUP_DELETED:Ljava/lang/String; = "identity_manager_notification_group_deleted"

.field public static final NOTIFICATION_GROUP_DELETED_GROUP_OWNER_AND_UID_KEY:Ljava/lang/String; = "group_uid"

.field public static final NOTIFICATION_GROUP_DELETED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_GROUP_MEMBER_ADDED:Ljava/lang/String; = "identity_manager_notification_group_member_added"

.field public static final NOTIFICATION_GROUP_MEMBER_ADDED_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NOTIFICATION_GROUP_MEMBER_ADDED_GROUP_UID_KEY:Ljava/lang/String; = "group_uid"

.field public static final NOTIFICATION_GROUP_MEMBER_ADDED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_GROUP_MEMBER_REMOVED:Ljava/lang/String; = "identity_manager_notification_group_member_removed"

.field public static final NOTIFICATION_GROUP_MEMBER_REMOVED_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NOTIFICATION_GROUP_MEMBER_REMOVED_GROUP_UID_KEY:Ljava/lang/String; = "group_uid"

.field public static final NOTIFICATION_GROUP_MEMBER_REMOVED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_GROUP_PHOTO_SET:Ljava/lang/String; = "identity_manager_notification_group_photo_set"

.field public static final NOTIFICATION_GROUP_PHOTO_SET_GROUP_OWNER_AND_UID_KEY:Ljava/lang/String; = "group_uid"

.field public static final NOTIFICATION_GROUP_PHOTO_SET_IS_TRUSTED_KEY:Ljava/lang/String; = "is_trusted"

.field public static final NOTIFICATION_GROUP_PHOTO_SET_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_GROUP_PHOTO_SET_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final NOTIFICATION_GROUP_PUBLISHED_DETAILS_TRUSTED:Ljava/lang/String; = "identity_manager_notification_group_trusted_details_updated"

.field public static final NOTIFICATION_GROUP_PUBLISHED_DETAILS_TRUSTED_GROUP_DETAILS_KEY:Ljava/lang/String; = "group_details"

.field public static final NOTIFICATION_GROUP_PUBLISHED_DETAILS_TRUSTED_GROUP_OWNER_AND_UID_KEY:Ljava/lang/String; = "group_uid"

.field public static final NOTIFICATION_GROUP_PUBLISHED_DETAILS_TRUSTED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_GROUP_PUBLISHED_DETAILS_UPDATED:Ljava/lang/String; = "identity_manager_notification_group_published_details_updated"

.field public static final NOTIFICATION_GROUP_PUBLISHED_DETAILS_UPDATED_GROUP_NAME_KEY:Ljava/lang/String; = "group_name"

.field public static final NOTIFICATION_GROUP_PUBLISHED_DETAILS_UPDATED_GROUP_OWNER_AND_UID_KEY:Ljava/lang/String; = "group_uid"

.field public static final NOTIFICATION_GROUP_PUBLISHED_DETAILS_UPDATED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_LATEST_OWNED_IDENTITY_DETAILS_UPDATED:Ljava/lang/String; = "identity_manager_notification_latest_owned_identity_details_updated"

.field public static final NOTIFICATION_LATEST_OWNED_IDENTITY_DETAILS_UPDATED_HAS_UNPUBLISHED_KEY:Ljava/lang/String; = "has_unpublished"

.field public static final NOTIFICATION_LATEST_OWNED_IDENTITY_DETAILS_UPDATED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_NEW_CONTACT_DEVICE:Ljava/lang/String; = "identity_manager_notification_new_contact_device"

.field public static final NOTIFICATION_NEW_CONTACT_DEVICE_CONTACT_DEVICE_UID_KEY:Ljava/lang/String; = "contact_device_uid"

.field public static final NOTIFICATION_NEW_CONTACT_DEVICE_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NOTIFICATION_NEW_CONTACT_DEVICE_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_NEW_CONTACT_IDENTITY:Ljava/lang/String; = "identity_manager_notification_new_contact_identity"

.field public static final NOTIFICATION_NEW_CONTACT_IDENTITY_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NOTIFICATION_NEW_CONTACT_IDENTITY_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_NEW_CONTACT_PUBLISHED_DETAILS:Ljava/lang/String; = "identity_manager_notification_new_contact_published_details"

.field public static final NOTIFICATION_NEW_CONTACT_PUBLISHED_DETAILS_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NOTIFICATION_NEW_CONTACT_PUBLISHED_DETAILS_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_NEW_GROUP_PUBLISHED_DETAILS:Ljava/lang/String; = "identity_manager_notification_new_group_published_details"

.field public static final NOTIFICATION_NEW_GROUP_PUBLISHED_DETAILS_GROUP_OWNER_AND_UID_KEY:Ljava/lang/String; = "group_uid"

.field public static final NOTIFICATION_NEW_GROUP_PUBLISHED_DETAILS_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_OWNED_IDENTITY_LIST_UPDATED:Ljava/lang/String; = "identity_manager_notification_owned_identity_list_updated"

.field public static final NOTIFICATION_OWNED_IDENTITY_PUBLISHED_DETAILS_UPDATED:Ljava/lang/String; = "identity_manager_notification_owned_identity_published_details_updated"

.field public static final NOTIFICATION_OWNED_IDENTITY_PUBLISHED_DETAILS_UPDATED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_ADDED:Ljava/lang/String; = "identity_manager_notification_pending_group_member_added"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_ADDED_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_ADDED_CONTACT_SERIALIZED_DETAILS_KEY:Ljava/lang/String; = "contact_serialized_details"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_ADDED_GROUP_UID_KEY:Ljava/lang/String; = "group_uid"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_ADDED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_DECLINED_TOGGLED:Ljava/lang/String; = "identity_manager_notification_pending_group_member_declined_toggled"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_DECLINED_TOGGLED_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_DECLINED_TOGGLED_DECLINED_KEY:Ljava/lang/String; = "declined"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_DECLINED_TOGGLED_GROUP_UID_KEY:Ljava/lang/String; = "group_uid"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_DECLINED_TOGGLED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_REMOVED:Ljava/lang/String; = "identity_manager_notification_pending_group_member_removed"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_REMOVED_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "contact_identity"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_REMOVED_CONTACT_SERIALIZED_DETAILS_KEY:Ljava/lang/String; = "contact_serialized_details"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_REMOVED_GROUP_UID_KEY:Ljava/lang/String; = "group_uid"

.field public static final NOTIFICATION_PENDING_GROUP_MEMBER_REMOVED_OWNED_IDENTITY_KEY:Ljava/lang/String; = "owned_identity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
