.class Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "MessageRecipientInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$3;->this$0:Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V
    .locals 4

    .line 107
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->messageId:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 108
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 109
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 113
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptNonce:[B

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 114
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 116
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptNonce:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 118
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptKey:[B

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 119
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 121
    :cond_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptKey:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 123
    :goto_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 124
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 126
    :cond_3
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 128
    :goto_3
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 129
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 131
    :cond_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 133
    :goto_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 134
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 136
    :cond_5
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 138
    :goto_5
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 139
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 141
    :cond_6
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_6
    const/16 v0, 0x9

    .line 143
    iget-wide v1, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->messageId:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 144
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    const/16 v1, 0xa

    if-nez v0, :cond_7

    .line 145
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 147
    :cond_7
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_7
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR IGNORE `message_recipient_info_table` SET `message_id` = ?,`bytes_contact_identity` = ?,`return_receipt_nonce` = ?,`return_receipt_key` = ?,`engine_message_identifier` = ?,`timestamp_sent` = ?,`timestamp_delivered` = ?,`timestamp_read` = ? WHERE `message_id` = ? AND `bytes_contact_identity` = ?"

    return-object v0
.end method
