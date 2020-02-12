.class final Lio/olvid/messenger/databases/AppDatabase$2;
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

    .line 101
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "ROOM MIGRATING FROM VERSION 1 TO 2"

    .line 104
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `message_table` RENAME TO  `old_message_table`;"

    .line 105
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `message_table` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sender_sequence_number` INTEGER NOT NULL, `json_body` TEXT NOT NULL, `sort_index` REAL NOT NULL, `timestamp` INTEGER NOT NULL, `status` INTEGER NOT NULL, `message_type` INTEGER NOT NULL, `discussion_id` INTEGER NOT NULL, `engine_message_identifier` BLOB, `engine_number` INTEGER NOT NULL, `sender_identifier` BLOB NOT NULL, `sender_thread_identifier` TEXT NOT NULL, `has_attachments` INTEGER NOT NULL, FOREIGN KEY(`discussion_id`) REFERENCES `discussion_table`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE)"

    .line 106
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_message_table_discussion_id`"

    .line 107
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX `index_message_table_discussion_id` ON `message_table` (`discussion_id`)"

    .line 108
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_message_table_engine_message_identifier_engine_number`"

    .line 109
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX `index_message_table_engine_message_identifier_engine_number` ON `message_table` (`engine_message_identifier`, `engine_number`)"

    .line 110
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_message_table_sender_sequence_number_sender_thread_identifier_sender_identifier_discussion_id`"

    .line 111
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX `index_message_table_sender_sequence_number_sender_thread_identifier_sender_identifier_discussion_id` ON `message_table` (`sender_sequence_number`, `sender_thread_identifier`, `sender_identifier`, `discussion_id`)"

    .line 112
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `message_table` SELECT `id`, `sender_sequence_number`, `json_body`, `sort_index`, `timestamp`, `status`, `is_outbound`, `discussion_id`, `engine_message_identifier`, `engine_number`, `sender_identifier`, `sender_thread_identifier`, `has_attachments` FROM `old_message_table`"

    .line 113
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `old_message_table`"

    .line 114
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
