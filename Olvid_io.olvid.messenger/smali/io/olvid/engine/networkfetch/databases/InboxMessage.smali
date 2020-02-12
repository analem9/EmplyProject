.class public Lio/olvid/engine/networkfetch/databases/InboxMessage;
.super Ljava/lang/Object;
.source "InboxMessage.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;
    }
.end annotation


# static fields
.field static final ENCRYPTED_CONTENT:Ljava/lang/String; = "encrypted_content"

.field static final FROM_IDENTITY:Ljava/lang/String; = "from_identity"

.field private static HOOK_BIT_INSERT:J = 0x0L

.field private static HOOK_BIT_PAYLOAD_AND_FROM_IDENTITY_SET:J = 0x0L

.field static final MARKED_FOR_DELETION:Ljava/lang/String; = "marked_for_deletion"

.field static final PAYLOAD:Ljava/lang/String; = "payload"

.field static final SERVER_TIMESTAMP:Ljava/lang/String; = "server_timestamp"

.field static final TABLE_NAME:Ljava/lang/String; = "inbox_message"

.field static final TO_IDENTITY:Ljava/lang/String; = "to_identity"

.field static final UID_:Ljava/lang/String; = "uid"

.field static final WRAPPED_KEY:Ljava/lang/String; = "wrapped_key"

.field private static final deletedMessageUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/UID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private commitHookBits:J

.field private encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

.field private final fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

.field private fromIdentity:Lio/olvid/engine/datatypes/Identity;

.field private markedForDeletion:Z

.field private payload:[B

.field private serverTimestamp:J

.field private toIdentity:Lio/olvid/engine/datatypes/Identity;

.field private uid:Lio/olvid/engine/datatypes/UID;

.field private wrappedKey:Lio/olvid/engine/datatypes/EncryptedBytes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->deletedMessageUids:Ljava/util/HashSet;

    const-wide/16 v0, 0x1

    .line 323
    sput-wide v0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->HOOK_BIT_INSERT:J

    const-wide/16 v0, 0x2

    .line 324
    sput-wide v0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->HOOK_BIT_PAYLOAD_AND_FROM_IDENTITY_SET:J

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/EncryptedBytes;Lio/olvid/engine/datatypes/EncryptedBytes;J)V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 322
    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->commitHookBits:J

    .line 154
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    .line 155
    iput-object p2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    .line 156
    iput-object p3, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 157
    iput-object p4, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 158
    iput-object p5, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->wrappedKey:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 159
    iput-wide p6, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->serverTimestamp:J

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->payload:[B

    .line 161
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fromIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 322
    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->commitHookBits:J

    .line 165
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    .line 166
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    :try_start_0
    const-string p1, "to_identity"

    .line 168
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    :goto_0
    const-string p1, "wrapped_key"

    .line 172
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_1

    .line 173
    :cond_0
    new-instance v1, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-direct {v1, p1}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    :goto_1
    iput-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->wrappedKey:Lio/olvid/engine/datatypes/EncryptedBytes;

    const-string p1, "encrypted_content"

    .line 174
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_2

    .line 175
    :cond_1
    new-instance v1, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-direct {v1, p1}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    :goto_2
    iput-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    const-string p1, "marked_for_deletion"

    .line 176
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->markedForDeletion:Z

    const-string p1, "server_timestamp"

    .line 177
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->serverTimestamp:J

    const-string p1, "payload"

    .line 178
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->payload:[B

    const-string p1, "from_identity"

    .line 179
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_2

    .line 181
    iput-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fromIdentity:Lio/olvid/engine/datatypes/Identity;

    goto :goto_3

    .line 184
    :cond_2
    :try_start_1
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fromIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_1
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 186
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static create(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/EncryptedBytes;Lio/olvid/engine/datatypes/EncryptedBytes;J)Lio/olvid/engine/networkfetch/databases/InboxMessage;
    .locals 11

    move-object v0, p1

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 140
    sget-object v1, Lio/olvid/engine/networkfetch/databases/InboxMessage;->deletedMessageUids:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    :try_start_0
    new-instance v10, Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lio/olvid/engine/networkfetch/databases/InboxMessage;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/EncryptedBytes;Lio/olvid/engine/datatypes/EncryptedBytes;J)V

    .line 145
    invoke-virtual {v10}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v9
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS inbox_message (uid BLOB PRIMARY KEY, to_identity BLOB NOT NULL, wrapped_key BLOB NOT NULL, encrypted_content BLOB NOT NULL, marked_for_deletion BIT NOT NULL, server_timestamp BIGINT NOT NULL, payload BLOB, from_identity BLOB);"

    .line 234
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 246
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 233
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 246
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

.method public static get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/InboxMessage;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 197
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM inbox_message WHERE uid = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 198
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 199
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 200
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    new-instance v2, Lio/olvid/engine/networkfetch/databases/InboxMessage;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/networkfetch/databases/InboxMessage;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 205
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 206
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object v2

    :cond_3
    if-eqz p1, :cond_4

    .line 205
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 206
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 199
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_6

    .line 205
    :try_start_8
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p0

    .line 197
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 206
    :try_start_b
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v1

    :try_start_c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    .line 207
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v0
.end method

.method public static getDecryptedMessages(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)[Lio/olvid/engine/networkfetch/databases/InboxMessage;
    .locals 5

    const/4 v0, 0x0

    .line 213
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM inbox_message WHERE payload NOT NULL AND marked_for_deletion = 0;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 218
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 219
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    new-instance v4, Lio/olvid/engine/networkfetch/databases/InboxMessage;

    invoke-direct {v4, p0, v2}, Lio/olvid/engine/networkfetch/databases/InboxMessage;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/networkfetch/databases/InboxMessage;

    .line 222
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/networkfetch/databases/InboxMessage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 223
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 224
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 217
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 223
    :try_start_6
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 213
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_4

    .line 224
    :try_start_9
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v2
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    new-array p0, v0, [Lio/olvid/engine/networkfetch/databases/InboxMessage;

    return-object p0
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "MIGRATING `inbox_message` DATABASE FROM VERSION "

    const/4 v1, 0x2

    if-ge p1, v1, :cond_2

    if-lt p2, v1, :cond_2

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 2"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    :try_start_0
    const-string v2, "ALTER TABLE `inbox_message` ADD COLUMN `server_timestamp` BIGINT NOT NULL DEFAULT 0"

    .line 253
    invoke-interface {p1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 254
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    :cond_0
    const/4 p1, 0x2

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 252
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    .line 254
    :try_start_2
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2

    :cond_2
    :goto_1
    const/4 v1, 0x4

    if-ge p1, v1, :cond_4

    if-lt p2, v1, :cond_4

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 4\n!!!! THIS MIGRATION IS DESTRUCTIVE !!!!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_3
    const-string p1, "DROP TABLE IF EXISTS `inbox_message`;"

    .line 260
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string p1, "CREATE TABLE IF NOT EXISTS inbox_message (uid BLOB PRIMARY KEY, to_identity BLOB NOT NULL, wrapped_key BLOB NOT NULL, encrypted_content BLOB NOT NULL, marked_for_deletion BIT NOT NULL, server_timestamp BIGINT NOT NULL, payload BLOB, from_identity BLOB);"

    .line 261
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p0, :cond_4

    .line 272
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 259
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_3

    .line 272
    :try_start_5
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p2

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public canBeDeleted()Z
    .locals 5

    .line 99
    iget-boolean v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->markedForDeletion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getAttachments()[Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 103
    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->isMarkedForDeletion()Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public delete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 298
    sget-object v0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->deletedMessageUids:Ljava/util/HashSet;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getAttachments()[Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 302
    :try_start_0
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->deleteAttachmentFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->delete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :catch_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Error deleting attachment file."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM inbox_message WHERE uid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 309
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 310
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 311
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 308
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 311
    :try_start_3
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public getAttachments()[Lio/olvid/engine/networkfetch/databases/InboxAttachment;
    .locals 2

    .line 78
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v1}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getAll(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptedApplicationMessage()Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;
    .locals 8

    .line 90
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->payload:[B

    if-eqz v2, :cond_1

    iget-object v3, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fromIdentity:Lio/olvid/engine/datatypes/Identity;

    if-nez v3, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v7, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    iget-object v4, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-wide v5, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->serverTimestamp:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;-><init>(Lio/olvid/engine/datatypes/UID;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;J)V

    return-object v7

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncryptedContent()Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-object v0
.end method

.method public getFromIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fromIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getNetworkReceivedMessage()Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;
    .locals 7

    .line 82
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->wrappedKey:Lio/olvid/engine/datatypes/EncryptedBytes;

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v6, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-direct {v6, v1, v0}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/EncryptedBytes;)V

    .line 86
    new-instance v0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;

    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    iget-wide v3, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->serverTimestamp:J

    iget-object v5, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;-><init>(Lio/olvid/engine/datatypes/UID;JLio/olvid/engine/datatypes/EncryptedBytes;Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->payload:[B

    return-object v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->serverTimestamp:J

    return-wide v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getWrappedKey()Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 1

    .line 58
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->wrappedKey:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-object v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO inbox_message VALUES(?,?,?,?,?, ?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 280
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 281
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 282
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->wrappedKey:Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 283
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x5

    .line 284
    iget-boolean v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->markedForDeletion:Z

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/4 v1, 0x6

    .line 286
    iget-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->serverTimestamp:J

    invoke-interface {v0, v1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v1, 0x7

    .line 287
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->payload:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/16 v1, 0x8

    .line 288
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fromIdentity:Lio/olvid/engine/datatypes/Identity;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fromIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 290
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 291
    iget-wide v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/networkfetch/databases/InboxMessage;->HOOK_BIT_INSERT:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->commitHookBits:J

    .line 292
    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 293
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 279
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 293
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public markForDeletion()V
    .locals 3

    .line 113
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE inbox_message SET marked_for_deletion = 1 WHERE uid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 115
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 116
    iput-boolean v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->markedForDeletion:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 117
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 113
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    .line 117
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method public setPayloadAndFromIdentity([BLio/olvid/engine/datatypes/Identity;)V
    .locals 3

    .line 121
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE inbox_message SET payload = ?, from_identity = ? WHERE uid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 124
    :try_start_1
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 125
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 126
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 127
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 128
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->payload:[B

    .line 129
    iput-object p2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fromIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 130
    iget-wide p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->commitHookBits:J

    sget-wide v1, Lio/olvid/engine/networkfetch/databases/InboxMessage;->HOOK_BIT_PAYLOAD_AND_FROM_IDENTITY_SET:J

    or-long/2addr p1, v1

    iput-wide p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->commitHookBits:J

    .line 131
    iget-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object p1, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 132
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 121
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_0

    .line 132
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method public wasCommitted()V
    .locals 6

    .line 328
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/networkfetch/databases/InboxMessage;->HOOK_BIT_INSERT:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 329
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->inboxMessageListener:Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->inboxMessageListener:Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;

    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getNetworkReceivedMessage()Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;->messageWasDownloaded(Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;)V

    .line 333
    :cond_0
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/networkfetch/databases/InboxMessage;->HOOK_BIT_PAYLOAD_AND_FROM_IDENTITY_SET:J

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 334
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->inboxMessageListener:Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->inboxMessageListener:Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-interface {v0, v1}, Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;->messageDecrypted(Lio/olvid/engine/datatypes/UID;)V

    .line 338
    :cond_1
    iput-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxMessage;->commitHookBits:J

    return-void
.end method
