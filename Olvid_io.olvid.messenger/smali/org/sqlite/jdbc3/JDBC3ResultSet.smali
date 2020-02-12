.class public abstract Lorg/sqlite/jdbc3/JDBC3ResultSet;
.super Lorg/sqlite/core/CoreResultSet;
.source "JDBC3ResultSet.java"


# static fields
.field protected static final COLUMN_PRECISION:Ljava/util/regex/Pattern;

.field protected static final COLUMN_TYPECAST:Ljava/util/regex/Pattern;

.field protected static final COLUMN_TYPENAME:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([^\\(]*)"

    .line 670
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_TYPENAME:Ljava/util/regex/Pattern;

    const-string v0, "cast\\(.*?\\s+as\\s+(.*?)\\s*\\)"

    .line 675
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_TYPECAST:Ljava/util/regex/Pattern;

    const-string v0, ".*?\\((.*?)\\)"

    .line 680
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_PRECISION:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Lorg/sqlite/core/CoreStatement;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/sqlite/core/CoreResultSet;-><init>(Lorg/sqlite/core/CoreStatement;)V

    return-void
.end method

.method private getColumnDeclType(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 884
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 885
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCol(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/sqlite/core/DB;->column_decltype(JI)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 888
    sget-object v1, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_TYPECAST:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_name(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 889
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v1, p1

    :cond_1
    return-object v1
.end method

.method private julianDateToCalendar(Ljava/lang/Double;)Ljava/util/Calendar;
    .locals 1

    .line 1036
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method private julianDateToCalendar(Ljava/lang/Double;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 16

    move-object/from16 v7, p2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1051
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v2, v0

    int-to-double v3, v2

    sub-double/2addr v0, v3

    const v5, 0x231519

    if-ge v2, v5, :cond_1

    goto :goto_0

    :cond_1
    const-wide v5, 0x413c7dd040000000L    # 1867216.25

    sub-double/2addr v3, v5

    const-wide v5, 0x40e1d58800000000L    # 36524.25

    div-double/2addr v3, v5

    double-to-int v3, v3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    div-double/2addr v3, v5

    double-to-int v3, v3

    sub-int/2addr v2, v3

    :goto_0
    add-int/lit16 v2, v2, 0x5f4

    int-to-double v3, v2

    const-wide v5, 0x405e866666666666L    # 122.1

    sub-double/2addr v3, v5

    const-wide v5, 0x4076d40000000000L    # 365.25

    div-double/2addr v3, v5

    double-to-int v3, v3

    int-to-double v8, v3

    mul-double v8, v8, v5

    double-to-int v4, v8

    sub-int/2addr v2, v4

    int-to-double v4, v2

    const-wide v8, 0x403e99a027525461L    # 30.6001

    div-double/2addr v4, v8

    double-to-int v4, v4

    int-to-double v5, v4

    const-wide/high16 v10, 0x402b000000000000L    # 13.5

    const/4 v12, 0x1

    cmpg-double v13, v5, v10

    if-gez v13, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/16 v10, 0xd

    :goto_1
    sub-int/2addr v4, v10

    int-to-double v10, v4

    const-wide/high16 v13, 0x4004000000000000L    # 2.5

    cmpl-double v15, v10, v13

    if-lez v15, :cond_3

    const/16 v10, 0x126c

    goto :goto_2

    :cond_3
    const/16 v10, 0x126b

    :goto_2
    sub-int v10, v3, v10

    mul-double v5, v5, v8

    double-to-int v3, v5

    sub-int/2addr v2, v3

    int-to-double v2, v2

    add-double/2addr v2, v0

    double-to-int v5, v2

    int-to-double v0, v5

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    mul-double v2, v2, v0

    double-to-int v6, v2

    int-to-double v0, v6

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double v2, v2, v0

    double-to-int v8, v2

    int-to-double v13, v8

    sub-double/2addr v2, v13

    mul-double v2, v2, v0

    double-to-int v9, v2

    int-to-double v0, v9

    sub-double/2addr v2, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v0

    double-to-int v11, v2

    add-int/lit8 v2, v4, -0x1

    move-object/from16 v0, p2

    move v1, v10

    move v3, v5

    move v4, v6

    move v5, v8

    move v6, v9

    .line 1094
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v0, 0xe

    .line 1095
    invoke-virtual {v7, v0, v11}, Ljava/util/Calendar;->set(II)V

    if-ge v10, v12, :cond_4

    const/4 v0, 0x0

    .line 1098
    invoke-virtual {v7, v0, v0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v10, v12

    neg-int v0, v10

    .line 1099
    invoke-virtual {v7, v12, v0}, Ljava/util/Calendar;->set(II)V

    :cond_4
    return-object v7
.end method


# virtual methods
.method public checkCalendar(Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 1109
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Expected a calendar instance."

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 1110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {p1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1112
    throw p1
.end method

.method public clearWarnings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->close()V

    return-void
.end method

.method public findColumn(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkOpen()V

    .line 40
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumnIndexInCache(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->cols:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 45
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->cols:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 46
    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->addColumnIndexInCache(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such column: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 193
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 196
    :catch_0
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value for type BigDecimal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getBytes(I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getInt(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getByte(I)B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getInt(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getByte(I)B

    move-result p1

    return p1
.end method

.method public getBytes(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->column_blob(JI)[B

    move-result-object p1

    return-object p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getCatalogName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 696
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCol(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->column_table_name(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 275
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getColumnClassName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 703
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCol(I)I

    const-string p1, "java.lang.Object"

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 711
    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCol(I)I

    .line 712
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->colsMeta:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnDisplaySize(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const p1, 0x7fffffff

    return p1
.end method

.method public getColumnLabel(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 726
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 733
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCol(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->column_name(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnType(I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 740
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getColumnTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v1

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCol(I)I

    move-result p1

    invoke-virtual {v1, v2, v3, p1}, Lorg/sqlite/core/DB;->column_type(JI)I

    move-result p1

    const-string v1, "DATETIME"

    const/16 v2, 0x5b

    const-string v3, "DATE"

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x5

    if-eq p1, v5, :cond_0

    if-ne p1, v6, :cond_7

    :cond_0
    const-string v7, "BOOLEAN"

    .line 744
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 p1, 0x10

    return p1

    :cond_1
    const-string v7, "TINYINT"

    .line 748
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 p1, -0x6

    return p1

    :cond_2
    const-string v7, "SMALLINT"

    .line 752
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    const-string v7, "INT2"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_9

    :cond_3
    const-string v7, "BIGINT"

    .line 756
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "INT8"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "UNSIGNED BIG INT"

    .line 757
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_8

    .line 761
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_7

    :cond_5
    const-string v7, "TIMESTAMP"

    .line 765
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 p1, 0x5d

    return p1

    :cond_6
    if-eq p1, v5, :cond_1c

    const-string v7, "INT"

    .line 770
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    const-string v7, "INTEGER"

    .line 771
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    const-string v7, "MEDIUMINT"

    .line 772
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto/16 :goto_6

    :cond_7
    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq p1, v8, :cond_8

    if-ne p1, v6, :cond_d

    :cond_8
    const-string v9, "DECIMAL"

    .line 778
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    return v7

    :cond_9
    const-string v9, "DOUBLE"

    .line 782
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    const-string v9, "DOUBLE PRECISION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto/16 :goto_5

    :cond_a
    const-string v9, "NUMERIC"

    .line 786
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    return v8

    :cond_b
    const-string v9, "REAL"

    .line 790
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 p1, 0x7

    return p1

    :cond_c
    if-eq p1, v8, :cond_1a

    const-string v9, "FLOAT"

    .line 795
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto/16 :goto_4

    :cond_d
    if-eq p1, v7, :cond_e

    if-ne p1, v6, :cond_12

    :cond_e
    const-string v9, "CHARACTER"

    .line 801
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    const-string v9, "NCHAR"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    const-string v9, "NATIVE CHARACTER"

    .line 802
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    const-string v9, "CHAR"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_3

    :cond_f
    const-string v5, "CLOB"

    .line 806
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/16 p1, 0x7d5

    return p1

    .line 810
    :cond_10
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2

    :cond_11
    if-eq p1, v7, :cond_17

    const-string v1, "VARCHAR"

    .line 815
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "VARYING CHARACTER"

    .line 816
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "NVARCHAR"

    .line 817
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "TEXT"

    .line 818
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_1

    :cond_12
    if-eq p1, v4, :cond_13

    if-ne p1, v6, :cond_15

    :cond_13
    const-string v1, "BINARY"

    .line 824
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 p1, -0x2

    return p1

    :cond_14
    if-eq p1, v4, :cond_16

    const-string p1, "BLOB"

    .line 829
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_0

    :cond_15
    return v8

    :cond_16
    :goto_0
    const/16 p1, 0x7d4

    return p1

    :cond_17
    :goto_1
    const/16 p1, 0xc

    return p1

    :cond_18
    :goto_2
    return v2

    :cond_19
    :goto_3
    return v5

    :cond_1a
    :goto_4
    const/4 p1, 0x6

    return p1

    :cond_1b
    :goto_5
    const/16 p1, 0x8

    return p1

    :cond_1c
    :goto_6
    return v4

    :cond_1d
    :goto_7
    return v2

    :cond_1e
    :goto_8
    const/4 p1, -0x5

    return p1

    :cond_1f
    :goto_9
    return v6
.end method

.method public getColumnTypeName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 843
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getColumnDeclType(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 846
    sget-object p1, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_TYPENAME:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 848
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 849
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 852
    :cond_0
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_type(JI)I

    move-result p1

    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    const-string v1, "NUMERIC"

    if-eq p1, v0, :cond_1

    :cond_1
    return-object v1

    :cond_2
    const-string p1, "BLOB"

    return-object p1

    :cond_3
    const-string p1, "TEXT"

    return-object p1

    :cond_4
    const-string p1, "FLOAT"

    return-object p1

    :cond_5
    const-string p1, "INTEGER"

    return-object p1
.end method

.method public getConcurrency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3ef

    return v0
.end method

.method public getCursorName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/sqlite/core/DB;->column_type(JI)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 309
    new-instance v1, Ljava/sql/Date;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_long(JI)J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v4

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 296
    :cond_1
    :try_start_0
    new-instance v1, Ljava/sql/Date;

    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnectionConfig;->getDateFormat()Lorg/sqlite/date/FastDateFormat;

    move-result-object v2

    iget-object v3, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v3, v3, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v3, v4, p1}, Lorg/sqlite/core/DB;->column_text(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/sqlite/date/FastDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 299
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Error parsing date"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 302
    throw v0

    .line 306
    :cond_2
    new-instance v1, Ljava/sql/Date;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_double(JI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    return-object v1
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCalendar(Ljava/util/Calendar;)V

    .line 319
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/sqlite/core/DB;->column_type(JI)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 341
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->column_long(JI)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v2

    mul-long v0, v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 342
    new-instance p1, Ljava/sql/Date;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Date;-><init>(J)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 326
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateStringFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/sqlite/date/FastDateFormat;

    move-result-object p2

    .line 328
    new-instance v1, Ljava/sql/Date;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_text(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/sqlite/date/FastDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Ljava/sql/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 331
    new-instance p2, Ljava/sql/SQLException;

    const-string v0, "Error parsing time stamp"

    invoke-direct {p2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 334
    throw p2

    .line 338
    :cond_2
    new-instance v1, Ljava/sql/Date;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_double(JI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Ljava/sql/Date;-><init>(J)V

    return-object v1
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 350
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 357
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(I)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/sqlite/core/DB;->column_type(JI)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 368
    :cond_0
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->column_double(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFetchDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkOpen()V

    const/16 v0, 0x3e8

    return v0
.end method

.method public getFetchSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 100
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->limitRows:I

    return v0
.end method

.method public getFloat(I)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/sqlite/core/DB;->column_type(JI)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 386
    :cond_0
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->column_double(JI)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->column_int(JI)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->column_long(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 423
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 689
    move-object v0, p0

    check-cast v0, Ljava/sql/ResultSetMetaData;

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 611
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/sqlite/core/DB;->column_type(JI)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 628
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 623
    :cond_1
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getBytes(I)[B

    move-result-object p1

    return-object p1

    .line 621
    :cond_2
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDouble(I)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    .line 613
    :cond_3
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getLong(I)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_5

    const-wide/32 v2, -0x80000000

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    goto :goto_0

    .line 618
    :cond_4
    new-instance p1, Ljava/lang/Integer;

    long-to-int v1, v0

    invoke-direct {p1, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    .line 615
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPrecision(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 872
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getColumnDeclType(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 875
    sget-object v1, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_PRECISION:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 877
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getRow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 171
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->row:I

    return v0
.end method

.method public getScale(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 898
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getColumnDeclType(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 901
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_PRECISION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 903
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 904
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 906
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 907
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, ""

    return-object p1
.end method

.method public getShort(I)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 430
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getInt(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 437
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getStatement()Ljava/sql/Statement;
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    check-cast v0, Ljava/sql/Statement;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->column_text(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 452
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 926
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCol(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->column_table_name(JI)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/sqlite/core/DB;->column_type(JI)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 479
    new-instance v1, Ljava/sql/Time;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_long(JI)J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v4

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/sql/Time;-><init>(J)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 466
    :cond_1
    :try_start_0
    new-instance v1, Ljava/sql/Time;

    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnectionConfig;->getDateFormat()Lorg/sqlite/date/FastDateFormat;

    move-result-object v2

    iget-object v3, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v3, v3, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v3, v4, p1}, Lorg/sqlite/core/DB;->column_text(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/sqlite/date/FastDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Time;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 469
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Error parsing time"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 472
    throw v0

    .line 476
    :cond_2
    new-instance v1, Ljava/sql/Time;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_double(JI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Time;-><init>(J)V

    return-object v1
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 487
    invoke-virtual {p0, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCalendar(Ljava/util/Calendar;)V

    .line 488
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/sqlite/core/DB;->column_type(JI)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 510
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->column_long(JI)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v2

    mul-long v0, v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 511
    new-instance p1, Ljava/sql/Time;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Time;-><init>(J)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 495
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateStringFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/sqlite/date/FastDateFormat;

    move-result-object p2

    .line 497
    new-instance v1, Ljava/sql/Time;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_text(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/sqlite/date/FastDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Ljava/sql/Time;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 500
    new-instance p2, Ljava/sql/SQLException;

    const-string v0, "Error parsing time"

    invoke-direct {p2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 503
    throw p2

    .line 507
    :cond_2
    new-instance v1, Ljava/sql/Time;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_double(JI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Ljava/sql/Time;-><init>(J)V

    return-object v1
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 519
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 526
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/sqlite/core/DB;->column_type(JI)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 553
    new-instance v1, Ljava/sql/Timestamp;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_long(JI)J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v4

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 540
    :cond_1
    :try_start_0
    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnectionConfig;->getDateFormat()Lorg/sqlite/date/FastDateFormat;

    move-result-object v2

    iget-object v3, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v3, v3, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v3, v4, p1}, Lorg/sqlite/core/DB;->column_text(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/sqlite/date/FastDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 543
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Error parsing time stamp"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 546
    throw v0

    .line 550
    :cond_2
    new-instance v1, Ljava/sql/Timestamp;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_double(JI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 562
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    .line 565
    :cond_0
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/sqlite/core/DB;->column_type(JI)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 587
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->column_long(JI)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v2

    mul-long v0, v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 589
    new-instance p1, Ljava/sql/Timestamp;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 572
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateStringFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/sqlite/date/FastDateFormat;

    move-result-object p2

    .line 574
    new-instance v1, Ljava/sql/Timestamp;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_text(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/sqlite/date/FastDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 577
    new-instance p2, Ljava/sql/SQLException;

    const-string v0, "Error parsing time stamp"

    invoke-direct {p2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 580
    throw p2

    .line 584
    :cond_3
    new-instance v1, Ljava/sql/Timestamp;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/sqlite/core/DB;->column_double(JI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 597
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 604
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3eb

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAfterLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->open:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isAutoIncrement(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 947
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkMeta()V

    .line 948
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->meta:[[Z

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCol(I)I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x2

    aget-boolean p1, p1, v0

    return p1
.end method

.method public isBeforeFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 142
    iget-boolean v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->open:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->row:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCaseSensitive(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public isCurrency(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isDefinitelyWritable(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public isFirst()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 149
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->row:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "function not yet implemented for SQLite"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNullable(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 939
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkMeta()V

    .line 940
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->meta:[[Z

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkCol(I)I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x1

    aget-boolean p1, p1, v0

    xor-int/2addr p1, v0

    return p1
.end method

.method public isReadOnly(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isSearchable(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public isSigned(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 990
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getColumnTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NUMERIC"

    .line 992
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "INTEGER"

    .line 993
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "REAL"

    .line 994
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isWritable(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public next()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->open:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->lastCol:I

    .line 63
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->row:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 64
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->row:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->row:I

    return v2

    .line 69
    :cond_1
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->maxRows:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->row:I

    iget v3, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->maxRows:I

    if-ne v0, v3, :cond_2

    return v1

    .line 74
    :cond_2
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-object v3, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v3, v3, Lorg/sqlite/core/CoreStatement;->pointer:J

    invoke-virtual {v0, v3, v4}, Lorg/sqlite/core/DB;->step(J)I

    move-result v0

    const/16 v3, 0x64

    if-eq v0, v3, :cond_4

    const/16 v2, 0x65

    if-eq v0, v2, :cond_3

    .line 84
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/sqlite/core/DB;->throwex(I)V

    return v1

    .line 77
    :cond_3
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->close()V

    return v1

    .line 80
    :cond_4
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->row:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->row:I

    return v2
.end method

.method public rowDeleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public rowInserted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public rowUpdated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setFetchDirection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->checkOpen()V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "only FETCH_FORWARD direction supported"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFetchSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 107
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->maxRows:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->maxRows:I

    if-gt p1, v0, :cond_1

    .line 110
    :cond_0
    iput p1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->limitRows:I

    return-void

    .line 108
    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of bounds "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->maxRows:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wasNull()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-wide v1, v1, Lorg/sqlite/core/CoreStatement;->pointer:J

    iget v3, p0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->lastCol:I

    invoke-virtual {p0, v3}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->markCol(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/sqlite/core/DB;->column_type(JI)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
