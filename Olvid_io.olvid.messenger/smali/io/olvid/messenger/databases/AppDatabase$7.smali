.class final Lio/olvid/messenger/databases/AppDatabase$7;
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

    .line 160
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 10

    const-string v0, "ROOM MIGRATING FROM VERSION 6 TO 7"

    .line 163
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `contact_table` RENAME TO  `old_contact_table`;"

    .line 165
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `contact_table` (`bytes_contact_identity` BLOB NOT NULL, `bytes_owned_identity` BLOB NOT NULL, `display_name` TEXT NOT NULL, `device_count` INTEGER NOT NULL, `established_channel_count` INTEGER NOT NULL, PRIMARY KEY(`bytes_owned_identity`, `bytes_contact_identity`), FOREIGN KEY(`bytes_owned_identity`) REFERENCES `identity_table`(`bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 166
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_contact_table_direct_discussion_id`"

    .line 167
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_contact_table_bytes_owned_identity`"

    .line 168
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_contact_table_bytes_owned_identity` ON `contact_table` (`bytes_owned_identity`)"

    .line 169
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_contact_table_display_name` ON `contact_table` (`display_name`)"

    .line 170
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `contact_table` SELECT `bytes_identity`, `bytes_owned_identity`, `display_name`, `device_count`, `established_channel_count` FROM `old_contact_table`"

    .line 171
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `group_table` (`group_id` BLOB NOT NULL, `bytes_owned_identity` BLOB NOT NULL, `name` TEXT NOT NULL, `bytes_group_owner_identity` BLOB, PRIMARY KEY(`group_id`, `bytes_owned_identity`), FOREIGN KEY(`bytes_owned_identity`) REFERENCES `identity_table`(`bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE , FOREIGN KEY(`bytes_group_owner_identity`, `bytes_owned_identity`) REFERENCES `contact_table`(`bytes_contact_identity`, `bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    .line 174
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_group_table_name` ON `group_table` (`name`)"

    .line 175
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_group_table_bytes_owned_identity` ON `group_table` (`bytes_owned_identity`)"

    .line 176
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_group_table_bytes_group_owner_identity_bytes_owned_identity` ON `group_table` (`bytes_group_owner_identity`, `bytes_owned_identity`)"

    .line 177
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "SELECT `group_id`, `bytes_owned_identity`, `title` FROM `discussion_table` WHERE `group_id` NOT NULL"

    .line 178
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 179
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 180
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v3, 0x1

    .line 181
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    const/4 v5, 0x2

    .line 182
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 183
    array-length v7, v2

    add-int/lit8 v7, v7, -0x20

    invoke-static {v2, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    const-string v8, "SELECT * FROM `contact_table` WHERE `bytes_contact_identity` = ? AND `bytes_owned_identity` = ?"

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v7, v9, v1

    aput-object v4, v9, v3

    .line 184
    invoke-interface {p1, v8, v9}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 185
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_0

    const/4 v7, 0x0

    :cond_0
    if-eqz v8, :cond_1

    .line 188
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v8, "INSERT INTO `group_table` VALUES (?,?,?,?)"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v1

    aput-object v4, v9, v3

    aput-object v6, v9, v5

    const/4 v1, 0x3

    aput-object v7, v9, v1

    .line 189
    invoke-interface {p1, v8, v9}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 184
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v8, :cond_2

    .line 188
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_3
    if-eqz v0, :cond_4

    .line 196
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v0, "CREATE TABLE IF NOT EXISTS `contact_group_join` (`group_id` BLOB NOT NULL, `bytes_contact_identity` BLOB NOT NULL, `bytes_owned_identity` BLOB NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`group_id`, `bytes_owned_identity`, `bytes_contact_identity`), FOREIGN KEY(`group_id`, `bytes_owned_identity`) REFERENCES `group_table`(`group_id`, `bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE , FOREIGN KEY(`bytes_contact_identity`, `bytes_owned_identity`) REFERENCES `contact_table`(`bytes_contact_identity`, `bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 199
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_contact_group_join_group_id_bytes_owned_identity` ON `contact_group_join` (`group_id`, `bytes_owned_identity`)"

    .line 200
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_contact_group_join_bytes_contact_identity_bytes_owned_identity` ON `contact_group_join` (`bytes_contact_identity`, `bytes_owned_identity`)"

    .line 201
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `contact_group_join` SELECT discussion.`group_id`, `contact_bytes_identity`, `contact_bytes_owned_identity`, `timestamp` FROM `contact_discussion_join` INNER JOIN `discussion_table` AS discussion ON discussion.id = `discussion_id` WHERE discussion.`group_id` NOT NULL"

    .line 202
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `pending_group_member_table` (`bytes_identity` BLOB NOT NULL, `display_name` TEXT NOT NULL, `bytes_owned_identity` BLOB NOT NULL, `group_id` BLOB NOT NULL, PRIMARY KEY(`bytes_identity`, `bytes_owned_identity`, `group_id`), FOREIGN KEY(`group_id`, `bytes_owned_identity`) REFERENCES `group_table`(`group_id`, `bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 205
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_pending_group_member_table_group_id_bytes_owned_identity` ON `pending_group_member_table` (`group_id`, `bytes_owned_identity`)"

    .line 206
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `discussion_table` RENAME TO  `old_discussion_table`;"

    .line 209
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `discussion_table` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `title` TEXT, `bytes_owned_identity` BLOB NOT NULL, `sender_thread_identifier` TEXT NOT NULL, `last_outbound_message_sequence_number` INTEGER NOT NULL, `group_id` BLOB, `bytes_contact_identity` BLOB, FOREIGN KEY(`bytes_owned_identity`) REFERENCES `identity_table`(`bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE , FOREIGN KEY(`bytes_contact_identity`, `bytes_owned_identity`) REFERENCES `contact_table`(`bytes_contact_identity`, `bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE SET NULL , FOREIGN KEY(`group_id`, `bytes_owned_identity`) REFERENCES `group_table`(`group_id`, `bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE SET NULL )"

    .line 210
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_discussion_table_bytes_owned_identity`"

    .line 211
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_discussion_table_group_id`"

    .line 212
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_discussion_table_title`"

    .line 213
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_discussion_table_bytes_owned_identity` ON `discussion_table` (`bytes_owned_identity`)"

    .line 214
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX `index_discussion_table_bytes_contact_identity_bytes_owned_identity` ON `discussion_table` (`bytes_contact_identity`, `bytes_owned_identity`)"

    .line 215
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX `index_discussion_table_group_id_bytes_owned_identity` ON `discussion_table` (`group_id`, `bytes_owned_identity`)"

    .line 216
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_discussion_table_title` ON `discussion_table` (`title`)"

    .line 217
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `discussion_table` SELECT `id`, `title`, `bytes_owned_identity`, `own_sender_identifier`, `last_outbound_message_sequence_number`, `group_id`, NULL FROM `old_discussion_table` WHERE `group_id` NOT NULL"

    .line 218
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `discussion_table` SELECT `id`, `title`, `bytes_owned_identity`, `own_sender_identifier`, `last_outbound_message_sequence_number`, NULL, `contact_bytes_identity` FROM `old_discussion_table` INNER JOIN `contact_discussion_join` ON `id` = `discussion_id` WHERE `group_id` IS NULL"

    .line 219
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `fyle_message_join_with_status` RENAME TO  `old_fyle_message_join_with_status`"

    .line 222
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `fyle_message_join_with_status` (`fyle_id` INTEGER NOT NULL, `message_id` INTEGER NOT NULL, `bytes_owned_identity` BLOB NOT NULL, `file_path` TEXT NOT NULL, `file_name` TEXT NOT NULL, `file_type` TEXT, `status` INTEGER NOT NULL, `size` INTEGER NOT NULL, `progress` REAL NOT NULL, `engine_message_identifier` BLOB, `engine_number` INTEGER, PRIMARY KEY(`fyle_id`, `message_id`), FOREIGN KEY(`fyle_id`) REFERENCES `fyle_table`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE , FOREIGN KEY(`message_id`) REFERENCES `message_table`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE , FOREIGN KEY(`bytes_owned_identity`) REFERENCES `identity_table`(`bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    .line 223
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_fyle_message_join_with_status_fyle_id`"

    .line 224
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_fyle_message_join_with_status_message_id`"

    .line 225
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_fyle_message_join_with_status_engine_message_identifier_engine_number`"

    .line 226
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_fyle_message_join_with_status_bytes_owned_identity`"

    .line 227
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_fyle_message_join_with_status_fyle_id` ON `fyle_message_join_with_status` (`fyle_id`)"

    .line 228
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_fyle_message_join_with_status_message_id` ON `fyle_message_join_with_status` (`message_id`)"

    .line 229
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_fyle_message_join_with_status_engine_message_identifier_engine_number` ON `fyle_message_join_with_status` (`engine_message_identifier`, `engine_number`)"

    .line 230
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_fyle_message_join_with_status_bytes_owned_identity` ON `fyle_message_join_with_status` (`bytes_owned_identity`)"

    .line 231
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `fyle_message_join_with_status` SELECT * FROM  `old_fyle_message_join_with_status`"

    .line 232
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `invitation_table` RENAME TO `old_invitation_table`"

    .line 235
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `invitation_table` (`dialog_uuid` TEXT NOT NULL, `bytes_owned_identity` BLOB NOT NULL, `associated_dialog` BLOB NOT NULL, `contact_identity` BLOB, `progress` INTEGER NOT NULL, `invitation_timestamp` INTEGER NOT NULL, PRIMARY KEY(`dialog_uuid`), FOREIGN KEY(`bytes_owned_identity`) REFERENCES `identity_table`(`bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 236
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX `index_invitation_table_bytes_owned_identity`"

    .line 237
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_invitation_table_bytes_owned_identity` ON `invitation_table` (`bytes_owned_identity`)"

    .line 238
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `invitation_table` SELECT * FROM  `old_invitation_table`"

    .line 239
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `identity_table` RENAME TO `old_identity_table`"

    .line 242
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `identity_table` (`bytes_owned_identity` BLOB NOT NULL, `obv_owned_identity` BLOB NOT NULL, `display_name` TEXT NOT NULL, `api_key_status` INTEGER NOT NULL, PRIMARY KEY(`bytes_owned_identity`))"

    .line 243
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `identity_table` SELECT * FROM  `old_identity_table`"

    .line 244
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `anonymizer_for_owned_identity` RENAME TO `old_anonymizer_for_owned_identity`"

    .line 247
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `anonymizer_for_owned_identity` (`bytes_owned_identity` BLOB NOT NULL, `pseudo` TEXT NOT NULL, PRIMARY KEY(`bytes_owned_identity`), FOREIGN KEY(`bytes_owned_identity`) REFERENCES `identity_table`(`bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 248
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `anonymizer_for_owned_identity` SELECT * FROM `old_anonymizer_for_owned_identity`"

    .line 249
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_message_table_discussion_id_status` ON `message_table` (`discussion_id`, `status`)"

    .line 252
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `old_contact_table`"

    .line 254
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `contact_discussion_join`"

    .line 255
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `old_discussion_table`"

    .line 256
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `old_fyle_message_join_with_status`"

    .line 257
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `old_invitation_table`"

    .line 258
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `old_identity_table`"

    .line 259
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `old_anonymizer_for_owned_identity`"

    .line 260
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception p1

    .line 178
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v0, :cond_5

    .line 196
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v1
.end method
