.class Lio/olvid/messenger/databases/dao/InvitationDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "InvitationDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/InvitationDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/olvid/messenger/databases/entity/Invitation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/InvitationDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/InvitationDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl$1;->this$0:Lio/olvid/messenger/databases/dao/InvitationDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Invitation;)V
    .locals 3

    .line 43
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    invoke-static {v0}, Lio/olvid/messenger/databases/ObvTypeConverters;->uuidToString(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 45
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 49
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Invitation;->bytesOwnedIdentity:[B

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 50
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 52
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Invitation;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 55
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-static {v0}, Lio/olvid/messenger/databases/ObvTypeConverters;->obvDialogToBytes(Lio/olvid/engine/engine/types/ObvDialog;)[B

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 57
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 59
    :cond_2
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_2
    const/4 v0, 0x4

    .line 61
    iget-wide v1, p2, Lio/olvid/messenger/databases/entity/Invitation;->invitationTimestamp:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lio/olvid/messenger/databases/entity/Invitation;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/InvitationDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Invitation;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `invitation_table` (`dialog_uuid`,`bytes_owned_identity`,`associated_dialog`,`invitation_timestamp`) VALUES (?,?,?,?)"

    return-object v0
.end method
