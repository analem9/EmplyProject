.class Lio/olvid/messenger/databases/dao/MessageDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "MessageDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/MessageDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/olvid/messenger/databases/entity/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/MessageDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/MessageDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/MessageDao_Impl$1;->this$0:Lio/olvid/messenger/databases/dao/MessageDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Message;)V
    .locals 3

    .line 54
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/Message;->id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 55
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/Message;->senderSequenceNumber:J

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 56
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 57
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 62
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 66
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Message;->jsonReturnReceipt:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 67
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 69
    :cond_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Message;->jsonReturnReceipt:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x6

    .line 71
    iget-wide v1, p2, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    const/4 v0, 0x7

    .line 72
    iget-wide v1, p2, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 73
    iget v1, p2, Lio/olvid/messenger/databases/entity/Message;->status:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 74
    iget v1, p2, Lio/olvid/messenger/databases/entity/Message;->messageType:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 75
    iget-wide v1, p2, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 76
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Message;->engineMessageIdentifier:[B

    const/16 v1, 0xb

    if-nez v0, :cond_3

    .line 77
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 79
    :cond_3
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Message;->engineMessageIdentifier:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 81
    :goto_3
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    const/16 v1, 0xc

    if-nez v0, :cond_4

    .line 82
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 84
    :cond_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 87
    :goto_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Message;->senderThreadIdentifier:Ljava/util/UUID;

    invoke-static {v0}, Lio/olvid/messenger/databases/ObvTypeConverters;->uuidToString(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_5

    .line 89
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 91
    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_5
    const/16 v0, 0xe

    .line 93
    iget v1, p2, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 94
    iget p2, p2, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p2, Lio/olvid/messenger/databases/entity/Message;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/MessageDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Message;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `message_table` (`id`,`sender_sequence_number`,`content_body`,`json_reply`,`json_return_receipt`,`sort_index`,`timestamp`,`status`,`message_type`,`discussion_id`,`engine_message_identifier`,`sender_identifier`,`sender_thread_identifier`,`total_attachment_count`,`image_count`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
