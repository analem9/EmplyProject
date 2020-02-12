.class Lio/olvid/messenger/databases/dao/MessageDao_Impl$4;
.super Landroidx/room/SharedSQLiteStatement;
.source "MessageDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/MessageDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/MessageDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/MessageDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/MessageDao_Impl$4;->this$0:Lio/olvid/messenger/databases/dao/MessageDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE message_table SET status = 4 WHERE status = 3 AND discussion_id = ?"

    return-object v0
.end method
