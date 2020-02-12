.class public abstract Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;
.super Lorg/sqlite/core/CoreDatabaseMetaData;
.source "JDBC3DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;,
        Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;
    }
.end annotation


# static fields
.field protected static final PK_NAMED_PATTERN:Ljava/util/regex/Pattern;

.field protected static final PK_UNNAMED_PATTERN:Ljava/util/regex/Pattern;

.field private static final RULE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TYPE_FLOAT:Ljava/util/regex/Pattern;

.field protected static final TYPE_INTEGER:Ljava/util/regex/Pattern;

.field protected static final TYPE_VARCHAR:Ljava/util/regex/Pattern;

.field private static driverName:Ljava/lang/String;

.field private static driverVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 35
    :try_start_0
    const-class v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "sqlite-jdbc.properties"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 40
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "name"

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverName:Ljava/lang/String;

    const-string v2, "version"

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 52
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 37
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot load sqlite-jdbc.properties from jar"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    :try_start_3
    const-string v1, "SQLite JDBC"

    .line 45
    sput-object v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverName:Ljava/lang/String;

    const-string v1, "3.0.0-UNKNOWN"

    .line 46
    sput-object v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverVersion:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_1
    :cond_1
    :goto_1
    const-string v0, ".*(INT|BOOL).*"

    .line 1128
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->TYPE_INTEGER:Ljava/util/regex/Pattern;

    const-string v0, ".*(CHAR|CLOB|TEXT|BLOB).*"

    .line 1129
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->TYPE_VARCHAR:Ljava/util/regex/Pattern;

    const-string v0, ".*(REAL|FLOA|DOUB|DEC|NUM).*"

    .line 1130
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->TYPE_FLOAT:Ljava/util/regex/Pattern;

    .line 1415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->RULE_MAP:Ljava/util/Map;

    .line 1418
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->RULE_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NO ACTION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->RULE_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CASCADE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->RULE_MAP:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RESTRICT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->RULE_MAP:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SET NULL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->RULE_MAP:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SET DEFAULT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22

    const-string v1, ".*PRIMARY\\s+KEY\\s*\\((.*?)\\).*"

    .line 1966
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->PK_UNNAMED_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, ".*CONSTRAINT\\s*(.*?)\\s*PRIMARY\\s+KEY\\s*\\((.*?)\\).*"

    .line 1973
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->PK_NAMED_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :goto_2
    if-eqz v0, :cond_2

    .line 52
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 59
    :catch_2
    :cond_2
    throw v1
.end method

.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/sqlite/core/CoreDatabaseMetaData;-><init>(Lorg/sqlite/SQLiteConnection;)V

    return-void
.end method

.method static synthetic access$000(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;)Lorg/sqlite/SQLiteConnection;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->unquoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;)Lorg/sqlite/SQLiteConnection;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    return-object p0
.end method

.method static synthetic access$600(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;)Lorg/sqlite/SQLiteConnection;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    return-object p0
.end method

.method static synthetic access$700(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private appendDummyForeignKeyList(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    const-string v0, "select -1 as ks, \'\' as ptn, \'\' as fcn, \'\' as pcn, "

    .line 1551
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    .line 1552
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as ur, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " as dr, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \'\' as fkn, "

    .line 1554
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \'\' as pkn "

    .line 1555
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") limit 0;"

    .line 1556
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private unquoteIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    return-object p1

    .line 2254
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    const-string v0, "`"

    .line 2256
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const-string v0, "\""

    .line 2257
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "["

    .line 2258
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2261
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method


# virtual methods
.method public allProceduresAreCallable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public allTablesAreSelectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1952
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not yet implemented by SQLite JDBC driver"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dataDefinitionCausesTransactionCommit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dataDefinitionIgnoredInTransactions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public deletesAreDetected(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public doesMaxRowSizeIncludeBlobs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2244
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->close()V

    return-void
.end method

.method public getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1086
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    if-nez p1, :cond_0

    .line 1087
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string p2, "select null as TYPE_CAT, null as TYPE_SCHEM, null as TYPE_NAME, null as ATTR_NAME, null as DATA_TYPE, null as ATTR_TYPE_NAME, null as ATTR_SIZE, null as DECIMAL_DIGITS, null as NUM_PREC_RADIX, null as NULLABLE, null as REMARKS, null as ATTR_DEF, null as SQL_DATA_TYPE, null as SQL_DATETIME_SUB, null as CHAR_OCTET_LENGTH, null as ORDINAL_POSITION, null as IS_NULLABLE, null as SCOPE_CATALOG, null as SCOPE_SCHEMA, null as SCOPE_TABLE, null as SOURCE_DATA_TYPE limit 0;"

    invoke-virtual {p1, p2}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    .line 1096
    :cond_0
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1104
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    if-nez p1, :cond_0

    .line 1105
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string p2, "select null as SCOPE, null as COLUMN_NAME, null as DATA_TYPE, null as TYPE_NAME, null as COLUMN_SIZE, null as BUFFER_LENGTH, null as DECIMAL_DIGITS, null as PSEUDO_COLUMN limit 0;"

    invoke-virtual {p1, p2}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    .line 1110
    :cond_0
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getCatalogSeparator()Ljava/lang/String;
    .locals 1

    const-string v0, "."

    return-object v0
.end method

.method public getCatalogTerm()Ljava/lang/String;
    .locals 1

    const-string v0, "catalog"

    return-object v0
.end method

.method public getCatalogs()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    if-nez v0, :cond_0

    .line 1374
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string v1, "select null as TABLE_CAT limit 0;"

    invoke-virtual {v0, v1}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    .line 1377
    :cond_0
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1118
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    if-nez p1, :cond_0

    .line 1119
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string p2, "select null as TABLE_CAT, null as TABLE_SCHEM, null as TABLE_NAME, null as COLUMN_NAME, null as GRANTOR, null as GRANTEE, null as PRIVILEGE, null as IS_GRANTABLE limit 0;"

    invoke-virtual {p1, p2}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    .line 1124
    :cond_0
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const-string v3, "\')"

    const-string v4, "\'"

    .line 1185
    invoke-virtual/range {p0 .. p0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->checkOpen()V

    .line 1187
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "select null as TABLE_CAT, null as TABLE_SCHEM, tblname as TABLE_NAME, "

    .line 1188
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cn as COLUMN_NAME, ct as DATA_TYPE, tn as TYPE_NAME, 2000000000 as COLUMN_SIZE, "

    .line 1189
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "2000000000 as BUFFER_LENGTH, 10   as DECIMAL_DIGITS, 10   as NUM_PREC_RADIX, "

    .line 1190
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "colnullable as NULLABLE, null as REMARKS, colDefault as COLUMN_DEF, "

    .line 1191
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0    as SQL_DATA_TYPE, 0    as SQL_DATETIME_SUB, 2000000000 as CHAR_OCTET_LENGTH, "

    .line 1192
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ordpos as ORDINAL_POSITION, (case colnullable when 0 then \'NO\' when 1 then \'YES\' else \'\' end)"

    .line 1193
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    as IS_NULLABLE, null as SCOPE_CATLOG, null as SCOPE_SCHEMA, "

    .line 1194
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "null as SCOPE_TABLE, null as SOURCE_DATA_TYPE, "

    .line 1195
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(case colautoincrement when 0 then \'NO\' when 1 then \'YES\' else \'\' end) as IS_AUTOINCREMENT, "

    .line 1196
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'\' as IS_GENERATEDCOLUMN from ("

    .line 1197
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    const-string v0, "TABLE"

    const-string v7, "VIEW"

    .line 1204
    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 1205
    invoke-virtual {v1, v7, v8, v9, v0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v9, 0x0

    .line 1206
    :goto_0
    :try_start_1
    invoke-interface {v7}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_13

    const/4 v11, 0x3

    .line 1207
    invoke-interface {v7, v11}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1211
    iget-object v0, v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 1214
    :try_start_2
    iget-object v0, v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v13

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SELECT LIKE(\'%autoincrement%\', LOWER(sql)) FROM sqlite_master WHERE LOWER(name) = LOWER(\'"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    invoke-virtual {v1, v12}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\') AND TYPE IN (\'table\', \'view\')"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1215
    invoke-interface {v13, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1217
    :try_start_3
    invoke-interface {v14}, Ljava/sql/ResultSet;->next()Z

    .line 1218
    invoke-interface {v14, v10}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-ne v0, v10, :cond_0

    const/4 v15, 0x1

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    :goto_1
    if-eqz v14, :cond_1

    .line 1222
    :try_start_4
    invoke-interface {v14}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v7

    goto/16 :goto_13

    :catch_0
    move-exception v0

    move-object v14, v0

    .line 1224
    :try_start_5
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :goto_2
    if-eqz v13, :cond_2

    .line 1229
    :try_start_6
    invoke-interface {v13}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v13, v0

    .line 1231
    :try_start_7
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1236
    :cond_2
    :goto_3
    :try_start_8
    iget-object v0, v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 1240
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PRAGMA table_info(\'"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1241
    invoke-interface {v13, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v0, 0x0

    .line 1243
    :goto_4
    :try_start_a
    invoke-interface {v14}, Ljava/sql/ResultSet;->next()Z

    move-result v16

    if-eqz v16, :cond_c

    const/4 v6, 0x2

    .line 1244
    invoke-interface {v14, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1245
    invoke-interface {v14, v11}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v6, 0x4

    .line 1246
    invoke-interface {v14, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x5

    .line 1247
    invoke-interface {v14, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, "1"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v18, v7

    const/4 v7, 0x6

    move-object/from16 v19, v13

    .line 1248
    :try_start_b
    invoke-interface {v14, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v11, :cond_3

    const-string v13, "0"

    .line 1252
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_5

    :cond_3
    const/4 v11, 0x2

    :goto_5
    if-eqz v9, :cond_4

    const-string v9, " union all "

    .line 1256
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-nez v17, :cond_5

    const-string v9, "TEXT"

    goto :goto_6

    .line 1265
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    :goto_6
    if-eqz v10, :cond_6

    if-eqz v15, :cond_6

    const/4 v10, 0x1

    goto :goto_7

    :cond_6
    const/4 v10, 0x0

    .line 1274
    :goto_7
    sget-object v13, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->TYPE_INTEGER:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    const/16 v17, 0xc

    if-eqz v13, :cond_7

    const/4 v7, 0x4

    goto :goto_8

    .line 1277
    :cond_7
    sget-object v13, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->TYPE_VARCHAR:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_8
    const/16 v7, 0xc

    goto :goto_8

    .line 1280
    :cond_9
    sget-object v13, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->TYPE_FLOAT:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_8

    :goto_8
    const-string v13, "select "

    .line 1288
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    add-int/2addr v0, v13

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " as ordpos, "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " as colnullable,"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\' as ct, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' as tblname, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' as cn, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' as tn, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_a

    const/4 v6, 0x0

    goto :goto_9

    .line 1294
    :cond_a
    invoke-virtual {v1, v6}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_9
    invoke-static {v6}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " as colDefault,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " as colautoincrement"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_b

    const-string v6, " where upper(cn) like upper(\'"

    .line 1298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_b
    move-object/from16 v7, v18

    move-object/from16 v13, v19

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x3

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_c
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    if-eqz v14, :cond_d

    .line 1304
    :try_start_c
    invoke-interface {v14}, Ljava/sql/ResultSet;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_a

    :catch_2
    nop

    :cond_d
    :goto_a
    if-eqz v19, :cond_e

    .line 1309
    :try_start_d
    invoke-interface/range {v19 .. v19}, Ljava/sql/Statement;->close()V
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catch_3
    :cond_e
    move-object/from16 v7, v18

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    const/4 v14, 0x0

    :goto_b
    if-eqz v14, :cond_f

    .line 1304
    :try_start_e
    invoke-interface {v14}, Ljava/sql/ResultSet;->close()V
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_c

    :catch_4
    nop

    :cond_f
    :goto_c
    if-eqz v19, :cond_10

    .line 1309
    :try_start_f
    invoke-interface/range {v19 .. v19}, Ljava/sql/Statement;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1312
    :catch_5
    :cond_10
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_4
    move-exception v0

    move-object/from16 v18, v7

    move-object v2, v0

    move-object/from16 v16, v14

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object/from16 v18, v7

    move-object v2, v0

    const/16 v16, 0x0

    :goto_d
    if-eqz v16, :cond_11

    .line 1222
    :try_start_11
    invoke-interface/range {v16 .. v16}, Ljava/sql/ResultSet;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    goto :goto_12

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 1224
    :try_start_12
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :cond_11
    :goto_e
    if-eqz v13, :cond_12

    .line 1229
    :try_start_13
    invoke-interface {v13}, Ljava/sql/Statement;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_f

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 1231
    :try_start_14
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1234
    :cond_12
    :goto_f
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :cond_13
    move-object/from16 v18, v7

    if-eqz v18, :cond_14

    .line 1317
    :try_start_15
    invoke-interface/range {v18 .. v18}, Ljava/sql/ResultSet;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 1319
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_10
    if-eqz v9, :cond_15

    const-string v0, ") order by TABLE_SCHEM, TABLE_NAME, ORDINAL_POSITION;"

    .line 1325
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_15
    const-string v0, "select null as ordpos, null as colnullable, null as ct, null as tblname, null as cn, null as tn, null as colDefault, null as colautoincrement) limit 0;"

    .line 1328
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    :goto_11
    iget-object v0, v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 1332
    check-cast v0, Lorg/sqlite/core/CoreStatement;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    :catchall_7
    move-exception v0

    move-object/from16 v18, v7

    :goto_12
    move-object v2, v0

    goto :goto_13

    :catchall_8
    move-exception v0

    move-object v2, v0

    const/16 v18, 0x0

    :goto_13
    if-eqz v18, :cond_16

    .line 1317
    :try_start_16
    invoke-interface/range {v18 .. v18}, Ljava/sql/ResultSet;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    goto :goto_14

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 1319
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1322
    :cond_16
    :goto_14
    throw v2
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    return-object v0
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1340
    invoke-virtual {p0, p4, p5, p6}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p6, :cond_1

    .line 1344
    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    .line 1347
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select "

    .line 1348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as PKTABLE_CAT, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    invoke-static {p2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as PKTABLE_SCHEM, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as PKTABLE_NAME, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'\' as PKCOLUMN_NAME, "

    .line 1350
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as FKTABLE_CAT, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    invoke-static {p5}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as FKTABLE_SCHEM, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as FKTABLE_NAME, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'\' as FKCOLUMN_NAME, -1 as KEY_SEQ, 3 as UPDATE_RULE, 3 as DELETE_RULE, \'\' as FK_NAME, \'\' as PK_NAME, "

    .line 1352
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    .line 1353
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as DEFERRABILITY limit 0 "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Lorg/sqlite/core/CoreStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getDatabaseMajorVersion()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->libversion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDatabaseMinorVersion()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->libversion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDatabaseProductName()Ljava/lang/String;
    .locals 1

    const-string v0, "SQLite"

    return-object v0
.end method

.method public getDatabaseProductVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->libversion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTransactionIsolation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getDriverMajorVersion()I
    .locals 2

    .line 91
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverVersion:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDriverMinorVersion()I
    .locals 2

    .line 98
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverVersion:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    .line 294
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverName:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 1

    .line 301
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 1430
    new-instance v2, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;

    invoke-direct {v2, v1, v0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;-><init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getColumns()[Ljava/lang/String;

    move-result-object v3

    .line 1432
    iget-object v4, v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v4}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 1434
    invoke-static/range {p1 .. p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    if-eqz p2, :cond_1

    .line 1435
    invoke-static/range {p2 .. p2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v5

    .line 1437
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x200

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "select "

    const/4 v12, 0x1

    if-eqz v3, :cond_12

    const-string v13, "select name from sqlite_master where type = \'table\'"

    .line 1443
    invoke-interface {v4, v13}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v13

    .line 1444
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/sql/ResultSet;->next()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1447
    invoke-interface {v13, v12}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1448
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object v5, v15

    goto :goto_2

    .line 1456
    :cond_3
    invoke-interface {v13}, Ljava/sql/ResultSet;->close()V

    .line 1459
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v14, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1461
    :try_start_0
    new-instance v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;

    invoke-direct {v9, v1, v15}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;-><init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v9}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->getFkList()Ljava/util/List;

    move-result-object v9

    .line 1464
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 1465
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;

    .line 1467
    invoke-virtual {v11}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getPkTableName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 1469
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    goto/16 :goto_b

    :cond_4
    move-object/from16 p3, v0

    const/4 v12, 0x0

    .line 1473
    :goto_5
    invoke-virtual {v11}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getColumnMappingCount()I

    move-result v0

    if-ge v12, v0, :cond_c

    add-int/lit8 v0, v12, 0x1

    .line 1475
    invoke-virtual {v11, v12}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getColumnMapping(I)[Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x1

    .line 1476
    aget-object v17, v12, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v18, ""

    move-object/from16 v19, v5

    if-nez v17, :cond_5

    move-object/from16 v5, v18

    goto :goto_6

    :cond_5
    move-object/from16 v5, v17

    :goto_6
    const/16 v17, 0x0

    .line 1478
    :try_start_1
    aget-object v12, v12, v17

    if-nez v12, :cond_6

    move-object/from16 v12, v18

    :cond_6
    move-object/from16 v20, v4

    move-object/from16 p2, v9

    const/4 v9, 0x0

    .line 1482
    :goto_7
    array-length v4, v3

    if-ge v9, v4, :cond_8

    .line 1483
    aget-object v4, v3, v9

    if-eqz v4, :cond_7

    aget-object v4, v3, v9

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_9

    .line 1488
    invoke-virtual {v2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getName()Ljava/lang/String;

    move-result-object v18

    :cond_9
    move-object/from16 v4, v18

    if-lez v14, :cond_a

    const-string v9, " union all select "

    goto :goto_9

    :cond_a
    move-object v9, v10

    .line 1491
    :goto_9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " as ks, \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    invoke-virtual {v1, v15}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' as fkt, \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    invoke-virtual {v1, v12}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' as fcn, \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    invoke-virtual {v1, v5}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' as pcn, \'"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    invoke-virtual {v1, v4}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' as pkn, "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->RULE_MAP:Ljava/util/Map;

    .line 1497
    invoke-virtual {v11}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getOnUpdate()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as ur, "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->RULE_MAP:Ljava/util/Map;

    .line 1498
    invoke-virtual {v11}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getOnDelete()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as dr, "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-virtual {v11}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getFkName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v5, "\'"

    .line 1503
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' as fkn"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_b
    const-string v4, "\'\' as fkn"

    .line 1506
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p2

    move v12, v0

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    goto/16 :goto_5

    :cond_c
    const/16 v17, 0x0

    move-object/from16 v0, p3

    goto :goto_c

    :cond_d
    :goto_b
    move-object/from16 p3, v0

    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object/from16 p2, v9

    const/16 v17, 0x0

    move-object/from16 v9, p2

    move-object/from16 v0, p3

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    :goto_c
    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_e
    move-object/from16 p3, v0

    move-object/from16 v20, v4

    move-object/from16 v19, v5

    const/16 v17, 0x0

    if-eqz v13, :cond_f

    .line 1515
    :try_start_2
    invoke-interface {v13}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_f
    move-object/from16 v0, p3

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    const/16 v9, 0x200

    const/4 v12, 0x1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    if-eqz v13, :cond_10

    :try_start_3
    invoke-interface {v13}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1517
    :catch_1
    :cond_10
    throw v0

    :cond_11
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    const/16 v17, 0x0

    goto :goto_d

    :cond_12
    move-object/from16 v20, v4

    const/16 v17, 0x0

    move-object/from16 v19, v5

    const/4 v14, 0x0

    :goto_d
    if-lez v14, :cond_13

    const/16 v17, 0x1

    .line 1522
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1523
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as PKTABLE_CAT, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as PKTABLE_SCHEM, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    invoke-static/range {v19 .. v19}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as PKTABLE_NAME, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'\'"

    if-eqz v17, :cond_14

    const-string v3, "pcn"

    goto :goto_e

    :cond_14
    move-object v3, v2

    .line 1527
    :goto_e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as PKCOLUMN_NAME, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as FKTABLE_CAT, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as FKTABLE_SCHEM, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_15

    const-string v3, "fkt"

    goto :goto_f

    :cond_15
    move-object v3, v2

    .line 1530
    :goto_f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as FKTABLE_NAME, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_16

    const-string v3, "fcn"

    goto :goto_10

    :cond_16
    move-object v3, v2

    .line 1531
    :goto_10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as FKCOLUMN_NAME, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_17

    const-string v3, "ks"

    goto :goto_11

    :cond_17
    const-string v3, "-1"

    .line 1532
    :goto_11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as KEY_SEQ, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "3"

    if-eqz v17, :cond_18

    const-string v4, "ur"

    goto :goto_12

    :cond_18
    move-object v4, v3

    .line 1533
    :goto_12
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as UPDATE_RULE, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_19

    const-string v3, "dr"

    .line 1534
    :cond_19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as DELETE_RULE, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_1a

    const-string v3, "fkn"

    goto :goto_13

    :cond_1a
    move-object v3, v2

    .line 1535
    :goto_13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as FK_NAME, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_1b

    const-string v2, "pkn"

    .line 1536
    :cond_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as PK_NAME, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 1537
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as DEFERRABILITY "

    .line 1538
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_1c

    const-string v2, "from ("

    .line 1541
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ") ORDER BY FKTABLE_CAT, FKTABLE_SCHEM, FKTABLE_NAME, KEY_SEQ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_1c
    const-string v2, "limit 0"

    .line 1544
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    :goto_14
    move-object/from16 v4, v20

    check-cast v4, Lorg/sqlite/core/CoreStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v4, v0, v2}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getExtraNameCharacters()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1957
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Not yet implemented by SQLite JDBC driver"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1943
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;

    if-nez v0, :cond_0

    .line 1944
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string v1, "select last_insert_rowid();"

    invoke-virtual {v0, v1}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;

    .line 1947
    :cond_0
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifierQuoteString()Ljava/lang/String;
    .locals 1

    const-string v0, "\""

    return-object v0
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1566
    iget-object v2, v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 1567
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2bc

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "select "

    .line 1569
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as PKTABLE_CAT, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    invoke-static/range {p2 .. p2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as PKTABLE_SCHEM, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ptn as PKTABLE_NAME, pcn as PKCOLUMN_NAME, "

    .line 1571
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    invoke-static/range {p1 .. p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as FKTABLE_CAT, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    invoke-static/range {p2 .. p2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as FKTABLE_SCHEM, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    invoke-static/range {p3 .. p3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as FKTABLE_NAME, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fcn as FKCOLUMN_NAME, ks as KEY_SEQ, ur as UPDATE_RULE, dr as DELETE_RULE, fkn as FK_NAME, pkn as PK_NAME, "

    .line 1575
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    .line 1576
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " as DEFERRABILITY from ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    .line 1580
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pragma foreign_key_list(\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\');"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v7
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    new-instance v8, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;

    invoke-direct {v8, v0, v1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;-><init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V

    .line 1588
    invoke-virtual {v8}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->getFkList()Ljava/util/List;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1591
    :goto_0
    invoke-interface {v7}, Ljava/sql/ResultSet;->next()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x2

    .line 1592
    invoke-interface {v7, v10}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v11

    add-int/2addr v11, v6

    .line 1593
    invoke-interface {v7, v6}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v12

    const/4 v13, 0x3

    .line 1594
    invoke-interface {v7, v13}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    .line 1595
    invoke-interface {v7, v15}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1596
    invoke-interface {v7, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1598
    new-instance v5, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;

    invoke-direct {v5, v0, v14}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;-><init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V

    .line 1599
    invoke-virtual {v5}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getName()Ljava/lang/String;

    move-result-object v17

    if-nez v16, :cond_0

    .line 1601
    invoke-virtual {v5}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getColumns()[Ljava/lang/String;

    move-result-object v5

    aget-object v16, v5, v8

    :cond_0
    move-object/from16 v5, v16

    const/4 v15, 0x6

    .line 1604
    invoke-interface {v7, v15}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v6, 0x7

    .line 1605
    invoke-interface {v7, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-lez v9, :cond_1

    const-string v8, " union all "

    .line 1608
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v12, :cond_2

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;

    invoke-virtual {v8}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getFkName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v8

    goto :goto_1

    :cond_2
    const/16 v18, 0x0

    .line 1614
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " as ks,"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    .line 1615
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\' as ptn, \'"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    invoke-virtual {v0, v10}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' as fcn, \'"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    invoke-virtual {v0, v5}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' as pcn,"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "case \'"

    .line 1618
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " when \'NO ACTION\' then "

    .line 1619
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " when \'CASCADE\' then "

    .line 1620
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " when \'RESTRICT\' then "

    .line 1621
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " when \'SET NULL\' then "

    .line 1622
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " when \'SET DEFAULT\' then "

    .line 1623
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " end as ur, "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1626
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1627
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1628
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1629
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " end as dr, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'\'"

    if-nez v18, :cond_3

    move-object v8, v6

    goto :goto_2

    .line 1630
    :cond_3
    invoke-static/range {v18 .. v18}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " as fkn, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v17, :cond_4

    goto :goto_3

    .line 1631
    :cond_4
    invoke-static/range {v17 .. v17}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " as pkn"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1633
    :cond_5
    invoke-interface {v7}, Ljava/sql/ResultSet;->close()V

    if-nez v9, :cond_6

    .line 1636
    invoke-direct {v0, v3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->appendDummyForeignKeyList(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    :cond_6
    const-string v1, ") ORDER BY PKTABLE_CAT, PKTABLE_SCHEM, PKTABLE_NAME, KEY_SEQ;"

    .line 1638
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    check-cast v2, Lorg/sqlite/core/CoreStatement;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1

    .line 1583
    :catch_0
    invoke-direct {v0, v3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->appendDummyForeignKeyList(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1584
    check-cast v2, Lorg/sqlite/core/CoreStatement;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1649
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    .line 1650
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p4, 0x1f4

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "select null as TABLE_CAT, null as TABLE_SCHEM, \'"

    .line 1654
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    invoke-virtual {p0, p3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\' as TABLE_NAME, un as NON_UNIQUE, null as INDEX_QUALIFIER, n as INDEX_NAME, "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p4, 0x3

    .line 1656
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " as TYPE, op as ORDINAL_POSITION, "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "cn as COLUMN_NAME, null as ASC_OR_DESC, 0 as CARDINALITY, 0 as PAGES, null as FILTER_CONDITION from ("

    .line 1657
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pragma index_list(\'"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\');"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p1, p5}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p5

    .line 1662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1663
    :goto_0
    invoke-interface {p5}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-interface {p5, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {p5, p4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1668
    :cond_0
    invoke-interface {p5}, Ljava/sql/ResultSet;->close()V

    .line 1669
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-nez p5, :cond_1

    const-string p3, "select null as un, null as n, null as op, null as cn) limit 0;"

    .line 1671
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    check-cast p1, Lorg/sqlite/core/CoreStatement;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    .line 1677
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    .line 1680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1682
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1683
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 1684
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pragma index_info(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v4

    .line 1687
    :goto_2
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1689
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1691
    invoke-interface {v4, p4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "select "

    .line 1692
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " as un,\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    invoke-virtual {p0, v3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' as n,"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    invoke-interface {v4, v2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " as op,"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_2

    const-string v6, "null"

    .line 1696
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v7, "\'"

    .line 1699
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v6, " as cn"

    .line 1701
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1706
    :cond_3
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V

    goto/16 :goto_1

    :cond_4
    const-string p3, " union all "

    .line 1709
    invoke-static {v0, p3}, Lorg/sqlite/util/StringUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1711
    check-cast p1, Lorg/sqlite/core/CoreStatement;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ");"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getJDBCMajorVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getJDBCMinorVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMaxBinaryLiteralLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCatalogNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCharLiteralLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInGroupBy()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInOrderBy()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInSelect()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInTable()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxConnections()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCursorNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxIndexLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxProcedureNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRowSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSchemaNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatementLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatements()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTableNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTablesInSelect()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxUserNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNumericFunctions()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1385
    new-instance p1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;

    invoke-direct {p1, p0, p3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;-><init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getColumns()[Ljava/lang/String;

    move-result-object p2

    .line 1388
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 1389
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "select null as TABLE_CAT, null as TABLE_SCHEM, \'"

    .line 1390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    invoke-virtual {p0, p3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' as TABLE_NAME, cn as COLUMN_NAME, ks as KEY_SEQ, pk as PK_NAME from ("

    .line 1392
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    if-nez p2, :cond_0

    const-string p1, "select null as cn, null as pk, 0 as ks) limit 0;"

    .line 1395
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    check-cast v0, Lorg/sqlite/core/CoreStatement;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    .line 1400
    :cond_0
    invoke-virtual {p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v2, 0x0

    .line 1405
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_3

    if-lez v2, :cond_2

    const-string v3, " union "

    .line 1406
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "select "

    .line 1407
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as pk, \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v2

    .line 1408
    invoke-direct {p0, v3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->unquoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' as cn, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 1409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as ks"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1412
    :cond_3
    check-cast v0, Lorg/sqlite/core/CoreStatement;

    const-string p1, ") order by cn;"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1720
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    if-nez p1, :cond_0

    .line 1721
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string p2, "select null as PROCEDURE_CAT, null as PROCEDURE_SCHEM, null as PROCEDURE_NAME, null as COLUMN_NAME, null as COLUMN_TYPE, null as DATA_TYPE, null as TYPE_NAME, null as PRECISION, null as LENGTH, null as SCALE, null as RADIX, null as NULLABLE, null as REMARKS limit 0;"

    invoke-virtual {p1, p2}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    .line 1727
    :cond_0
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getProcedureTerm()Ljava/lang/String;
    .locals 1

    const-string v0, "not_implemented"

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1736
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    if-nez p1, :cond_0

    .line 1737
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string p2, "select null as PROCEDURE_CAT, null as PROCEDURE_SCHEM, null as PROCEDURE_NAME, null as UNDEF1, null as UNDEF2, null as UNDEF3, null as REMARKS, null as PROCEDURE_TYPE limit 0;"

    invoke-virtual {p1, p2}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    .line 1741
    :cond_0
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getResultSetHoldability()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSQLKeywords()Ljava/lang/String;
    .locals 1

    const-string v0, "ABORT,ACTION,AFTER,ANALYZE,ATTACH,AUTOINCREMENT,BEFORE,CASCADE,CONFLICT,DATABASE,DEFERRABLE,DEFERRED,DESC,DETACH,EXCLUSIVE,EXPLAIN,FAIL,GLOB,IGNORE,INDEX,INDEXED,INITIALLY,INSTEAD,ISNULL,KEY,LIMIT,NOTNULL,OFFSET,PLAN,PRAGMA,QUERY,RAISE,REGEXP,REINDEX,RENAME,REPLACE,RESTRICT,TEMP,TEMPORARY,TRANSACTION,VACUUM,VIEW,VIRTUAL"

    return-object v0
.end method

.method public getSQLStateType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSchemaTerm()Ljava/lang/String;
    .locals 1

    const-string v0, "schema"

    return-object v0
.end method

.method public getSchemas()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1362
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    if-nez v0, :cond_0

    .line 1363
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string v1, "select null as TABLE_SCHEM, null as TABLE_CATALOG limit 0;"

    invoke-virtual {v0, v1}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    .line 1366
    :cond_0
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getSearchStringEscape()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringFunctions()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1749
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    if-nez p1, :cond_0

    .line 1750
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string p2, "select null as TABLE_CAT, null as TABLE_SCHEM, null as TABLE_NAME, null as SUPERTABLE_NAME limit 0;"

    invoke-virtual {p1, p2}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    .line 1753
    :cond_0
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1761
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    if-nez p1, :cond_0

    .line 1762
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string p2, "select null as TYPE_CAT, null as TYPE_SCHEM, null as TYPE_NAME, null as SUPERTYPE_CAT, null as SUPERTYPE_SCHEM, null as SUPERTYPE_NAME limit 0;"

    invoke-virtual {p1, p2}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    .line 1766
    :cond_0
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getSystemFunctions()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1774
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    if-nez p1, :cond_0

    .line 1775
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string p2, "select  null as TABLE_CAT, null as TABLE_SCHEM, null as TABLE_NAME, null as GRANTOR, null GRANTEE,  null as PRIVILEGE, null as IS_GRANTABLE limit 0;"

    invoke-virtual {p1, p2}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    .line 1779
    :cond_0
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getTableTypes()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1851
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->checkOpen()V

    .line 1861
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    if-nez v0, :cond_0

    .line 1862
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string v1, "SELECT \'TABLE\' AS TABLE_TYPE UNION SELECT \'VIEW\' AS TABLE_TYPE UNION SELECT \'SYSTEM TABLE\' AS TABLE_TYPE UNION SELECT \'GLOBAL TEMPORARY\' AS TABLE_TYPE;"

    invoke-virtual {v0, v1}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    .line 1864
    :cond_0
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearParameters()V

    .line 1865
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 1788
    :try_start_0
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->checkOpen()V

    if-eqz p3, :cond_1

    const-string p1, ""

    .line 1790
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "%"

    .line 1792
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SELECT"

    .line 1793
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  NULL AS TABLE_CAT,"

    .line 1794
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  NULL AS TABLE_SCHEM,"

    .line 1795
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  NAME AS TABLE_NAME,"

    .line 1796
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  TYPE AS TABLE_TYPE,"

    .line 1797
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  NULL AS REMARKS,"

    .line 1798
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  NULL AS TYPE_CAT,"

    .line 1799
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  NULL AS TYPE_SCHEM,"

    .line 1800
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  NULL AS TYPE_NAME,"

    .line 1801
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  NULL AS SELF_REFERENCING_COL_NAME,"

    .line 1802
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  NULL AS REF_GENERATION"

    .line 1803
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "FROM"

    .line 1804
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  ("

    .line 1805
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    SELECT"

    .line 1806
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "      NAME,"

    .line 1807
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "      UPPER(TYPE) AS TYPE"

    .line 1808
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    FROM"

    .line 1809
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "      sqlite_master"

    .line 1810
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    WHERE"

    .line 1811
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "      NAME NOT LIKE \'sqlite_%\'"

    .line 1812
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "      AND UPPER(TYPE) IN (\'TABLE\', \'VIEW\')"

    .line 1813
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    UNION ALL"

    .line 1814
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    SELECT"

    .line 1815
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "      NAME,"

    .line 1816
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "      \'GLOBAL TEMPORARY\' AS TYPE"

    .line 1817
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    FROM"

    .line 1818
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "      sqlite_temp_master"

    .line 1819
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    UNION ALL"

    .line 1820
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    SELECT"

    .line 1821
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "      NAME,"

    .line 1822
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "      \'SYSTEM TABLE\' AS TYPE"

    .line 1823
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    FROM"

    .line 1824
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "      sqlite_master"

    .line 1825
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    WHERE"

    .line 1826
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "      NAME LIKE \'sqlite_%\'"

    .line 1827
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  )"

    .line 1828
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " WHERE TABLE_NAME LIKE \'"

    .line 1829
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND TABLE_TYPE IN ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-eqz p4, :cond_3

    .line 1831
    array-length p3, p4

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    const-string p3, "\'"

    .line 1835
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    aget-object p3, p4, p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    .line 1837
    :goto_2
    array-length v0, p4

    if-ge p3, v0, :cond_4

    const-string v0, ",\'"

    .line 1838
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p4, p3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const-string p3, "\'TABLE\',\'VIEW\'"

    .line 1832
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p3, ") ORDER BY TABLE_TYPE, TABLE_NAME;"

    .line 1842
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    iget-object p3, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {p3}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object p3

    check-cast p3, Lorg/sqlite/core/CoreStatement;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTimeDateFunctions()Ljava/lang/String;
    .locals 1

    const-string v0, "DATE,TIME,DATETIME,JULIANDAY,STRFTIME"

    return-object v0
.end method

.method public getTypeInfo()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1872
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    if-nez v0, :cond_0

    .line 1873
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string v1, "select tn as TYPE_NAME, dt as DATA_TYPE, 0 as PRECISION, null as LITERAL_PREFIX, null as LITERAL_SUFFIX, null as CREATE_PARAMS, 1 as NULLABLE, 1 as CASE_SENSITIVE, 3 as SEARCHABLE, 0 as UNSIGNED_ATTRIBUTE, 0 as FIXED_PREC_SCALE, 0 as AUTO_INCREMENT, null as LOCAL_TYPE_NAME, 0 as MINIMUM_SCALE, 0 as MAXIMUM_SCALE, 0 as SQL_DATA_TYPE, 0 as SQL_DATETIME_SUB, 10 as NUM_PREC_RADIX from (    select \'BLOB\' as tn, 2004 as dt union    select \'NULL\' as tn, 0 as dt union    select \'REAL\' as tn, 7 as dt union    select \'TEXT\' as tn, 12 as dt union    select \'INTEGER\' as tn, 4 as dt) order by TYPE_NAME;"

    invoke-virtual {v0, v1}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    .line 1906
    :cond_0
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearParameters()V

    .line 1907
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1915
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    if-nez p1, :cond_0

    .line 1916
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string p2, "select  null as TYPE_CAT, null as TYPE_SCHEM, null as TYPE_NAME,  null as CLASS_NAME,  null as DATA_TYPE, null as REMARKS, null as BASE_TYPE limit 0;"

    invoke-virtual {p1, p2}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    .line 1921
    :cond_0
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->clearParameters()V

    .line 1922
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1930
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    if-nez p1, :cond_0

    .line 1931
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    const-string p2, "select null as SCOPE, null as COLUMN_NAME, null as DATA_TYPE, null as TYPE_NAME, null as COLUMN_SIZE, null as BUFFER_LENGTH, null as DECIMAL_DIGITS, null as PSEUDO_COLUMN limit 0;"

    invoke-virtual {p1, p2}, Lorg/sqlite/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    .line 1935
    :cond_0
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public insertsAreDetected(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCatalogAtStart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public locatorsUpdateCopy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nullPlusNonNullIsNull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedAtEnd()Z
    .locals 1

    .line 483
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->nullsAreSortedAtStart()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nullsAreSortedAtStart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedHigh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedLow()Z
    .locals 1

    .line 504
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->nullsAreSortedHigh()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public othersDeletesAreVisible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public othersInsertsAreVisible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public othersUpdatesAreVisible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ownDeletesAreVisible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ownInsertsAreVisible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ownUpdatesAreVisible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public storesLowerCaseIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storesLowerCaseQuotedIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storesMixedCaseIdentifiers()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public storesMixedCaseQuotedIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storesUpperCaseIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storesUpperCaseQuotedIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92EntryLevelSQL()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92FullSQL()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92IntermediateSQL()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithAddColumn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithDropColumn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsBatchUpdates()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInDataManipulation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInIndexDefinitions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInPrivilegeDefinitions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInProcedureCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInTableDefinitions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsColumnAliasing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsConvert(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public supportsCoreSQLGrammar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCorrelatedSubqueries()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsDataDefinitionAndDataManipulationTransactions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsDataManipulationTransactionsOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsDifferentTableCorrelationNames()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsExpressionsInOrderBy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsExtendedSQLGrammar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsFullOuterJoins()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsGetGeneratedKeys()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupBy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByBeyondSelect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsGroupByUnrelated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsIntegrityEnhancementFacility()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsLikeEscapeClause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsLimitedOuterJoins()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMinimumSQLGrammar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMixedCaseIdentifiers()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMixedCaseQuotedIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleOpenResults()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleResultSets()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleTransactions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsNamedParameters()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsNonNullableColumns()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenCursorsAcrossCommit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenCursorsAcrossRollback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossCommit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossRollback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOrderByUnrelated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOuterJoins()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsPositionedDelete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsPositionedUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsResultSetConcurrency(II)Z
    .locals 1

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3ef

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsResultSetHoldability(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsResultSetType(I)Z
    .locals 1

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsSavepoints()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInDataManipulation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInIndexDefinitions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInPrivilegeDefinitions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInProcedureCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInTableDefinitions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSelectForUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsStatementPooling()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredProcedures()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSubqueriesInComparisons()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSubqueriesInExists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInIns()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInQuantifieds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsTableCorrelationNames()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsTransactionIsolationLevel(I)Z
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsTransactions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnionAll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updatesAreDetected(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public usesLocalFilePerTable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFiles()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
