.class Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "FyleMessageJoinWithStatusDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$3;->this$0:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V
    .locals 4

    .line 104
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fyleId:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 105
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->messageId:J

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 106
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->bytesOwnedIdentity:[B

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 107
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 111
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->filePath:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 112
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 114
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->filePath:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 116
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fileName:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 117
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 119
    :cond_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fileName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 121
    :goto_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 122
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 124
    :cond_3
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x7

    .line 126
    iget v1, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 127
    iget-wide v1, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->size:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 128
    iget v1, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 129
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    const/16 v1, 0xa

    if-nez v0, :cond_4

    .line 130
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 132
    :cond_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 134
    :goto_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    const/16 v1, 0xb

    if-nez v0, :cond_5

    .line 135
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 137
    :cond_5
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_5
    const/16 v0, 0xc

    .line 139
    iget-wide v1, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fyleId:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 140
    iget-wide v1, p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->messageId:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `fyle_message_join_with_status` SET `fyle_id` = ?,`message_id` = ?,`bytes_owned_identity` = ?,`file_path` = ?,`file_name` = ?,`file_type` = ?,`status` = ?,`size` = ?,`progress` = ?,`engine_message_identifier` = ?,`engine_number` = ? WHERE `fyle_id` = ? AND `message_id` = ?"

    return-object v0
.end method
