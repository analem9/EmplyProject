.class final Lio/olvid/messenger/databases/AppDatabase$10;
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

    .line 281
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "ROOM MIGRATING FROM VERSION 9 TO 10"

    .line 284
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `contact_table` ADD COLUMN `custom_display_name` TEXT DEFAULT NULL"

    .line 285
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_contact_table_custom_display_name` ON `contact_table` (`custom_display_name`)"

    .line 286
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
