.class public Lio/olvid/engine/networksend/databases/OutboxMessage;
.super Ljava/lang/Object;
.source "OutboxMessage.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networksend/databases/OutboxMessage$NewOutboxMessageListener;
    }
.end annotation


# static fields
.field static final ENCRYPTED_CONTENT:Ljava/lang/String; = "encrypted_content"

.field private static final HOOK_BIT_ACKNOWLEDGED:J = 0x2L

.field private static final HOOK_BIT_INSERT:J = 0x1L

.field static final IS_APPLICATION_MESSAGE_WITH_USER_CONTENT:Ljava/lang/String; = "is_application_message"

.field static final PROOF_OF_WORK_ENCODED_CHALLENGE:Ljava/lang/String; = "proof_of_work_encoded_challenge"

.field static final PROOF_OF_WORK_ENCODED_SOLUTION:Ljava/lang/String; = "proof_of_work_encoded_solution"

.field static final PROOF_OF_WORK_UID:Ljava/lang/String; = "proof_of_work_uid"

.field static final SERVER:Ljava/lang/String; = "server"

.field static final TABLE_NAME:Ljava/lang/String; = "outbox_message"

.field static final UID_:Ljava/lang/String; = "uid"

.field static final UID_FROM_SERVER:Ljava/lang/String; = "uid_from_server"


# instance fields
.field private acknowledgedTimestampFromSever:J

.field private commitHookBits:J

.field private encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

.field private isApplicationMessageWithUserContent:Z

.field private proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;

.field private proofOfWorkEncodedSolution:Lio/olvid/engine/encoder/Encoded;

.field private proofOfWorkUid:Lio/olvid/engine/datatypes/UID;

.field private final sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

.field private server:Ljava/lang/String;

.field private uid:Lio/olvid/engine/datatypes/UID;

.field private uidFromServer:Lio/olvid/engine/datatypes/UID;


# direct methods
.method private constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;Ljava/lang/String;Lio/olvid/engine/datatypes/EncryptedBytes;Z)V
    .locals 2

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 354
    iput-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->commitHookBits:J

    .line 223
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    .line 224
    iput-object p2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    const/4 p1, 0x0

    .line 225
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    .line 226
    iput-object p3, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->server:Ljava/lang/String;

    .line 228
    iput-object p4, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 230
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkUid:Lio/olvid/engine/datatypes/UID;

    .line 231
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;

    .line 232
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedSolution:Lio/olvid/engine/encoder/Encoded;

    .line 234
    iput-boolean p5, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->isApplicationMessageWithUserContent:Z

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 354
    iput-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->commitHookBits:J

    .line 200
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    .line 201
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    const-string p1, "uid_from_server"

    .line 202
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 203
    :cond_0
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v1, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    :goto_0
    iput-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    const-string p1, "server"

    .line 204
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->server:Ljava/lang/String;

    .line 210
    new-instance p1, Lio/olvid/engine/datatypes/EncryptedBytes;

    const-string v1, "encrypted_content"

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p1, v1}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    const-string p1, "proof_of_work_uid"

    .line 212
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_1

    .line 213
    :cond_1
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v1, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    :goto_1
    iput-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkUid:Lio/olvid/engine/datatypes/UID;

    const-string p1, "proof_of_work_encoded_challenge"

    .line 214
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_2

    move-object v1, v0

    goto :goto_2

    .line 215
    :cond_2
    new-instance v1, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {v1, p1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    :goto_2
    iput-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;

    const-string p1, "proof_of_work_encoded_solution"

    .line 216
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    .line 217
    :cond_3
    new-instance v0, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {v0, p1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    :goto_3
    iput-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedSolution:Lio/olvid/engine/encoder/Encoded;

    const-string p1, "is_application_message"

    .line 218
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->isApplicationMessageWithUserContent:Z

    return-void
.end method

.method public static create(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;Ljava/lang/String;Lio/olvid/engine/datatypes/EncryptedBytes;Z)Lio/olvid/engine/networksend/databases/OutboxMessage;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    :try_start_0
    new-instance v7, Lio/olvid/engine/networksend/databases/OutboxMessage;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/networksend/databases/OutboxMessage;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;Ljava/lang/String;Lio/olvid/engine/datatypes/EncryptedBytes;Z)V

    .line 191
    invoke-virtual {v7}, Lio/olvid/engine/networksend/databases/OutboxMessage;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS outbox_message (uid BLOB PRIMARY KEY, uid_from_server BLOB, server TEXT NOT NULL, encrypted_content BLOB NOT NULL, proof_of_work_uid BLOB, proof_of_work_encoded_challenge BLOB, proof_of_work_encoded_solution BLOB, is_application_message BIT NOT NULL);"

    .line 276
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 288
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 275
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 288
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

.method public static get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networksend/databases/OutboxMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 244
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM outbox_message WHERE uid = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 245
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 246
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 247
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    new-instance v0, Lio/olvid/engine/networksend/databases/OutboxMessage;

    invoke-direct {v0, p0, p1}, Lio/olvid/engine/networksend/databases/OutboxMessage;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 252
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 253
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object v0

    :cond_3
    if-eqz p1, :cond_4

    .line 252
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 253
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 246
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_6

    .line 252
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    .line 244
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 253
    :try_start_8
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method public static getAll(Lio/olvid/engine/networksend/datatypes/SendManagerSession;)[Lio/olvid/engine/networksend/databases/OutboxMessage;
    .locals 5

    const/4 v0, 0x0

    .line 257
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM outbox_message;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 259
    :try_start_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 260
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    new-instance v4, Lio/olvid/engine/networksend/databases/OutboxMessage;

    invoke-direct {v4, p0, v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/networksend/databases/OutboxMessage;

    .line 263
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/networksend/databases/OutboxMessage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 264
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 265
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 258
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 264
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

    .line 257
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_4

    .line 265
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
    new-array p0, v0, [Lio/olvid/engine/networksend/databases/OutboxMessage;

    return-object p0
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIGRATING `outbox_message` DATABASE FROM VERSION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 3\n!!!! THIS MIGRATION IS DESTRUCTIVE !!!!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS `outbox_message`;"

    .line 295
    invoke-interface {p1, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS outbox_message (uid BLOB PRIMARY KEY, uid_from_server BLOB, server TEXT NOT NULL, encrypted_content BLOB NOT NULL, proof_of_work_uid BLOB, proof_of_work_encoded_challenge BLOB, proof_of_work_encoded_solution BLOB);"

    .line 296
    invoke-interface {p1, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 304
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    :cond_0
    const/4 p1, 0x3

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 294
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    .line 304
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
    const/4 v0, 0x7

    if-ge p1, v0, :cond_4

    if-lt p2, v0, :cond_4

    .line 308
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_3
    const-string p1, "ALTER TABLE outbox_message ADD COLUMN is_application_message BIT NOT NULL DEFAULT 0"

    .line 309
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p0, :cond_4

    .line 310
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 308
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_3

    .line 310
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
.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v1}, Lio/olvid/engine/networksend/databases/MessageHeader;->deleteAll(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)V

    .line 339
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v1}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->deleteAll(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)V

    .line 341
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM outbox_message WHERE uid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 342
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 343
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 341
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 344
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

.method public getAttachments()[Lio/olvid/engine/networksend/databases/OutboxAttachment;
    .locals 2

    .line 94
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v1}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getAll(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedContent()Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-object v0
.end method

.method public getHeaders()[Lio/olvid/engine/networksend/databases/MessageHeader;
    .locals 2

    .line 90
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v1}, Lio/olvid/engine/networksend/databases/MessageHeader;->getAll(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/networksend/databases/MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public getProofOfWorkEncodedChallenge()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 78
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getProofOfWorkEncodedSolution()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 82
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedSolution:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getProofOfWorkUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getUidFromServer()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO outbox_message VALUES(?,?,?,?,?, ?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 318
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 319
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 321
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->server:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x4

    .line 322
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x5

    .line 324
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkUid:Lio/olvid/engine/datatypes/UID;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x6

    .line 325
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v2

    :goto_2
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x7

    .line 326
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedSolution:Lio/olvid/engine/encoder/Encoded;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedSolution:Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v3

    :goto_3
    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/16 v1, 0x8

    .line 327
    iget-boolean v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->isApplicationMessageWithUserContent:Z

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 329
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 330
    iget-wide v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->commitHookBits:J

    const-wide/16 v3, 0x1

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->commitHookBits:J

    .line 331
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 332
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 317
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_5

    .line 332
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v2
.end method

.method public isAcknowledged()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isApplicationMessageWithUserContent()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->isApplicationMessageWithUserContent:Z

    return v0
.end method

.method public removeProofOfWork()V
    .locals 3

    .line 133
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE outbox_message SET proof_of_work_uid = NULL, proof_of_work_encoded_challenge = NULL, proof_of_work_encoded_solution = NULL WHERE uid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 137
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 138
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    const/4 v1, 0x0

    .line 139
    iput-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkUid:Lio/olvid/engine/datatypes/UID;

    .line 140
    iput-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;

    .line 141
    iput-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedSolution:Lio/olvid/engine/encoder/Encoded;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 142
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 133
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    .line 142
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

.method public setProofOfWork(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/encoder/Encoded;)V
    .locals 5

    .line 108
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, p2, :cond_3

    .line 109
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v3, "UPDATE outbox_message SET proof_of_work_uid = ?, proof_of_work_encoded_challenge = ?, proof_of_work_encoded_solution = ? WHERE uid = ?;"

    invoke-virtual {v0, v3}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 113
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v4

    :goto_0
    invoke-interface {v0, v2, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    if-nez p2, :cond_1

    move-object v2, v3

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v2

    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 115
    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 116
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 117
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 118
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkUid:Lio/olvid/engine/datatypes/UID;

    .line 119
    iput-object p2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;

    .line 120
    iput-object v3, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedSolution:Lio/olvid/engine/encoder/Encoded;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 121
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 109
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_2

    .line 121
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p2

    .line 123
    :cond_3
    iget-object p2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object p2, p2, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v0, "UPDATE outbox_message SET proof_of_work_uid = ? WHERE uid = ?;"

    invoke-virtual {p2, v0}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    .line 124
    :try_start_6
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 125
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 126
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 127
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkUid:Lio/olvid/engine/datatypes/UID;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p2, :cond_5

    .line 128
    :try_start_7
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :catchall_3
    move-exception p1

    .line 123
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p2, :cond_4

    .line 128
    :try_start_9
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v0
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    :cond_5
    :goto_4
    return-void
.end method

.method public setProofOfWorkEncodedSolution(Lio/olvid/engine/encoder/Encoded;)V
    .locals 3

    .line 175
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE outbox_message SET proof_of_work_encoded_solution = ? WHERE uid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 176
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 177
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 178
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 179
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->proofOfWorkEncodedSolution:Lio/olvid/engine/encoder/Encoded;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 180
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 175
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 180
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_2
    :goto_2
    return-void
.end method

.method public setUidFromServer(Lio/olvid/engine/datatypes/UID;J)V
    .locals 5

    .line 157
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    if-eq v0, p1, :cond_2

    .line 158
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE outbox_message SET uid_from_server = ?  WHERE uid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 161
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 162
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 163
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 164
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    .line 165
    iget-wide v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->commitHookBits:J

    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->commitHookBits:J

    .line 166
    iput-wide p2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->acknowledgedTimestampFromSever:J

    .line 167
    iget-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object p1, p1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 168
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 158
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 168
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public wasCommitted()V
    .locals 6

    .line 362
    iget-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->commitHookBits:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 363
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->newOutboxMessageListener:Lio/olvid/engine/networksend/databases/OutboxMessage$NewOutboxMessageListener;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->newOutboxMessageListener:Lio/olvid/engine/networksend/databases/OutboxMessage$NewOutboxMessageListener;

    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-interface {v0, v1}, Lio/olvid/engine/networksend/databases/OutboxMessage$NewOutboxMessageListener;->newMessageToSend(Lio/olvid/engine/datatypes/UID;)V

    .line 367
    :cond_0
    iget-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->commitHookBits:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 368
    invoke-virtual {p0}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getAttachments()[Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 369
    invoke-virtual {v5}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageIsAcknowledged()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 371
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 372
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->uid:Lio/olvid/engine/datatypes/UID;

    const-string v4, "uid"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-wide v4, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->acknowledgedTimestampFromSever:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "timestamp_from_server"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v4, "network_send_notification_message_uploaded"

    invoke-interface {v1, v4, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 378
    :cond_2
    iput-wide v2, p0, Lio/olvid/engine/networksend/databases/OutboxMessage;->commitHookBits:J

    return-void
.end method
