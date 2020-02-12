.class public Lio/olvid/engine/networksend/databases/ReturnReceipt;
.super Ljava/lang/Object;
.source "ReturnReceipt.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networksend/databases/ReturnReceipt$NewReturnReceiptListener;
    }
.end annotation


# static fields
.field static final CONTACT_DEVICE_UIDS:Ljava/lang/String; = "contact_device_uids"

.field static final CONTACT_IDENTITY:Ljava/lang/String; = "contact_identity"

.field private static final HOOK_BIT_INSERT:J = 0x1L

.field static final ID:Ljava/lang/String; = "id"

.field static final KEY:Ljava/lang/String; = "key"

.field static final NONCE:Ljava/lang/String; = "nonce"

.field static final OWNED_IDENTITY:Ljava/lang/String; = "owned_identity"

.field static final STATUS:Ljava/lang/String; = "status"

.field static final TABLE_NAME:Ljava/lang/String; = "return_receipt"


# instance fields
.field private commitHookBits:J

.field private contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

.field private contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private id:J

.field private key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

.field private nonce:[B

.field private ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

.field private status:I


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;I[BLio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 199
    iput-wide v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->commitHookBits:J

    .line 88
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    .line 89
    iput-object p2, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 90
    iput-object p3, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 91
    iput-object p4, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 92
    iput p5, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->status:I

    .line 93
    iput-object p6, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->nonce:[B

    .line 94
    iput-object p7, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 199
    iput-wide v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->commitHookBits:J

    .line 98
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    :try_start_0
    const-string p1, "owned_identity"

    .line 100
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    const-string p1, "contact_identity"

    .line 101
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 102
    new-instance p1, Lio/olvid/engine/encoder/Encoded;

    const-string v0, "key"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    iput-object p1, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 103
    new-instance p1, Lio/olvid/engine/encoder/Encoded;

    const-string v0, "contact_device_uids"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeUidArray()[Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 105
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string p1, "status"

    .line 107
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->status:I

    const-string p1, "nonce"

    .line 108
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->nonce:[B

    return-void
.end method

.method public static create(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;I[BLio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)Lio/olvid/engine/networksend/databases/ReturnReceipt;
    .locals 10

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p5, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    :try_start_0
    new-instance v0, Lio/olvid/engine/networksend/databases/ReturnReceipt;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lio/olvid/engine/networksend/databases/ReturnReceipt;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;I[BLio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    .line 79
    invoke-virtual {v0}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS return_receipt (id INTEGER PRIMARY KEY, owned_identity BLOB NOT NULL, contact_identity BLOB NOT NULL, contact_device_uids BLOB NOT NULL, status INTEGER NOT NULL, nonce BLOB NOT NULL, key BLOB NOT NULL);"

    .line 144
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 152
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 143
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 152
    :try_start_2
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;J)Lio/olvid/engine/networksend/databases/ReturnReceipt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM return_receipt WHERE id = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 116
    :try_start_0
    invoke-interface {v0, v1, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 117
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 118
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 119
    new-instance p2, Lio/olvid/engine/networksend/databases/ReturnReceipt;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/networksend/databases/ReturnReceipt;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 123
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-object p2

    :cond_2
    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 123
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_3
    if-eqz v0, :cond_4

    .line 124
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    .line 117
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_5

    .line 123
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    .line 115
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_6

    .line 124
    :try_start_8
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p1
.end method

.method public static getAll(Lio/olvid/engine/networksend/datatypes/SendManagerSession;)[Lio/olvid/engine/networksend/databases/ReturnReceipt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM return_receipt;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 129
    :try_start_0
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 130
    :try_start_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 131
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    new-instance v3, Lio/olvid/engine/networksend/databases/ReturnReceipt;

    invoke-direct {v3, p0, v1}, Lio/olvid/engine/networksend/databases/ReturnReceipt;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lio/olvid/engine/networksend/databases/ReturnReceipt;

    .line 134
    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/networksend/databases/ReturnReceipt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 135
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v0, :cond_2

    .line 136
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 129
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 135
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 128
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v0, :cond_4

    .line 136
    :try_start_7
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM return_receipt WHERE id = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 188
    :try_start_0
    iget-wide v2, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->id:J

    invoke-interface {v0, v1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 189
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 187
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 190
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public getContactDeviceUids()[Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getContactIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->id:J

    return-wide v0
.end method

.method public getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    .line 64
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->nonce:[B

    return-object v0
.end method

.method public getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 60
    iget v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->status:I

    return v0
.end method

.method public insert()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const/4 v1, 0x1

    const-string v2, "INSERT INTO return_receipt(owned_identity, contact_identity, contact_device_uids, status, nonce, key) VALUES (?,?,?,?,?, ?);"

    invoke-virtual {v0, v2, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 168
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v2, 0x2

    .line 169
    iget-object v3, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v2, 0x3

    .line 170
    iget-object v3, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    invoke-static {v3}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v2, 0x4

    .line 171
    iget v3, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->status:I

    invoke-interface {v0, v2, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v2, 0x5

    .line 172
    iget-object v3, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->nonce:[B

    invoke-interface {v0, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v2, 0x6

    .line 173
    iget-object v3, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    invoke-static {v3}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 174
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 175
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 176
    :try_start_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->id:J

    .line 178
    iget-wide v3, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->commitHookBits:J

    const-wide/16 v5, 0x1

    or-long/2addr v3, v5

    iput-wide v3, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->commitHookBits:J

    .line 179
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v2, :cond_1

    .line 181
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v0, :cond_2

    .line 182
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 175
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 181
    :try_start_4
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    .line 161
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v0, :cond_4

    .line 182
    :try_start_7
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
.end method

.method public wasCommitted()V
    .locals 5

    .line 204
    iget-wide v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->commitHookBits:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 205
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->newReturnReceiptListener:Lio/olvid/engine/networksend/databases/ReturnReceipt$NewReturnReceiptListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->newReturnReceiptListener:Lio/olvid/engine/networksend/databases/ReturnReceipt$NewReturnReceiptListener;

    iget-wide v1, p0, Lio/olvid/engine/networksend/databases/ReturnReceipt;->id:J

    invoke-interface {v0, v1, v2}, Lio/olvid/engine/networksend/databases/ReturnReceipt$NewReturnReceiptListener;->newReturnReceipt(J)V

    :cond_0
    return-void
.end method
