.class Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$2;
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

    .line 83
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$2;->this$0:Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V
    .locals 3

    .line 91
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->messageId:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 92
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 93
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `message_recipient_info_table` WHERE `message_id` = ? AND `bytes_contact_identity` = ?"

    return-object v0
.end method
