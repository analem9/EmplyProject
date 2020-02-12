.class final Lio/olvid/messenger/databases/AppDatabase$11;
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

    .line 289
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "ROOM MIGRATING FROM VERSION 10 TO 11"

    .line 292
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `contact_table` RENAME TO `old_contact_table`"

    .line 293
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `invitation_table` RENAME TO `old_invitation_table`"

    .line 294
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `contact_table` (`bytes_contact_identity` BLOB NOT NULL, `bytes_owned_identity` BLOB NOT NULL, `custom_display_name` TEXT, `display_name` TEXT NOT NULL, `identity_details` TEXT NOT NULL, `device_count` INTEGER NOT NULL, `established_channel_count` INTEGER NOT NULL, PRIMARY KEY(`bytes_owned_identity`, `bytes_contact_identity`), FOREIGN KEY(`bytes_owned_identity`) REFERENCES `identity_table`(`bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 296
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP  INDEX `index_contact_table_bytes_owned_identity`"

    .line 297
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP  INDEX `index_contact_table_display_name`"

    .line 298
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP  INDEX `index_contact_table_custom_display_name`"

    .line 299
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_contact_table_bytes_owned_identity` ON `contact_table` (`bytes_owned_identity`)"

    .line 300
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_contact_table_display_name` ON `contact_table` (`display_name`)"

    .line 301
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_contact_table_custom_display_name` ON `contact_table` (`custom_display_name`)"

    .line 302
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `contact_table` SELECT `bytes_contact_identity`, `bytes_owned_identity`, `custom_display_name`, `display_name`, (\'{\"first_name\":\"\' || `display_name` || \'\"}\'), `device_count`, `established_channel_count` FROM `old_contact_table`"

    .line 303
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `invitation_table` (`dialog_uuid` TEXT NOT NULL, `bytes_owned_identity` BLOB NOT NULL, `associated_dialog` BLOB NOT NULL, `invitation_timestamp` INTEGER NOT NULL, PRIMARY KEY(`dialog_uuid`), FOREIGN KEY(`bytes_owned_identity`) REFERENCES `identity_table`(`bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 305
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP  INDEX `index_invitation_table_bytes_owned_identity`"

    .line 306
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_invitation_table_bytes_owned_identity` ON `invitation_table` (`bytes_owned_identity`)"

    .line 307
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `old_contact_table`"

    .line 310
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `old_invitation_table`"

    .line 311
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
