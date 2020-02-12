.class Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$1;->this$0:Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V
    .locals 4

    .line 45
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->messageId:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 46
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 47
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 51
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptNonce:[B

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptNonce:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 56
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptKey:[B

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 57
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 59
    :cond_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptKey:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 61
    :goto_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 62
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 64
    :cond_3
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 66
    :goto_3
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 67
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 69
    :cond_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 71
    :goto_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 72
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 74
    :cond_5
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 76
    :goto_5
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 77
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 79
    :cond_6
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_6
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `message_recipient_info_table` (`message_id`,`bytes_contact_identity`,`return_receipt_nonce`,`return_receipt_key`,`engine_message_identifier`,`timestamp_sent`,`timestamp_delivered`,`timestamp_read`) VALUES (?,?,?,?,?,?,?,?)"

    return-object v0
.end method
