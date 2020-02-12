.class Lio/olvid/messenger/databases/dao/GroupDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "GroupDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/GroupDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lio/olvid/messenger/databases/entity/Group;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/GroupDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/GroupDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/GroupDao_Impl$3;->this$0:Lio/olvid/messenger/databases/dao/GroupDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Group;)V
    .locals 3

    .line 97
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 98
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 102
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 103
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 105
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 107
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->customName:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 108
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 110
    :cond_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->customName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 112
    :goto_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 113
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 115
    :cond_3
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x5

    .line 117
    iget v1, p2, Lio/olvid/messenger/databases/entity/Group;->newPublishedDetails:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 118
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 119
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 121
    :cond_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 123
    :goto_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 124
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 126
    :cond_5
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 128
    :goto_5
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 129
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 131
    :cond_6
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_6
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p2, Lio/olvid/messenger/databases/entity/Group;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/GroupDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Group;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `group_table` SET `bytes_group_owner_and_uid` = ?,`bytes_owned_identity` = ?,`custom_name` = ?,`name` = ?,`new_published_details` = ?,`bytes_group_owner_identity` = ? WHERE `bytes_group_owner_and_uid` = ? AND `bytes_owned_identity` = ?"

    return-object v0
.end method
