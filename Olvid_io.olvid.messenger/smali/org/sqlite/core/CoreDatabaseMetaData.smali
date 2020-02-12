.class public abstract Lorg/sqlite/core/CoreDatabaseMetaData;
.super Ljava/lang/Object;
.source "CoreDatabaseMetaData.java"

# interfaces
.implements Ljava/sql/DatabaseMetaData;


# static fields
.field protected static final PK_NAMED_PATTERN:Ljava/util/regex/Pattern;

.field protected static final PK_UNNAMED_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected conn:Lorg/sqlite/SQLiteConnection;

.field protected getAttributes:Ljava/sql/PreparedStatement;

.field protected getBestRowIdentifier:Ljava/sql/PreparedStatement;

.field protected getCatalogs:Ljava/sql/PreparedStatement;

.field protected getColumnPrivileges:Ljava/sql/PreparedStatement;

.field protected getColumnsTblName:Ljava/sql/PreparedStatement;

.field protected getGeneratedKeys:Ljava/sql/PreparedStatement;

.field protected getIndexInfo:Ljava/sql/PreparedStatement;

.field protected getProcedureColumns:Ljava/sql/PreparedStatement;

.field protected getProcedures:Ljava/sql/PreparedStatement;

.field protected getSchemas:Ljava/sql/PreparedStatement;

.field protected getSuperTables:Ljava/sql/PreparedStatement;

.field protected getSuperTypes:Ljava/sql/PreparedStatement;

.field protected getTablePrivileges:Ljava/sql/PreparedStatement;

.field protected getTableTypes:Ljava/sql/PreparedStatement;

.field protected getTables:Ljava/sql/PreparedStatement;

.field protected getTypeInfo:Ljava/sql/PreparedStatement;

.field protected getUDTs:Ljava/sql/PreparedStatement;

.field protected getVersionColumns:Ljava/sql/PreparedStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x22

    const-string v1, ".*\\sPRIMARY\\s+KEY\\s+\\((.*?,+.*?)\\).*"

    .line 193
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/sqlite/core/CoreDatabaseMetaData;->PK_UNNAMED_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, ".*\\sCONSTRAINT\\s+(.*?)\\s+PRIMARY\\s+KEY\\s+\\((.*?)\\).*"

    .line 200
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sqlite/core/CoreDatabaseMetaData;->PK_NAMED_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTables:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnsTblName:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getIndexInfo:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    .line 44
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;

    .line 51
    iput-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    return-void
.end method

.method protected static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "\'%s\'"

    .line 163
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "connection closed"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 70
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 74
    :try_start_1
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTables:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTables:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 77
    :cond_1
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 80
    :cond_2
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_3

    .line 81
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 83
    :cond_3
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_4

    .line 84
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 86
    :cond_4
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_5

    .line 87
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 89
    :cond_5
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_6

    .line 90
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 92
    :cond_6
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnsTblName:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_7

    .line 93
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnsTblName:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 95
    :cond_7
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_8

    .line 96
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 98
    :cond_8
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_9

    .line 99
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 101
    :cond_9
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_a

    .line 102
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 104
    :cond_a
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getIndexInfo:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_b

    .line 105
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getIndexInfo:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 107
    :cond_b
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_c

    .line 108
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 110
    :cond_c
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_d

    .line 111
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 113
    :cond_d
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_e

    .line 114
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 116
    :cond_e
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_f

    .line 117
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 119
    :cond_f
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_10

    .line 120
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 122
    :cond_10
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_11

    .line 123
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 125
    :cond_11
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_12

    .line 126
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 129
    :cond_12
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTables:Ljava/sql/PreparedStatement;

    .line 130
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    .line 131
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    .line 132
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    .line 133
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    .line 134
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    .line 135
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnsTblName:Ljava/sql/PreparedStatement;

    .line 136
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    .line 137
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    .line 138
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    .line 139
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getIndexInfo:Ljava/sql/PreparedStatement;

    .line 140
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    .line 141
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    .line 142
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    .line 143
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    .line 144
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    .line 145
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    .line 146
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 149
    :try_start_3
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 150
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 179
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    .line 180
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lorg/sqlite/core/CoreDatabaseMetaData;->close()V

    return-void
.end method

.method public abstract getGeneratedKeys()Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
