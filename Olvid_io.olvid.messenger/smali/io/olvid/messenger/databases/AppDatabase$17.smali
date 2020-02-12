.class final Lio/olvid/messenger/databases/AppDatabase$17;
.super Landroidx/room/migration/Migration;
.source "AppDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 497
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "ROOM MIGRATING FROM VERSION 16 TO 17"

    .line 500
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `discussion_customization_table` (`discussion_id` INTEGER NOT NULL, `serialized_color_json` TEXT, PRIMARY KEY(`discussion_id`), FOREIGN KEY(`discussion_id`) REFERENCES `discussion_table`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 501
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
