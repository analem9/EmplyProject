.class Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "PendingGroupMemberDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lio/olvid/messenger/databases/entity/PendingGroupMember;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$2;->this$0:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/PendingGroupMember;)V
    .locals 2

    .line 75
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesIdentity:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 80
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesOwnedIdentity:[B

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 81
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 83
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 85
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesGroupOwnerAndUid:[B

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 86
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 88
    :cond_2
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesGroupOwnerAndUid:[B

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_2
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/PendingGroupMember;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `pending_group_member_table` WHERE `bytes_identity` = ? AND `bytes_owned_identity` = ? AND `bytes_group_owner_and_uid` = ?"

    return-object v0
.end method
