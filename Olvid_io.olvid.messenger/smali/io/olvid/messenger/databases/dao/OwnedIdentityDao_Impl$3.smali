.class Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$3;->this$0:Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 3

    .line 78
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 79
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 83
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 84
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 86
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 88
    iget v1, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->apiKeyStatus:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 89
    iget v1, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->unpublishedDetails:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 90
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 91
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 93
    :cond_2
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_2
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `identity_table` SET `bytes_owned_identity` = ?,`display_name` = ?,`api_key_status` = ?,`unpublished_details` = ? WHERE `bytes_owned_identity` = ?"

    return-object v0
.end method
