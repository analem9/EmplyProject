.class public Lio/olvid/messenger/databases/entity/Group;
.super Ljava/lang/Object;
.source "Group.java"


# static fields
.field public static final BYTES_GROUP_OWNER_AND_UID:Ljava/lang/String; = "bytes_group_owner_and_uid"

.field public static final BYTES_GROUP_OWNER_IDENTITY:Ljava/lang/String; = "bytes_group_owner_identity"

.field public static final BYTES_OWNED_IDENTITY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final CUSTOM_NAME:Ljava/lang/String; = "custom_name"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NEW_PUBLISHED_DETAILS:Ljava/lang/String; = "new_published_details"

.field public static final PUBLISHED_DETAILS_NEW_SEEN:I = 0x2

.field public static final PUBLISHED_DETAILS_NEW_UNSEEN:I = 0x1

.field public static final PUBLISHED_DETAILS_NOTHING_NEW:I = 0x0

.field public static final PUBLISHED_DETAILS_UNPUBLISHED_NEW:I = 0x3

.field public static final TABLE_NAME:Ljava/lang/String; = "group_table"


# instance fields
.field public bytesGroupOwnerAndUid:[B

.field public bytesGroupOwnerIdentity:[B

.field public bytesOwnedIdentity:[B

.field public customName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public newPublishedDetails:I


# direct methods
.method public constructor <init>([B[BLio/olvid/engine/engine/types/JsonGroupDetails;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    .line 90
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Group;->customName:Ljava/lang/String;

    .line 92
    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lio/olvid/messenger/databases/entity/Group;->newPublishedDetails:I

    .line 94
    iput-object p4, p0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    return-void
.end method

.method public constructor <init>([B[BLjava/lang/String;Ljava/lang/String;I[B)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    .line 80
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    .line 81
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/Group;->customName:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    .line 83
    iput p5, p0, Lio/olvid/messenger/databases/entity/Group;->newPublishedDetails:I

    .line 84
    iput-object p6, p0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    return-void
.end method


# virtual methods
.method public getCustomName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Group;->customName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method
