.class Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "DiscussionCustomizationDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$1;->this$0:Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 3

    .line 41
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->discussionId:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 42
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->serializedColorJson:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 43
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->serializedColorJson:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 47
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 50
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 53
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_2
    const/4 v0, 0x4

    if-nez p2, :cond_3

    .line 55
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_3
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `discussion_customization_table` (`discussion_id`,`serialized_color_json`,`background_image_url`,`pref_send_read_receipt`) VALUES (?,?,?,?)"

    return-object v0
.end method
