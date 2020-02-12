.class public Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;
.super Ljava/lang/Object;
.source "LinkBetweenProtocolInstances.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final CHILD_PROTOCOL_INSTANCE_UID:Ljava/lang/String; = "child_protocol_instance_uid"

.field static final EXPECTED_CHILD_STATE_ID:Ljava/lang/String; = "expected_child_state_id"

.field static final MESSAGE_TO_SEND_ID:Ljava/lang/String; = "message_to_send_id"

.field static final OWNED_IDENTITY:Ljava/lang/String; = "owned_identity"

.field static final PARENT_PROTOCOL_ID:Ljava/lang/String; = "parent_protocol_id"

.field static final PARENT_PROTOCOL_INSTANCE_UID:Ljava/lang/String; = "parent_protocol_instance_uid"

.field static final TABLE_NAME:Ljava/lang/String; = "link_between_protocol_instances"


# instance fields
.field private childProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

.field private expectedChildStateId:I

.field private messageToSendId:I

.field private ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private parentProtocolId:I

.field private parentProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

.field private final protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;


# direct methods
.method private constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;ILio/olvid/engine/datatypes/UID;II)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    .line 71
    iput-object p2, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->childProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    .line 72
    iput-object p3, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 73
    iput p4, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->expectedChildStateId:I

    .line 74
    iput-object p5, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->parentProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    .line 75
    iput p6, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->parentProtocolId:I

    .line 77
    iput p7, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->messageToSendId:I

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    .line 83
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "child_protocol_instance_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->childProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    :try_start_0
    const-string p1, "owned_identity"

    .line 85
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "expected_child_state_id"

    .line 89
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->expectedChildStateId:I

    .line 90
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "parent_protocol_instance_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->parentProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    const-string p1, "parent_protocol_id"

    .line 91
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->parentProtocolId:I

    const-string p1, "message_to_send_id"

    .line 92
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->messageToSendId:I

    return-void

    .line 87
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;ILio/olvid/engine/datatypes/UID;II)Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;
    .locals 10

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    :try_start_0
    new-instance v0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;ILio/olvid/engine/datatypes/UID;II)V

    .line 59
    invoke-virtual {v0}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 62
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

    .line 100
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS link_between_protocol_instances (child_protocol_instance_uid BLOB NOT NULL, owned_identity BLOB NOT NULL, expected_child_state_id INT NOT NULL, parent_protocol_instance_uid BLOB NOT NULL, parent_protocol_id INT NOT NULL, message_to_send_id INT NOT NULL, CONSTRAINT PK_link_between_protocol_instances PRIMARY KEY (child_protocol_instance_uid, owned_identity, expected_child_state_id), FOREIGN KEY (parent_protocol_instance_uid, owned_identity) REFERENCES protocol_instance(uid, owned_identity) ON DELETE CASCADE);"

    .line 101
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 110
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 100
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 110
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

.method public static get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    .line 164
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM link_between_protocol_instances WHERE child_protocol_instance_uid = ? AND owned_identity = ? AND expected_child_state_id = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 165
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 166
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x3

    .line 167
    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 168
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 169
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 170
    new-instance p2, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 174
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 175
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 174
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 175
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 168
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_6

    .line 174
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

    .line 164
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 175
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

.method public static getAllChildLinks(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM link_between_protocol_instances WHERE parent_protocol_instance_uid = ? AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 196
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 197
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 198
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 199
    :try_start_1
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 200
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    new-instance v1, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;

    invoke-direct {v1, p0, p1}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;

    .line 203
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 204
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v0, :cond_2

    .line 205
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 198
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_3

    .line 204
    :try_start_4
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 195
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_4

    .line 205
    :try_start_7
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
.end method

.method public static getAllParentLinks(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM link_between_protocol_instances WHERE child_protocol_instance_uid = ? AND owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 182
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 183
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 184
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 185
    :try_start_1
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 186
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;

    invoke-direct {v1, p0, p1}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;

    .line 189
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 190
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v0, :cond_2

    .line 191
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 184
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_3

    .line 190
    :try_start_4
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 181
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_4

    .line 191
    :try_start_7
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
.end method

.method public static getGenericProtocolMessageToSendWhenChildProtocolInstanceReachesAState(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;)Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;
    .locals 9

    .line 211
    iget v0, p3, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;->id:I

    invoke-static {p0, p1, p2, v0}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "Found a LinkBetweenProtocolInstances"

    .line 215
    invoke-static {v1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 216
    new-instance v1, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;

    invoke-direct {v1, p1, p3}, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;)V

    invoke-virtual {v1}, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->toEncodedInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v7

    .line 217
    iget-object p1, p2, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->parentProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    iget-object p3, p2, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {p0, p1, p3}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/ProtocolInstance;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 222
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->delete()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :catch_0
    new-instance p1, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p3

    invoke-static {p3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v3

    .line 225
    invoke-virtual {p0}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->getProtocolId()I

    move-result v4

    .line 226
    invoke-virtual {p0}, Lio/olvid/engine/protocol/databases/ProtocolInstance;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v5

    iget v6, p2, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->messageToSendId:I

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;I[Lio/olvid/engine/encoder/Encoded;Z)V

    return-object p1
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xb

    if-ge p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    .line 115
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    :try_start_0
    const-string v1, "DELETE FROM link_between_protocol_instances WHERE parent_protocol_id = 5;"

    .line 116
    invoke-interface {p1, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 117
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    :cond_0
    const/16 p1, 0xb

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 115
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    .line 117
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
    const/16 v0, 0xc

    if-ge p1, v0, :cond_4

    if-lt p2, v0, :cond_4

    .line 121
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_3
    const-string p1, "DELETE FROM link_between_protocol_instances AS p  WHERE NOT EXISTS ( SELECT 1 FROM protocol_instance  WHERE uid = p.parent_protocol_instance_uid AND owned_identity = p.owned_identity )"

    .line 122
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p0, :cond_4

    .line 128
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 121
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_3

    .line 128
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

    .line 148
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM link_between_protocol_instances WHERE child_protocol_instance_uid = ? AND owned_identity = ? AND expected_child_state_id = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 149
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->childProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 150
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 151
    iget v2, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->expectedChildStateId:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 152
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 148
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 153
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

.method public getChildProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->childProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getParentProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->parentProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public insert()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->protocolManagerSession:Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO link_between_protocol_instances VALUES (?,?,?,?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 136
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->childProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 137
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 138
    iget v2, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->expectedChildStateId:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x4

    .line 139
    iget-object v2, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->parentProtocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x5

    .line 140
    iget v2, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->parentProtocolId:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x6

    .line 141
    iget v2, p0, Lio/olvid/engine/protocol/databases/LinkBetweenProtocolInstances;->messageToSendId:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 142
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 135
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 143
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
