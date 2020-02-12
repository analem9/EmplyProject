.class Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;
.super Ljava/lang/Object;
.source "JDBC3DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImportedKeyFinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;
    }
.end annotation


# instance fields
.field private final FK_NAMED_PATTERN:Ljava/util/regex/Pattern;

.field private fkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;",
            ">;"
        }
    .end annotation
.end field

.field private fkTableName:Ljava/lang/String;

.field final synthetic this$0:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;


# direct methods
.method public constructor <init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 2076
    iput-object v0, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->this$0:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "CONSTRAINT\\s*([A-Za-z_][A-Za-z\\d_]*)?\\s*FOREIGN\\s+KEY\\s*\\((.*?)\\)"

    const/16 v3, 0x22

    .line 2070
    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->FK_NAMED_PATTERN:Ljava/util/regex/Pattern;

    .line 2074
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkList:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 2078
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 2082
    iput-object v1, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkTableName:Ljava/lang/String;

    .line 2084
    iget-object v1, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkTableName:Ljava/lang/String;

    invoke-direct {v9, v1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->getForeignKeyNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 2090
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$500(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;)Lorg/sqlite/SQLiteConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2091
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pragma foreign_key_list(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkTableName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 2097
    :goto_0
    :try_start_2
    invoke-interface {v13}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 2098
    invoke-interface {v13, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v14

    const/4 v3, 0x2

    .line 2099
    invoke-interface {v13, v3}, Ljava/sql/ResultSet;->getInt(I)I

    const/4 v3, 0x3

    .line 2100
    invoke-interface {v13, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x4

    .line 2101
    invoke-interface {v13, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x5

    .line 2102
    invoke-interface {v13, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x6

    .line 2103
    invoke-interface {v13, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x7

    .line 2104
    invoke-interface {v13, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0x8

    .line 2105
    invoke-interface {v13, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2108
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eq v14, v1, :cond_1

    .line 2111
    new-instance v5, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;

    iget-object v2, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkTableName:Ljava/lang/String;

    move-object v1, v5

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    move-object v11, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v10

    move-object v10, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;-><init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-object v1, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object v2, v11

    move v1, v14

    goto :goto_2

    :cond_1
    move-object/from16 v17, v10

    move-object v10, v8

    .line 2116
    :goto_2
    invoke-virtual {v2, v15, v10}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->addColumnMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v10, v17

    goto :goto_0

    :cond_2
    if-eqz v13, :cond_3

    .line 2121
    :try_start_3
    invoke-interface {v13}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    nop

    :cond_3
    :goto_3
    if-eqz v12, :cond_4

    .line 2124
    :try_start_4
    invoke-interface {v12}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_4
    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    const/4 v12, 0x0

    :goto_4
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_5

    .line 2121
    :try_start_5
    invoke-interface {v13}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_2
    nop

    :cond_5
    :goto_6
    if-eqz v12, :cond_6

    .line 2124
    :try_start_6
    invoke-interface {v12}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2126
    :catch_3
    :cond_6
    throw v0

    .line 2079
    :cond_7
    new-instance v0, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid table name: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getForeignKeyNames(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 2137
    :try_start_0
    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->this$0:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;

    invoke-static {v2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$600(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;)Lorg/sqlite/SQLiteConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2139
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select sql from sqlite_master where lower(name) = lower(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->this$0:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;

    .line 2140
    invoke-static {v4, p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$700(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2139
    invoke-interface {v2, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 2141
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2142
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->FK_NAMED_PATTERN:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2144
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2145
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 2151
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 2156
    :try_start_3
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2160
    :catch_1
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_4

    .line 2151
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    nop

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 2156
    :try_start_5
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2159
    :catch_3
    :cond_5
    throw p1
.end method


# virtual methods
.method public getFkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;",
            ">;"
        }
    .end annotation

    .line 2169
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkList:Ljava/util/List;

    return-object v0
.end method

.method public getFkTableName()Ljava/lang/String;
    .locals 1

    .line 2165
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkTableName:Ljava/lang/String;

    return-object v0
.end method
