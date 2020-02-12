.class Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "ContactGroupJoinDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/olvid/messenger/databases/entity/ContactGroupJoin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$1;->this$0:Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V
    .locals 3

    .line 41
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->bytesGroupUid:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->bytesGroupUid:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 46
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->bytesContactIdentity:[B

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 47
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 49
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->bytesContactIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 51
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->bytesOwnedIdentity:[B

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 54
    :cond_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_2
    const/4 v0, 0x4

    .line 56
    iget-wide v1, p2, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->timestamp:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lio/olvid/messenger/databases/entity/ContactGroupJoin;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `contact_group_join` (`bytes_group_owner_and_uid`,`bytes_contact_identity`,`bytes_owned_identity`,`timestamp`) VALUES (?,?,?,?)"

    return-object v0
.end method
