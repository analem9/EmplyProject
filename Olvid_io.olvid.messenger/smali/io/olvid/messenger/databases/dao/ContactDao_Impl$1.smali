.class Lio/olvid/messenger/databases/dao/ContactDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "ContactDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/dao/ContactDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/olvid/messenger/databases/entity/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/dao/ContactDao_Impl;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/dao/ContactDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lio/olvid/messenger/databases/dao/ContactDao_Impl$1;->this$0:Lio/olvid/messenger/databases/dao/ContactDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 3

    .line 41
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 46
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 47
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 49
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 51
    :goto_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->customDisplayName:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 54
    :cond_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->customDisplayName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 56
    :goto_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->displayName:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 57
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 59
    :cond_3
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->displayName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :goto_3
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->identityDetails:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 62
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 64
    :cond_4
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->identityDetails:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_4
    const/4 v0, 0x6

    .line 66
    iget v1, p2, Lio/olvid/messenger/databases/entity/Contact;->newPublishedDetails:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 67
    iget v1, p2, Lio/olvid/messenger/databases/entity/Contact;->deviceCount:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 68
    iget p2, p2, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/databases/dao/ContactDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/olvid/messenger/databases/entity/Contact;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `contact_table` (`bytes_contact_identity`,`bytes_owned_identity`,`custom_display_name`,`display_name`,`identity_details`,`new_published_details`,`device_count`,`established_channel_count`) VALUES (?,?,?,?,?,?,?,?)"

    return-object v0
.end method
