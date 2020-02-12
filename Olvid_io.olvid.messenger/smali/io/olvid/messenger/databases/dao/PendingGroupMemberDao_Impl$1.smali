.class Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/olvid/messenger/databases/entity/PendingGroupMember;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$1;->this$0:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/PendingGroupMember;)V
    .locals 3

    .line 42
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesIdentity:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 43
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 47
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->displayName:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 50
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->displayName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 52
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesOwnedIdentity:[B

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 53
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 55
    :cond_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 57
    :goto_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesGroupOwnerAndUid:[B

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 58
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 60
    :cond_3
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesGroupOwnerAndUid:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 63
    :goto_3
    iget-boolean p2, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->declined:Z

    const/4 v0, 0x5

    int-to-long v1, p2

    .line 64
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/PendingGroupMember;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `pending_group_member_table` (`bytes_identity`,`display_name`,`bytes_owned_identity`,`bytes_group_owner_and_uid`,`declined`) VALUES (?,?,?,?,?)"

    return-object v0
.end method
