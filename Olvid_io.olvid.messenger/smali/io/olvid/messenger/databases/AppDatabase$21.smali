.class final Lio/olvid/messenger/databases/AppDatabase$21;
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

    .line 558
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "ROOM MIGRATING FROM VERSION 20 TO 21"

    .line 561
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `discussion_customization_table` ADD COLUMN `background_image_url` TEXT DEFAULT NULL"

    .line 562
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `discussion_customization_table` ADD COLUMN `pref_send_read_receipt` INTEGER DEFAULT NULL"

    .line 563
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
