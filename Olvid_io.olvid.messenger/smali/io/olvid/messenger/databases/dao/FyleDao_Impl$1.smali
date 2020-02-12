.class Lio/olvid/messenger/databases/dao/FyleDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/olvid/messenger/databases/entity/Fyle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/FyleDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/FyleDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/FyleDao_Impl$1;->this$0:Lio/olvid/messenger/databases/dao/FyleDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Fyle;)V
    .locals 3

    .line 43
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 44
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 45
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 49
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 50
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 52
    :cond_1
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Lio/olvid/messenger/databases/entity/Fyle;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/FyleDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Fyle;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `fyle_table` (`id`,`permanent_file_path`,`sha256`) VALUES (nullif(?, 0),?,?)"

    return-object v0
.end method
