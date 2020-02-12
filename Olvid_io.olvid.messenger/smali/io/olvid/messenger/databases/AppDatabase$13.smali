.class final Lio/olvid/messenger/databases/AppDatabase$13;
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

    .line 321
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "ROOM MIGRATING FROM VERSION 12 TO 13"

    .line 324
    invoke-static {v1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE group_table RENAME TO old_group_table"

    .line 327
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS `group_table` (`bytes_group_owner_and_uid` BLOB NOT NULL, `bytes_owned_identity` BLOB NOT NULL, `custom_name` TEXT, `name` TEXT NOT NULL, `new_published_details` INTEGER NOT NULL, `bytes_group_owner_identity` BLOB, `leaving` INTEGER NOT NULL, PRIMARY KEY(`bytes_group_owner_and_uid`, `bytes_owned_identity`), FOREIGN KEY(`bytes_owned_identity`) REFERENCES `identity_table`(`bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE , FOREIGN KEY(`bytes_group_owner_identity`, `bytes_owned_identity`) REFERENCES `contact_table`(`bytes_contact_identity`, `bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    .line 328
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "SELECT `group_id`, `bytes_owned_identity`, `name`, `bytes_group_owner_identity` FROM `old_group_table`"

    .line 330
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "DROP  INDEX `index_group_table_name`"

    .line 331
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP  INDEX `index_group_table_bytes_owned_identity`"

    .line 332
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP  INDEX `index_group_table_bytes_group_owner_identity_bytes_owned_identity`"

    .line 333
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE  INDEX `index_group_table_name` ON `group_table` (`name`)"

    .line 335
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE  INDEX `index_group_table_bytes_owned_identity` ON `group_table` (`bytes_owned_identity`)"

    .line 336
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE  INDEX `index_group_table_bytes_group_owner_identity_bytes_owned_identity` ON `group_table` (`bytes_group_owner_identity`, `bytes_owned_identity`)"

    .line 337
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 339
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    .line 340
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 341
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 342
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 343
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    const-string v15, "INSERT INTO `group_table` VALUES (?,?,?,?,?,?,?)"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v11

    aput-object v12, v4, v10

    aput-object v3, v4, v9

    aput-object v13, v4, v8

    .line 350
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    aput-object v14, v4, v6

    .line 352
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    .line 345
    invoke-interface {v0, v15, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 355
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v1, "ALTER TABLE contact_group_join RENAME TO old_contact_group_join"

    .line 359
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS `contact_group_join` (`bytes_group_owner_and_uid` BLOB NOT NULL, `bytes_contact_identity` BLOB NOT NULL, `bytes_owned_identity` BLOB NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`bytes_group_owner_and_uid`, `bytes_owned_identity`, `bytes_contact_identity`), FOREIGN KEY(`bytes_group_owner_and_uid`, `bytes_owned_identity`) REFERENCES `group_table`(`bytes_group_owner_and_uid`, `bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE , FOREIGN KEY(`bytes_contact_identity`, `bytes_owned_identity`) REFERENCES `contact_table`(`bytes_contact_identity`, `bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 360
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "SELECT `group_id`, `bytes_contact_identity`, `bytes_owned_identity`, `timestamp` FROM `old_contact_group_join`"

    .line 362
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_1
    const-string v2, "DROP  INDEX `index_contact_group_join_group_id_bytes_owned_identity`"

    .line 363
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP  INDEX `index_contact_group_join_bytes_contact_identity_bytes_owned_identity`"

    .line 364
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE  INDEX `index_contact_group_join_bytes_group_owner_and_uid_bytes_owned_identity` ON `contact_group_join` (`bytes_group_owner_and_uid`, `bytes_owned_identity`)"

    .line 366
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE  INDEX `index_contact_group_join_bytes_contact_identity_bytes_owned_identity` ON `contact_group_join` (`bytes_contact_identity`, `bytes_owned_identity`)"

    .line 367
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 369
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 371
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 372
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 373
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string v3, "INSERT INTO `contact_group_join` VALUES (?,?,?,?)"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v11

    aput-object v12, v4, v10

    aput-object v13, v4, v9

    .line 379
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v8

    .line 375
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v3, 0x0

    const/4 v4, 0x7

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 382
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v1, "DROP TABLE pending_group_member_table"

    .line 386
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS `pending_group_member_table` (`bytes_identity` BLOB NOT NULL, `display_name` TEXT NOT NULL, `bytes_owned_identity` BLOB NOT NULL, `bytes_group_owner_and_uid` BLOB NOT NULL, `declined` INTEGER NOT NULL, PRIMARY KEY(`bytes_identity`, `bytes_owned_identity`, `bytes_group_owner_and_uid`), FOREIGN KEY(`bytes_group_owner_and_uid`, `bytes_owned_identity`) REFERENCES `group_table`(`bytes_group_owner_and_uid`, `bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 388
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE  INDEX `index_pending_group_member_table_bytes_group_owner_and_uid_bytes_owned_identity` ON `pending_group_member_table` (`bytes_group_owner_and_uid`, `bytes_owned_identity`)"

    .line 389
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE discussion_table RENAME TO old_discussion_table"

    .line 393
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS `discussion_table` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `title` TEXT, `bytes_owned_identity` BLOB NOT NULL, `sender_thread_identifier` TEXT NOT NULL, `last_outbound_message_sequence_number` INTEGER NOT NULL, `bytes_group_owner_and_uid` BLOB, `bytes_contact_identity` BLOB, FOREIGN KEY(`bytes_owned_identity`) REFERENCES `identity_table`(`bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE CASCADE , FOREIGN KEY(`bytes_contact_identity`, `bytes_owned_identity`) REFERENCES `contact_table`(`bytes_contact_identity`, `bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE SET NULL , FOREIGN KEY(`bytes_group_owner_and_uid`, `bytes_owned_identity`) REFERENCES `group_table`(`bytes_group_owner_and_uid`, `bytes_owned_identity`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    .line 394
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "SELECT `id`, `title`, `bytes_owned_identity`, `sender_thread_identifier`, `last_outbound_message_sequence_number`, `group_id`, `bytes_contact_identity` FROM `old_discussion_table`"

    .line 396
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_2
    const-string v2, "DROP  INDEX `index_discussion_table_bytes_owned_identity`"

    .line 397
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP  INDEX `index_discussion_table_bytes_contact_identity_bytes_owned_identity`"

    .line 398
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP  INDEX `index_discussion_table_group_id_bytes_owned_identity`"

    .line 399
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP  INDEX `index_discussion_table_title`"

    .line 400
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE  INDEX `index_discussion_table_bytes_owned_identity` ON `discussion_table` (`bytes_owned_identity`)"

    .line 402
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE UNIQUE INDEX `index_discussion_table_bytes_contact_identity_bytes_owned_identity` ON `discussion_table` (`bytes_contact_identity`, `bytes_owned_identity`)"

    .line 403
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE UNIQUE INDEX `index_discussion_table_bytes_group_owner_and_uid_bytes_owned_identity` ON `discussion_table` (`bytes_group_owner_and_uid`, `bytes_owned_identity`)"

    .line 404
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE  INDEX `index_discussion_table_title` ON `discussion_table` (`title`)"

    .line 405
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 407
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 408
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 409
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 411
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 412
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 413
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 414
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "INSERT INTO `discussion_table` VALUES (?,?,?,?,?,?,?)"

    if-eqz v16, :cond_4

    const/4 v6, 0x7

    :try_start_3
    new-array v7, v6, [Ljava/lang/Object;

    .line 418
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v11

    aput-object v4, v7, v10

    aput-object v12, v7, v9

    aput-object v13, v7, v8

    .line 422
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v7, v3

    const/4 v2, 0x5

    aput-object v16, v7, v2

    const/4 v2, 0x6

    aput-object v17, v7, v2

    .line 417
    invoke-interface {v0, v5, v7}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v6, 0x7

    const/4 v12, 0x6

    goto :goto_3

    :cond_4
    const/4 v6, 0x7

    new-array v7, v6, [Ljava/lang/Object;

    .line 428
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v11

    aput-object v4, v7, v10

    aput-object v12, v7, v9

    aput-object v13, v7, v8

    .line 432
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v7, v3

    const/4 v2, 0x0

    const/4 v4, 0x5

    aput-object v2, v7, v4

    const/4 v12, 0x6

    aput-object v17, v7, v12

    .line 427
    invoke-interface {v0, v5, v7}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 438
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    const-string v1, "DELETE FROM `invitation_table`"

    .line 441
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE `old_discussion_table`"

    .line 444
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE `old_contact_group_join`"

    .line 445
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE `old_group_table`"

    .line 446
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 396
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_7

    .line 438
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v3

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 362
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_8

    .line 382
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw v3

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 330
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_9

    .line 355
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    throw v3
.end method
