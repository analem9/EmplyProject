.class Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$3;->this$0:Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 4

    .line 80
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->discussionId:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 81
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->serializedColorJson:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 82
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->serializedColorJson:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 86
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 87
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 89
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 92
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 94
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 96
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_3
    const/4 v0, 0x5

    .line 98
    iget-wide v1, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->discussionId:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `discussion_customization_table` SET `discussion_id` = ?,`serialized_color_json` = ?,`background_image_url` = ?,`pref_send_read_receipt` = ? WHERE `discussion_id` = ?"

    return-object v0
.end method