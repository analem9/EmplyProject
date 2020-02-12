.class Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$2;
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

    .line 55
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$2;->this$0:Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 2

    .line 63
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 64
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `identity_table` WHERE `bytes_owned_identity` = ?"

    return-object v0
.end method
