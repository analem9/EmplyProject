.class Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$4;
.super Landroidx/room/SharedSQLiteStatement;
.source "DiscussionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl$4;->this$0:Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM discussion_table WHERE bytes_contact_identity IS NULL  AND bytes_group_owner_and_uid IS NULL  AND NOT EXISTS (SELECT 1 FROM message_table WHERE discussion_id = discussion_table.id)"

    return-object v0
.end method
