.class public Lio/olvid/engine/protocol/databases/ProtocolInstance;
.super Ljava/lang/Object;
.source "ProtocolInstance.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final CURRENT_STATE_ID:Ljava/lang/String; = "current_state_id"

.field static final ENCODED_CURRENT_STATE:Ljava/lang/String; = "encoded_current_state"

.field static final OWNED_IDENTITY:Ljava/lang/String; = "owned_identity"

.field static final PROTOCOL_ID:Ljava/lang/String; = "protocol_id"

.field static final TABLE_NAME:Ljava/lang/String; = "protocol_instance"

.field static final UID_:Ljava/lang/String; = "uid"


# instance fields
.field private currentStateId:I

.field private encodedCurrentState:Lio/olvid/engine/encoder/Encoded;

.field private ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private protocolId:I

.field private final protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

.field private uid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method private constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/encoder/Encoded;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    .line 113
    iput-object p2, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->uid:Lio/olvid/engine/datatypes/UID;

    .line 114
    iput-object p3, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 115
    iput p4, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->protocolId:I

    .line 116
    iput p5, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->currentStateId:I

    .line 117
    iput-object p6, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->encodedCurrentState:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    .line 123
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->uid:Lio/olvid/engine/datatypes/UID;

    :try_start_0
    const-string p1, "owned_identity"

    .line 125
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "protocol_id"

    .line 129
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->protocolId:I

    const-string p1, "current_state_id"

    .line 130
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->currentStateId:I

    const-string p1, "encoded_current_state"

    .line 131
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->encodedCurrentState:Lio/olvid/engine/encoder/Encoded;

    goto :goto_0

    .line 135
    :cond_0
    new-instance p2, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p2, p1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    iput-object p2, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->encodedCurrentState:Lio/olvid/engine/encoder/Encoded;

    :goto_0
    return-void

    .line 127
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;ILio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;)Lio/olvid/engine/protocol/databases/ProtocolInstance;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    :try_start_0
    new-instance v8, Lio/olvid/engine/protocol/databases/ProtocolInstance;

    iget v6, p4, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;->id:I

    .line 100
    invoke-virtual {p4}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v7

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lio/olvid/engine/protocol/databases/ProtocolInstance;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/encoder/Encoded;)V

    .line 102
    invoke-virtual {v8}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception p0

    .line 105
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

    .line 145
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS protocol_instance (uid BLOB NOT NULL, owned_identity BLOB NOT NULL, protocol_id INT NOT NULL, current_state_id INT NOT NULL, encoded_current_state BLOB, CONSTRAINT PK_protocol_instance PRIMARY KEY(uid, owned_identity));"

    .line 146
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 153
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 145
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 153
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

.method public static get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/ProtocolInstance;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    .line 198
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM protocol_instance WHERE uid = ? AND owned_identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 199
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 200
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 201
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 202
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 203
    new-instance p2, Lio/olvid/engine/protocol/databases/ProtocolInstance;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/protocol/databases/ProtocolInstance;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 207
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 208
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 207
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 208
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 201
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_6

    .line 207
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

    .line 198
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 208
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

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    .line 159
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MIGRATING protocol_instance DATABASE FROM VERSION "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 11"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    const-string p1, "DELETE FROM protocol_instance WHERE protocol_id = 5;"

    .line 160
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 161
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 158
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_0

    .line 161
    :try_start_2
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2

    :cond_1
    :goto_1
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

    .line 184
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM protocol_instance WHERE uid = ? AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 185
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 186
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 187
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 184
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 188
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

.method public getCurrentStateId()I
    .locals 1

    .line 52
    iget v0, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->currentStateId:I

    return v0
.end method

.method public getEncodedCurrentState()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->encodedCurrentState:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getProtocolId()I
    .locals 1

    .line 44
    iget v0, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->protocolId:I

    return v0
.end method

.method public getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    return-object v0
.end method

.method public getUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->uid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public insert()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO protocol_instance VALUES (?,?,?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 169
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 170
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 171
    iget v2, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->protocolId:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x4

    .line 172
    iget v2, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->currentStateId:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 173
    iget-object v1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->encodedCurrentState:Lio/olvid/engine/encoder/Encoded;

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->encodedCurrentState:Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d4

    .line 176
    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 178
    :goto_0
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 179
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 168
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 179
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

.method public updateCurrentState(Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE protocol_instance SET current_state_id = ?, encoded_current_state = ?  WHERE uid = ? AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 71
    :try_start_0
    iget v1, p1, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;->id:I

    iput v1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->currentStateId:I

    .line 72
    invoke-virtual {p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->encodedCurrentState:Lio/olvid/engine/encoder/Encoded;

    const/4 p1, 0x1

    .line 73
    iget v1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->currentStateId:I

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 74
    iget-object p1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->encodedCurrentState:Lio/olvid/engine/encoder/Encoded;

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->encodedCurrentState:Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d4

    .line 77
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_0
    const/4 p1, 0x3

    .line 79
    iget-object v1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x4

    .line 80
    iget-object v1, p0, Lio/olvid/engine/protocol/databases/ProtocolInstance;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 81
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 67
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 82
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public wasCommitted()V
    .locals 0

    return-void
.end method
