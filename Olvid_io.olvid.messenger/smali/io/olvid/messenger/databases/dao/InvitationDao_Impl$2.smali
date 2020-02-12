.class Lio/olvid/messenger/databases/dao/InvitationDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lio/olvid/messenger/databases/entity/Invitation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/InvitationDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/InvitationDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl$2;->this$0:Lio/olvid/messenger/databases/dao/InvitationDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Invitation;)V
    .locals 1

    .line 73
    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    invoke-static {p2}, Lio/olvid/messenger/databases/ObvTypeConverters;->uuidToString(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 75
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p2, Lio/olvid/messenger/databases/entity/Invitation;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/InvitationDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Invitation;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `invitation_table` WHERE `dialog_uuid` = ?"

    return-object v0
.end method
