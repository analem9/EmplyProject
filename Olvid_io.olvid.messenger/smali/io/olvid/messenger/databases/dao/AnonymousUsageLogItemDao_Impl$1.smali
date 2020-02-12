.class Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "AnonymousUsageLogItemDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl$1;->this$0:Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;)V
    .locals 4

    .line 37
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 38
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->pseudo:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 39
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->pseudo:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 43
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->apiKey:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 44
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 46
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->apiKey:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 48
    iget-wide v1, p2, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->timestamp:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 49
    iget v1, p2, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->type:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 50
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->extraCount:Ljava/lang/Integer;

    const/4 v1, 0x6

    if-nez v0, :cond_2

    .line 51
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 53
    :cond_2
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->extraCount:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_2
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `anonymous_usage_log` (`id`,`pseudo`,`api_key`,`timestamp`,`type`,`extra_count`) VALUES (nullif(?, 0),?,?,?,?,?)"

    return-object v0
.end method
