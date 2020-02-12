.class Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$2;
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

    .line 61
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$2;->this$0:Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 2

    .line 69
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->discussionId:J

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p2, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `discussion_customization_table` WHERE `discussion_id` = ?"

    return-object v0
.end method
