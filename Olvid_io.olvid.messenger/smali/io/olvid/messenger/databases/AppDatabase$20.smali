.class final Lio/olvid/messenger/databases/AppDatabase$20;
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

    .line 546
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "ROOM MIGRATING FROM VERSION 19 TO 20"

    .line 549
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `message_recipient_info_table` (`message_id` INTEGER NOT NULL, `bytes_contact_identity` BLOB NOT NULL, `return_receipt_nonce` BLOB, `return_receipt_key` BLOB, `engine_message_identifier` BLOB, `timestamp_sent` INTEGER, `timestamp_delivered` INTEGER, `timestamp_read` INTEGER, PRIMARY KEY(`message_id`, `bytes_contact_identity`), FOREIGN KEY(`message_id`) REFERENCES `message_table`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    .line 550
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_message_recipient_info_table_engine_message_identifier` ON `message_recipient_info_table` (`engine_message_identifier`)"

    .line 551
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_message_recipient_info_table_bytes_contact_identity` ON `message_recipient_info_table` (`bytes_contact_identity`)"

    .line 552
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_message_recipient_info_table_message_id` ON `message_recipient_info_table` (`message_id`)"

    .line 553
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_message_recipient_info_table_return_receipt_nonce` ON `message_recipient_info_table` (`return_receipt_nonce`)"

    .line 554
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_message_recipient_info_table_message_id_bytes_contact_identity` ON `message_recipient_info_table` (`message_id`, `bytes_contact_identity`)"

    .line 555
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
