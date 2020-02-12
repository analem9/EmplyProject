.class Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;
.super Ljava/lang/Object;
.source "JDBC3DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrimaryKeyFinder"
.end annotation


# instance fields
.field pkColumns:[Ljava/lang/String;

.field pkName:Ljava/lang/String;

.field table:Ljava/lang/String;

.field final synthetic this$0:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;


# direct methods
.method public constructor <init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1994
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->this$0:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1984
    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkName:Ljava/lang/String;

    .line 1987
    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    .line 1995
    iput-object p2, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->table:Ljava/lang/String;

    const-string v1, "\'"

    if-eqz p2, :cond_a

    .line 1997
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    .line 2005
    :try_start_0
    invoke-static {p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$000(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;)Lorg/sqlite/SQLiteConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2007
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select sql from sqlite_master where lower(name) = lower(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    invoke-static {p1, p2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$100(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\') and type in (\'table\', \'view\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2007
    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 2010
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2013
    sget-object v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->PK_NAMED_PATTERN:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2014
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, ","

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    .line 2015
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$200(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$300(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkName:Ljava/lang/String;

    .line 2016
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    goto :goto_0

    .line 2019
    :cond_0
    sget-object v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->PK_UNNAMED_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2020
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2021
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    .line 2025
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 2026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pragma table_info(\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$400(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\');"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 2027
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x6

    .line 2028
    invoke-interface {v0, p2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-array p2, v3, [Ljava/lang/String;

    .line 2029
    invoke-interface {v0, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v4

    iput-object p2, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    goto :goto_1

    .line 2033
    :cond_3
    iget-object p2, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 2034
    :goto_2
    iget-object p2, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    array-length p2, p2

    if-ge v4, p2, :cond_4

    .line 2035
    iget-object p2, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {p1, v1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$300(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 2041
    :try_start_3
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    nop

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 2044
    :try_start_4
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_6
    return-void

    .line 2011
    :cond_7
    :try_start_5
    new-instance p1, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Table not found: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_4
    if-eqz v0, :cond_8

    .line 2041
    :try_start_6
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    nop

    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    .line 2044
    :try_start_7
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 2046
    :catch_3
    :cond_9
    throw p1

    .line 1998
    :cond_a
    new-instance p1, Ljava/sql/SQLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid table name: \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->table:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getColumns()[Ljava/lang/String;
    .locals 1

    .line 2060
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2053
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkName:Ljava/lang/String;

    return-object v0
.end method
