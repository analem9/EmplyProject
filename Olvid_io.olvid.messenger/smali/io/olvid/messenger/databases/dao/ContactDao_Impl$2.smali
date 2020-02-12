.class Lio/olvid/messenger/databases/dao/ContactDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "ContactDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/ContactDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lio/olvid/messenger/databases/entity/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/ContactDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl$2;->this$0:Lio/olvid/messenger/databases/dao/ContactDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 2

    .line 79
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 84
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 85
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p2, Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Contact;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `contact_table` WHERE `bytes_owned_identity` = ? AND `bytes_contact_identity` = ?"

    return-object v0
.end method
