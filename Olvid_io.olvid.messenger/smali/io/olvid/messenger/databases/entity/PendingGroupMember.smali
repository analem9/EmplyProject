.class public Lio/olvid/messenger/databases/entity/PendingGroupMember;
.super Ljava/lang/Object;
.source "PendingGroupMember.java"


# static fields
.field public static final BYTES_GROUP_OWNER_AND_UID:Ljava/lang/String; = "bytes_group_owner_and_uid"

.field public static final BYTES_IDENTITY:Ljava/lang/String; = "bytes_identity"

.field public static final BYTES_OWNED_IDENTITY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final DECLINED:Ljava/lang/String; = "declined"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final TABLE_NAME:Ljava/lang/String; = "pending_group_member_table"


# instance fields
.field public bytesGroupOwnerAndUid:[B

.field public bytesIdentity:[B

.field public bytesOwnedIdentity:[B

.field public declined:Z

.field public displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;[B[BZ)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesIdentity:[B

    .line 53
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/PendingGroupMember;->displayName:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesOwnedIdentity:[B

    .line 55
    iput-object p4, p0, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesGroupOwnerAndUid:[B

    .line 56
    iput-boolean p5, p0, Lio/olvid/messenger/databases/entity/PendingGroupMember;->declined:Z

    return-void
.end method
