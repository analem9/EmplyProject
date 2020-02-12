.class public Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;
.super Ljava/lang/Object;
.source "PendingDeleteFromServer.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer$PendingDeleteFromServerListener;
    }
.end annotation


# static fields
.field private static HOOK_BIT_INSERT:J = 0x1L

.field static final MESSAGE_UID:Ljava/lang/String; = "message_uid"

.field static final TABLE_NAME:Ljava/lang/String; = "pending_delete_from_server"


# instance fields
.field private commitHookBits:J

.field private final fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

.field private messageUid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->commitHookBits:J

    .line 47
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    .line 48
    iput-object p2, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->commitHookBits:J

    .line 52
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    .line 53
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "message_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method

.method public static create(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 37
    :cond_0
    :try_start_0
    new-instance v1, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;

    invoke-direct {v1, p0, p1}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)V

    .line 38
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 41
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

    .line 95
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS pending_delete_from_server (message_uid BLOB PRIMARY KEY);"

    .line 96
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 98
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 95
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 98
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

.method public static get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 62
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM pending_delete_from_server WHERE message_uid = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 63
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 64
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 65
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    new-instance v2, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;

    invoke-direct {v2, p0, p1}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 70
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 71
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object v2

    :cond_3
    if-eqz p1, :cond_4

    .line 70
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 71
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 64
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_6

    .line 70
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

    .line 62
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 71
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

    .line 72
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v0
.end method

.method public static getAll(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)[Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;
    .locals 5

    const/4 v0, 0x0

    .line 78
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM pending_delete_from_server;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 80
    :try_start_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 81
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    new-instance v4, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;

    invoke-direct {v4, p0, v2}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;

    .line 84
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 85
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 86
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 79
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 85
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

    .line 78
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_4

    .line 86
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
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    new-array p0, v0, [Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;

    return-object p0
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM pending_delete_from_server WHERE message_uid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 117
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 118
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 116
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 119
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

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO pending_delete_from_server VALUES(?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 107
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 108
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 109
    iget-wide v1, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->HOOK_BIT_INSERT:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->commitHookBits:J

    .line 110
    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 106
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 111
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
    .locals 5

    .line 134
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->HOOK_BIT_INSERT:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 135
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->pendingDeleteFromServerListener:Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer$PendingDeleteFromServerListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->pendingDeleteFromServerListener:Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer$PendingDeleteFromServerListener;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-interface {v0, v1}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer$PendingDeleteFromServerListener;->newPendingDeleteFromServer(Lio/olvid/engine/datatypes/UID;)V

    .line 139
    :cond_0
    iput-wide v2, p0, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->commitHookBits:J

    return-void
.end method
