.class Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "FyleMessageJoinWithStatusDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$2;->this$0:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V
    .locals 3

    .line 92
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fyleId:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 93
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->messageId:J

    const/4 p2, 0x2

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `fyle_message_join_with_status` WHERE `fyle_id` = ? AND `message_id` = ?"

    return-object v0
.end method
