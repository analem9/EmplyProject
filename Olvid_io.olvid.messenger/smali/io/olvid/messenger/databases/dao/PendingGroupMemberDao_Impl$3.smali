.class Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$3;
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

    .line 92
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$3;->this$0:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/PendingGroupMember;)V
    .locals 4

    .line 100
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesIdentity:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 101
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 105
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->displayName:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 106
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 108
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->displayName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 110
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesOwnedIdentity:[B

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 111
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 113
    :cond_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 115
    :goto_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesGroupOwnerAndUid:[B

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 116
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 118
    :cond_3
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesGroupOwnerAndUid:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 121
    :goto_3
    iget-boolean v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->declined:Z

    const/4 v1, 0x5

    int-to-long v2, v0

    .line 122
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 123
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesIdentity:[B

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 124
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 126
    :cond_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 128
    :goto_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesOwnedIdentity:[B

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 129
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 131
    :cond_5
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 133
    :goto_5
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesGroupOwnerAndUid:[B

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 134
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 136
    :cond_6
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesGroupOwnerAndUid:[B

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_6
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/PendingGroupMember;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `pending_group_member_table` SET `bytes_identity` = ?,`display_name` = ?,`bytes_owned_identity` = ?,`bytes_group_owner_and_uid` = ?,`declined` = ? WHERE `bytes_identity` = ? AND `bytes_owned_identity` = ? AND `bytes_group_owner_and_uid` = ?"

    return-object v0
.end method
