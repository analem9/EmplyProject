.class public Lio/olvid/engine/engine/databases/UserInterfaceDialog;
.super Ljava/lang/Object;
.source "UserInterfaceDialog.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final CREATION_TIMESTAMP:Ljava/lang/String; = "creation_timestamp"

.field static final ENCODED_DIALOG:Ljava/lang/String; = "encoded_dialog"

.field private static HOOK_BIT_DELETED:J = 0x2L

.field private static HOOK_BIT_SHOULD_SEND_NOTIFICATION:J = 0x1L

.field static final TABLE_NAME:Ljava/lang/String; = "user_interface_dialog"

.field static final UUID_:Ljava/lang/String; = "uuid"


# instance fields
.field private commitHookBits:J

.field private creationTimestamp:J

.field private encodedDialog:Lio/olvid/engine/encoder/Encoded;

.field private final engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

.field private uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/engine/datatypes/EngineSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 193
    iput-wide v0, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->commitHookBits:J

    .line 95
    iput-object p1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    const-string p1, "uuid"

    .line 97
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->uuid:Ljava/util/UUID;

    .line 98
    new-instance p1, Lio/olvid/engine/encoder/Encoded;

    const-string v0, "encoded_dialog"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->encodedDialog:Lio/olvid/engine/encoder/Encoded;

    const-string p1, "creation_timestamp"

    .line 99
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->creationTimestamp:J

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/engine/datatypes/EngineSession;Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 193
    iput-wide v0, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->commitHookBits:J

    .line 87
    iput-object p1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    .line 89
    iput-object p2, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->uuid:Ljava/util/UUID;

    .line 90
    iput-object p3, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->encodedDialog:Lio/olvid/engine/encoder/Encoded;

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->creationTimestamp:J

    return-void
.end method

.method public static createOrReplace(Lio/olvid/engine/engine/datatypes/EngineSession;Lio/olvid/engine/engine/types/ObvDialog;)Lio/olvid/engine/engine/databases/UserInterfaceDialog;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {p0, v1}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->get(Lio/olvid/engine/engine/datatypes/EngineSession;Ljava/util/UUID;)Lio/olvid/engine/engine/databases/UserInterfaceDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    iget-object p0, p0, Lio/olvid/engine/engine/datatypes/EngineSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, p0}, Lio/olvid/engine/engine/types/ObvDialog;->encode(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->update(Lio/olvid/engine/encoder/Encoded;)V

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Lio/olvid/engine/engine/databases/UserInterfaceDialog;

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/engine/datatypes/EngineSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, v3}, Lio/olvid/engine/engine/types/ObvDialog;->encode(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;-><init>(Lio/olvid/engine/engine/datatypes/EngineSession;Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;)V

    .line 77
    invoke-virtual {v1}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v0
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS user_interface_dialog (uuid VARCHAR PRIMARY KEY, encoded_dialog BLOB NOT NULL, creation_timestamp BIGINT NOT NULL);"

    .line 108
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 107
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 112
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

.method public static get(Lio/olvid/engine/engine/datatypes/EngineSession;Ljava/util/UUID;)Lio/olvid/engine/engine/databases/UserInterfaceDialog;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 159
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM user_interface_dialog WHERE uuid = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 160
    :try_start_1
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 161
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 162
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    new-instance v2, Lio/olvid/engine/engine/databases/UserInterfaceDialog;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;-><init>(Lio/olvid/engine/engine/datatypes/EngineSession;Ljava/sql/ResultSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 167
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 168
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object v2

    :cond_3
    if-eqz p1, :cond_4

    .line 167
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 168
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 161
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_6

    .line 167
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

    .line 159
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 168
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
    return-object v0
.end method

.method public static getAll(Lio/olvid/engine/engine/datatypes/EngineSession;)[Lio/olvid/engine/engine/databases/UserInterfaceDialog;
    .locals 5

    const/4 v0, 0x0

    .line 174
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM user_interface_dialog;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 176
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    new-instance v4, Lio/olvid/engine/engine/databases/UserInterfaceDialog;

    invoke-direct {v4, p0, v2}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;-><init>(Lio/olvid/engine/engine/datatypes/EngineSession;Ljava/sql/ResultSet;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/engine/databases/UserInterfaceDialog;

    .line 180
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/engine/databases/UserInterfaceDialog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 181
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 182
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 175
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 181
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

    .line 174
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_4

    .line 182
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
    new-array p0, v0, [Lio/olvid/engine/engine/databases/UserInterfaceDialog;

    return-object p0
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "DELETE FROM user_interface_dialog"

    const/16 v1, 0x8

    if-ge p1, v1, :cond_2

    if-lt p2, v1, :cond_2

    .line 117
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    .line 118
    :try_start_0
    invoke-interface {p1, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    :cond_0
    const/16 p1, 0x8

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 117
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    .line 119
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
    const/16 v1, 0xb

    if-ge p1, v1, :cond_4

    if-lt p2, v1, :cond_4

    .line 123
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    .line 124
    :try_start_3
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p0, :cond_4

    .line 125
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 123
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_3

    .line 125
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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v0, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM user_interface_dialog WHERE uuid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 145
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 146
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 147
    iget-wide v1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->HOOK_BIT_DELETED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->commitHookBits:J

    .line 148
    iget-object v1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v1, v1, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 144
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 149
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

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v0, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO user_interface_dialog VALUES (?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 133
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 134
    iget-object v2, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->encodedDialog:Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 135
    iget-wide v2, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->creationTimestamp:J

    invoke-interface {v0, v1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 136
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 137
    iget-wide v1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->HOOK_BIT_SHOULD_SEND_NOTIFICATION:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->commitHookBits:J

    .line 138
    iget-object v1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v1, v1, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 132
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 139
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

.method public resend()V
    .locals 1

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->sendNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendNotification()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v0, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->userInterfaceDialogListener:Lio/olvid/engine/engine/datatypes/UserInterfaceDialogListener;

    iget-object v1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->encodedDialog:Lio/olvid/engine/encoder/Encoded;

    iget-object v3, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v3, v3, Lio/olvid/engine/engine/datatypes/EngineSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-static {v2, v3}, Lio/olvid/engine/engine/types/ObvDialog;->of(Lio/olvid/engine/encoder/Encoded;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/engine/types/ObvDialog;

    move-result-object v2

    iget-wide v3, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->creationTimestamp:J

    invoke-interface {v0, v1, v2, v3, v4}, Lio/olvid/engine/engine/datatypes/UserInterfaceDialogListener;->sendUserInterfaceDialogNotification(Ljava/util/UUID;Lio/olvid/engine/engine/types/ObvDialog;J)V

    return-void
.end method

.method public update(Lio/olvid/engine/encoder/Encoded;)V
    .locals 5

    .line 43
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v0, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE user_interface_dialog SET encoded_dialog = ?, creation_timestamp = ?  WHERE uuid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 48
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v3, 0x2

    .line 49
    invoke-interface {v0, v3, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v3, 0x3

    .line 50
    iget-object v4, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 51
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 52
    iput-object p1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->encodedDialog:Lio/olvid/engine/encoder/Encoded;

    .line 53
    iput-wide v1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->creationTimestamp:J

    .line 54
    iget-wide v1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->HOOK_BIT_SHOULD_SEND_NOTIFICATION:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->commitHookBits:J

    .line 55
    iget-object p1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object p1, p1, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 56
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 43
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    .line 56
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
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public wasCommitted()V
    .locals 6

    .line 199
    iget-wide v0, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->HOOK_BIT_SHOULD_SEND_NOTIFICATION:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 200
    iget-object v0, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v0, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->userInterfaceDialogListener:Lio/olvid/engine/engine/datatypes/UserInterfaceDialogListener;

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->sendNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    :cond_0
    :goto_0
    iget-wide v0, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->HOOK_BIT_DELETED:J

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 209
    iget-object v0, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v0, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->userInterfaceDialogListener:Lio/olvid/engine/engine/datatypes/UserInterfaceDialogListener;

    if-eqz v0, :cond_1

    .line 211
    :try_start_1
    iget-object v0, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v0, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->userInterfaceDialogListener:Lio/olvid/engine/engine/datatypes/UserInterfaceDialogListener;

    iget-object v1, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->uuid:Ljava/util/UUID;

    invoke-interface {v0, v1}, Lio/olvid/engine/engine/datatypes/UserInterfaceDialogListener;->sendUserInterfaceDialogDeletionNotification(Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    :cond_1
    :goto_1
    iput-wide v2, p0, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->commitHookBits:J

    return-void
.end method
