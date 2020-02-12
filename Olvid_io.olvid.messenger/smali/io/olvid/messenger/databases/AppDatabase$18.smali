.class final Lio/olvid/messenger/databases/AppDatabase$18;
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

    .line 504
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "ROOM MIGRATING FROM VERSION 17 TO 18"

    .line 507
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE message_table RENAME TO old_message_table"

    .line 508
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `message_table` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sender_sequence_number` INTEGER NOT NULL, `content_body` TEXT, `json_reply` TEXT, `sort_index` REAL NOT NULL, `timestamp` INTEGER NOT NULL, `status` INTEGER NOT NULL, `message_type` INTEGER NOT NULL, `discussion_id` INTEGER NOT NULL, `engine_message_identifier` BLOB, `sender_identifier` BLOB NOT NULL, `sender_thread_identifier` TEXT NOT NULL, `total_attachment_count` INTEGER NOT NULL, `image_count` INTEGER NOT NULL, FOREIGN KEY(`discussion_id`) REFERENCES `discussion_table`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 509
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_message_table_discussion_id`"

    .line 511
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_message_table_engine_message_identifier`"

    .line 512
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_message_table_sort_index`"

    .line 513
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_message_table_timestamp`"

    .line 514
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_message_table_message_type_status`"

    .line 515
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_message_table_discussion_id_status`"

    .line 516
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_message_table_sender_sequence_number_sender_thread_identifier_sender_identifier_discussion_id`"

    .line 517
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX `index_message_table_discussion_id` ON `message_table` (`discussion_id`)"

    .line 519
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX `index_message_table_engine_message_identifier` ON `message_table` (`engine_message_identifier`)"

    .line 520
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX `index_message_table_sort_index` ON `message_table` (`sort_index`)"

    .line 521
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX `index_message_table_timestamp` ON `message_table` (`timestamp`)"

    .line 522
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX `index_message_table_message_type_status` ON `message_table` (`message_type`, `status`)"

    .line 523
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX `index_message_table_discussion_id_status` ON `message_table` (`discussion_id`, `status`)"

    .line 524
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX `index_message_table_sender_sequence_number_sender_thread_identifier_sender_identifier_discussion_id` ON `message_table` (`sender_sequence_number`, `sender_thread_identifier`, `sender_identifier`, `discussion_id`)"

    .line 525
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO message_table  SELECT m.id, m.sender_sequence_number, m.content_body, m.json_reply, m.sort_index, m.timestamp, m.status, m.message_type, m.discussion_id, m.engine_message_identifier, m.sender_identifier, m.sender_thread_identifier, IFNULL(attachment_count,0), IFNULL(image_count,0)  FROM old_message_table AS m  LEFT JOIN (SELECT message_id AS mid_un, COUNT(*) AS attachment_count FROM fyle_message_join_with_status GROUP BY message_id) ON m.id = mid_un LEFT JOIN (SELECT message_id AS mid_deux, COUNT(*) AS image_count FROM fyle_message_join_with_status WHERE file_type LIKE \'image/%\' OR file_type LIKE \'video/%\' GROUP BY message_id) ON m.id = mid_deux"

    .line 527
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE old_message_table"

    .line 535
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
