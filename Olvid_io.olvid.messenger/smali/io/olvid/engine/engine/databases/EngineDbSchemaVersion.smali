.class public Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;
.super Ljava/lang/Object;
.source "EngineDbSchemaVersion.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final TABLE_NAME:Ljava/lang/String; = "engine_db_schema_version"

.field static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

.field private version:I


# direct methods
.method private constructor <init>(Lio/olvid/engine/engine/datatypes/EngineSession;Ljava/sql/ResultSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    const-string p1, "version"

    .line 30
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;->version:I

    return-void
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "SELECT name FROM sqlite_master WHERE type=? AND name = ?"

    .line 34
    invoke-virtual {p0, v0}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    :try_start_0
    const-string v1, "table"

    const/4 v2, 0x1

    .line 35
    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v3, "engine_db_schema_version"

    .line 36
    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 37
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 38
    :try_start_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-nez v3, :cond_3

    .line 40
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    const-string v4, "CREATE TABLE engine_db_schema_version (version INT NOT NULL);"

    .line 41
    invoke-interface {v3, v4}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v3, :cond_0

    .line 42
    :try_start_3
    invoke-interface {v3}, Ljava/sql/Statement;->close()V

    :cond_0
    const-string v3, "INSERT INTO engine_db_schema_version VALUES (?)"

    .line 43
    invoke-virtual {p0, v3}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const/16 v3, 0xd

    .line 44
    :try_start_4
    invoke-interface {p0, v2, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 45
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_3

    .line 46
    :try_start_5
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 43
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz p0, :cond_1

    .line 46
    :try_start_7
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_8
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_3
    move-exception p0

    .line 40
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v3, :cond_2

    .line 42
    :try_start_a
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v3

    :try_start_b
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 48
    :try_start_c
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :cond_4
    if-eqz v0, :cond_5

    .line 49
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-void

    :catchall_6
    move-exception p0

    .line 37
    :try_start_d
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception v2

    if-eqz v1, :cond_6

    .line 48
    :try_start_e
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_3

    :catchall_8
    move-exception v1

    :try_start_f
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    move-exception p0

    .line 34
    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    move-exception v1

    if-eqz v0, :cond_7

    .line 49
    :try_start_11
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_4

    :catchall_b
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v1
.end method

.method public static get(Lio/olvid/engine/engine/datatypes/EngineSession;)Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;
    .locals 4

    const/4 v0, 0x0

    .line 53
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM engine_db_schema_version;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 55
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    new-instance v3, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;

    invoke-direct {v3, p0, v2}, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;-><init>(Lio/olvid/engine/engine/datatypes/EngineSession;Ljava/sql/ResultSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 60
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_0
    if-eqz v1, :cond_1

    .line 61
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    return-object v3

    :cond_2
    if-eqz v2, :cond_3

    .line 60
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_3
    if-eqz v1, :cond_4

    .line 61
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    return-object v0

    :catchall_0
    move-exception p0

    .line 54
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_5

    .line 60
    :try_start_8
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_9
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p0

    .line 53
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_6

    .line 61
    :try_start_b
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v1

    :try_start_c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v2
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "Deletion in table engine_db_schema_version Is Prohibited"

    .line 78
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/sql/SQLException;

    invoke-direct {v0}, Ljava/sql/SQLException;-><init>()V

    throw v0
.end method

.method public getVersion()I
    .locals 1

    .line 25
    iget v0, p0, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;->version:I

    return v0
.end method

.method public insert()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "Insertion in table engine_db_schema_version Is Prohibited"

    .line 84
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/sql/SQLException;

    invoke-direct {v0}, Ljava/sql/SQLException;-><init>()V

    throw v0
.end method

.method public update(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;->engineSession:Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v0, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE engine_db_schema_version SET version = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 69
    :try_start_0
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 70
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 71
    iput p1, p0, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;->version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
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

    if-eqz v0, :cond_1

    .line 72
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public wasCommitted()V
    .locals 0

    return-void
.end method
