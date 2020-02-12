.class Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "OwnedIdentityDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$1;->this$0:Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 3

    .line 41
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 46
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 47
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 49
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 51
    iget v1, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->apiKeyStatus:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 52
    iget p2, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->unpublishedDetails:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR FAIL INTO `identity_table` (`bytes_owned_identity`,`display_name`,`api_key_status`,`unpublished_details`) VALUES (?,?,?,?)"

    return-object v0
.end method
