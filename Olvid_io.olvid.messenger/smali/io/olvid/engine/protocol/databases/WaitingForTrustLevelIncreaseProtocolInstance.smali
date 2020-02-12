.class public Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;
.super Ljava/lang/Object;
.source "WaitingForTrustLevelIncreaseProtocolInstance.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final CONTACT_IDENTITY:Ljava/lang/String; = "contact_identity"

.field static final MESSAGE_ID:Ljava/lang/String; = "message_id"

.field static final OWNED_IDENTITY:Ljava/lang/String; = "owned_identity"

.field static final PROTOCOL_ID:Ljava/lang/String; = "protocol_id"

.field static final PROTOCOL_UID:Ljava/lang/String; = "protocol_uid"

.field static final TABLE_NAME:Ljava/lang/String; = "waiting_for_trust_level_increase_protocol_instance"

.field static final TARGET_TRUST_LEVEL:Ljava/lang/String; = "target_trust_level"


# instance fields
.field private contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private messageId:I

.field private ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private protocolId:I

.field private final protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

.field private protocolUid:Lio/olvid/engine/datatypes/UID;

.field private targetTrustLevel:Lio/olvid/engine/datatypes/TrustLevel;


# direct methods
.method private constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    .line 145
    iput-object p2, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolUid:Lio/olvid/engine/datatypes/UID;

    .line 146
    iput-object p3, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 147
    iput-object p4, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 148
    iput p5, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolId:I

    .line 149
    iput p6, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->messageId:I

    .line 150
    iput-object p7, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->targetTrustLevel:Lio/olvid/engine/datatypes/TrustLevel;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    .line 156
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "protocol_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolUid:Lio/olvid/engine/datatypes/UID;

    :try_start_0
    const-string p1, "owned_identity"

    .line 158
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    const-string p1, "contact_identity"

    .line 159
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->contactIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "protocol_id"

    .line 163
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolId:I

    const-string p1, "message_id"

    .line 164
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->messageId:I

    const-string p1, "target_trust_level"

    .line 165
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/TrustLevel;->of(Ljava/lang/String;)Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->targetTrustLevel:Lio/olvid/engine/datatypes/TrustLevel;

    return-void

    .line 161
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;
    .locals 10

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    :try_start_0
    new-instance v0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)V

    .line 135
    invoke-virtual {v0}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 138
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

    .line 56
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS waiting_for_trust_level_increase_protocol_instance (protocol_uid BLOB NOT NULL, owned_identity BLOB NOT NULL, contact_identity BLOB NOT NULL, protocol_id INTEGER NOT NULL, message_id INTEGER NOT NULL, target_trust_level TEXT NOT NULL,  CONSTRAINT PK_waiting_for_trust_level_increase_protocol_instance PRIMARY KEY(protocol_uid, owned_identity, contact_identity),  FOREIGN KEY (protocol_uid, owned_identity) REFERENCES protocol_instance(uid, owned_identity) ON DELETE CASCADE);"

    .line 57
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 66
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 66
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

.method public static get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_0

    goto :goto_2

    .line 176
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM waiting_for_trust_level_increase_protocol_instance WHERE protocol_uid = ?  AND owned_identity = ?  AND contact_identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 180
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 181
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x3

    .line 182
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 183
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 184
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 185
    new-instance p2, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 189
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 190
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 189
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 190
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 183
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_6

    .line 189
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
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p0

    .line 176
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 190
    :try_start_b
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p2

    :try_start_c
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    :cond_8
    :goto_2
    return-object v0
.end method

.method public static getAll(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;)[Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;
    .locals 5

    const/4 v0, 0x0

    .line 220
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM waiting_for_trust_level_increase_protocol_instance;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 222
    :try_start_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 223
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    new-instance v4, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    invoke-direct {v4, p0, v2}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 226
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 227
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 228
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 221
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 227
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

    .line 220
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_4

    .line 228
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
    new-array p0, v0, [Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    return-object p0
.end method

.method public static getAllWithTargetFulfilled(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/TrustLevel;)[Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto :goto_3

    .line 199
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM waiting_for_trust_level_increase_protocol_instance WHERE owned_identity = ?  AND contact_identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 202
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 203
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 204
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 205
    :try_start_2
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 206
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    new-instance v2, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V

    .line 208
    iget-object v3, v2, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->targetTrustLevel:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {p3, v3}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 209
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-array p0, v0, [Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 212
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    .line 213
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_3
    if-eqz v1, :cond_4

    .line 214
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    .line 204
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_5

    .line 213
    :try_start_6
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 199
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_6

    .line 214
    :try_start_9
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    new-array p0, v0, [Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    return-object p0

    :cond_7
    :goto_3
    new-array p0, v0, [Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    return-object p0
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xb

    if-ge p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    .line 71
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 72
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIGRATING `waiting_for_trust_level_increase_protocol_instance` DATABASE FROM VERSION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 11"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    const-string p1, "CREATE TABLE IF NOT EXISTS `waiting_for_trust_level_increase_protocol_instance` (protocol_uid BLOB NOT NULL, owned_identity BLOB NOT NULL, contact_identity BLOB NOT NULL, protocol_id INTEGER NOT NULL, message_id INTEGER NOT NULL, target_trust_level TEXT NOT NULL,  CONSTRAINT PK_waiting_for_trust_level_increase_protocol_instance PRIMARY KEY(protocol_uid, owned_identity, contact_identity),  FOREIGN KEY (protocol_uid, owned_identity) REFERENCES protocol_instance(uid, owned_identity) ON DELETE CASCADE);"

    .line 73
    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string p1, "DELETE FROM waiting_for_trust_level_increase_protocol_instance WHERE protocol_id = 5;"

    .line 82
    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    :cond_0
    const/16 p1, 0xb

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 71
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    .line 83
    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    :goto_1
    const/16 v0, 0xc

    if-ge p1, v0, :cond_4

    if-lt p2, v0, :cond_4

    .line 87
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_3
    const-string p1, "DELETE FROM waiting_for_trust_level_increase_protocol_instance AS p  WHERE NOT EXISTS ( SELECT 1 FROM protocol_instance  WHERE uid = p.protocol_uid AND owned_identity = p.owned_identity )"

    .line 88
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p0, :cond_4

    .line 94
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 87
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_3

    .line 94
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

    .line 114
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM waiting_for_trust_level_increase_protocol_instance WHERE protocol_uid = ?  AND owned_identity = ?  AND contact_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 118
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 119
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 120
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 121
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 114
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 122
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

.method public getContactIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getGenericProtocolMessageToSendWhenTrustLevelIncreased()Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;
    .locals 8

    .line 234
    new-instance v7, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;

    iget-object v0, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    iget v2, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolId:I

    iget-object v3, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolUid:Lio/olvid/engine/datatypes/UID;

    iget v4, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->messageId:I

    const/4 v0, 0x1

    new-array v5, v0, [Lio/olvid/engine/encoder/Encoded;

    iget-object v0, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 238
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;I[Lio/olvid/engine/encoder/Encoded;Z)V

    return-object v7
.end method

.method public getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getTargetTrustLevel()Lio/olvid/engine/datatypes/TrustLevel;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->targetTrustLevel:Lio/olvid/engine/datatypes/TrustLevel;

    return-object v0
.end method

.method public insert()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO waiting_for_trust_level_increase_protocol_instance VALUES (?,?,?,?,?, ?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 102
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 103
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 104
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 105
    iget v2, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->protocolId:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x5

    .line 106
    iget v2, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->messageId:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x6

    .line 107
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->targetTrustLevel:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/TrustLevel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 108
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 101
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 109
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

.method public wasCommitted()V
    .locals 0

    return-void
.end method
