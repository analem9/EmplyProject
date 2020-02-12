.class Lio/olvid/messenger/databases/dao/FyleDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "FyleDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/FyleDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lio/olvid/messenger/databases/entity/Fyle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/FyleDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/FyleDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl$3;->this$0:Lio/olvid/messenger/databases/dao/FyleDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Fyle;)V
    .locals 3

    .line 75
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 76
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 77
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 81
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 82
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 84
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_1
    const/4 v0, 0x4

    .line 86
    iget-wide v1, p2, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p2, Lio/olvid/messenger/databases/entity/Fyle;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/FyleDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Fyle;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `fyle_table` SET `id` = ?,`permanent_file_path` = ?,`sha256` = ? WHERE `id` = ?"

    return-object v0
.end method
