.class public abstract Lorg/sqlite/SQLiteConnection;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"

# interfaces
.implements Ljava/sql/Connection;


# static fields
.field private static final RESOURCE_NAME_PREFIX:Ljava/lang/String; = ":resource:"


# instance fields
.field private final connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

.field private final db:Lorg/sqlite/core/DB;

.field private meta:Lorg/sqlite/core/CoreDatabaseMetaData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/sqlite/SQLiteConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lorg/sqlite/SQLiteConnection;->meta:Lorg/sqlite/core/CoreDatabaseMetaData;

    .line 61
    invoke-static {p1, p2, p3}, Lorg/sqlite/SQLiteConnection;->open(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Lorg/sqlite/core/DB;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 62
    iget-object p1, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    invoke-virtual {p1}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    invoke-virtual {p2}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/sqlite/SQLiteConfig;->newConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p2

    iput-object p2, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 65
    invoke-virtual {p1, p0}, Lorg/sqlite/SQLiteConfig;->apply(Ljava/sql/Connection;)V

    return-void
.end method

.method public constructor <init>(Lorg/sqlite/core/DB;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lorg/sqlite/SQLiteConnection;->meta:Lorg/sqlite/core/CoreDatabaseMetaData;

    .line 38
    iput-object p1, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 39
    invoke-virtual {p1}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig;->newConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    return-void
.end method

.method protected static extractPragmasFromFilename(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3f

    .line 432
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object p1

    .line 438
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 439
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 442
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 443
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_7

    .line 445
    array-length v6, p1

    sub-int/2addr v6, v4

    sub-int/2addr v6, v1

    aget-object v6, p1, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 447
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    const-string v7, "="

    .line 452
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 453
    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 454
    sget-object v9, Lorg/sqlite/SQLiteConfig;->pragmaSet:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 455
    array-length v6, v7

    if-eq v6, v4, :cond_3

    .line 458
    aget-object v6, v7, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 459
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 460
    invoke-virtual {p2, v8}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 470
    :cond_2
    invoke-virtual {p2, v8, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 456
    :cond_3
    new-instance p1, Ljava/sql/SQLException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v8, p2, v3

    aput-object p0, p2, v4

    const-string p0, "Please specify a value for PRAGMA %s in URL %s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-nez v5, :cond_5

    const/16 v7, 0x3f

    goto :goto_1

    :cond_5
    const/16 v7, 0x26

    .line 475
    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static extractResource(Ljava/net/URL;)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 259
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 264
    invoke-virtual {p0}, Ljava/net/URL;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sqlite-jdbc-tmp-%d.db"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 265
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    .line 269
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    return-object v2

    .line 275
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 277
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to remove existing DB file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 292
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 293
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    .line 296
    :goto_1
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 297
    invoke-virtual {v1, v0, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 302
    :cond_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 303
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    .line 302
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 303
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 304
    throw v0
.end method

.method private static open(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Lorg/sqlite/core/DB;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 177
    invoke-virtual {v0, p2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 180
    invoke-static {p0, p1, v0}, Lorg/sqlite/SQLiteConnection;->extractPragmasFromFilename(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p1

    .line 181
    new-instance p2, Lorg/sqlite/SQLiteConfig;

    invoke-direct {p2, v0}, Lorg/sqlite/SQLiteConfig;-><init>(Ljava/util/Properties;)V

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ":memory:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "mode=memory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ":resource:"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 193
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    new-instance p2, Ljava/sql/SQLException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p0, v0, v1

    const-string p0, "resource %s not found: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 201
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v0}, Lorg/sqlite/SQLiteConnection;->extractResource(Ljava/net/URL;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p0

    .line 204
    new-instance p2, Ljava/sql/SQLException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p0, v0, v1

    const-string p0, "failed to load %s: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 208
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    move-object p0, v1

    :goto_1
    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_1

    .line 215
    :cond_2
    new-instance p2, Ljava/sql/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' does not exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 222
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 228
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :catch_2
    move-exception p0

    .line 226
    new-instance p2, Ljava/sql/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opening db: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 235
    :cond_5
    :goto_2
    :try_start_3
    invoke-static {}, Lorg/sqlite/core/NativeDB;->load()Z

    .line 236
    new-instance v0, Lorg/sqlite/core/NativeDB;

    invoke-direct {v0, p0, p1, p2}, Lorg/sqlite/core/NativeDB;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/SQLiteConfig;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 243
    invoke-virtual {p2}, Lorg/sqlite/SQLiteConfig;->getOpenModeFlags()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/sqlite/core/DB;->open(Ljava/lang/String;I)V

    return-object v0

    :catch_3
    move-exception p0

    .line 239
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Error opening connection"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1, p0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 241
    throw p1
.end method


# virtual methods
.method public abort(Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method protected checkCursor(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_2

    const/16 p1, 0x3ef

    if-ne p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "SQLite only supports closing cursors at commit"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "SQLite only supports CONCUR_READ_ONLY cursors"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "SQLite only supports TYPE_FORWARD_ONLY cursors"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "database connection closed"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->meta:Lorg/sqlite/core/CoreDatabaseMetaData;

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0}, Lorg/sqlite/core/CoreDatabaseMetaData;->close()V

    .line 373
    :cond_1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    invoke-virtual {v0}, Lorg/sqlite/core/DB;->close()V

    return-void
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 402
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->isAutoCommit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result v1

    const-string v2, "commit;"

    invoke-virtual {v0, v2, v1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 405
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    iget-object v1, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnectionConfig;->transactionPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    return-void

    .line 403
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "database in auto-commit mode"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAutoCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 319
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->isAutoCommit()Z

    move-result v0

    return v0
.end method

.method public getBusyTimeout()I
    .locals 1

    .line 340
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    invoke-virtual {v0}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConfig;->getBusyTimeout()I

    move-result v0

    return v0
.end method

.method public getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    return-object v0
.end method

.method public getDatabase()Lorg/sqlite/core/DB;
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    return-object v0
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getSQLiteDatabaseMetaData()Lorg/sqlite/core/CoreDatabaseMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getSQLiteDatabaseMetaData()Lorg/sqlite/core/CoreDatabaseMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 75
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->meta:Lorg/sqlite/core/CoreDatabaseMetaData;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lorg/sqlite/jdbc4/JDBC4DatabaseMetaData;

    invoke-direct {v0, p0}, Lorg/sqlite/jdbc4/JDBC4DatabaseMetaData;-><init>(Lorg/sqlite/SQLiteConnection;)V

    iput-object v0, p0, Lorg/sqlite/SQLiteConnection;->meta:Lorg/sqlite/core/CoreDatabaseMetaData;

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->meta:Lorg/sqlite/core/CoreDatabaseMetaData;

    return-object v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransactionIsolation()I
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getTransactionIsolation()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    invoke-virtual {v0}, Lorg/sqlite/core/DB;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    invoke-virtual {v0}, Lorg/sqlite/core/DB;->isClosed()Z

    move-result v0

    return v0
.end method

.method public libversion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 393
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    invoke-virtual {v0}, Lorg/sqlite/core/DB;->libversion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rollback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 414
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->isAutoCommit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result v1

    const-string v2, "rollback;"

    invoke-virtual {v0, v2, v1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 417
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    iget-object v1, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnectionConfig;->transactionPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    return-void

    .line 415
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "database in auto-commit mode"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoCommit(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 328
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->isAutoCommit()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setAutoCommit(Z)V

    .line 332
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    iget-object v1, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnectionConfig;->isAutoCommit()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "commit;"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnectionConfig;->transactionPrefix()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBusyTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    invoke-virtual {v0}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setBusyTimeout(I)V

    .line 354
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    invoke-virtual {v0, p1}, Lorg/sqlite/core/DB;->busy_timeout(I)V

    return-void
.end method

.method public setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result v1

    const-string v2, "PRAGMA read_uncommitted = false;"

    invoke-virtual {v0, v2, v1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    goto :goto_0

    .line 164
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "SQLite supports only TRANSACTION_SERIALIZABLE and TRANSACTION_READ_UNCOMMITTED."

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v0

    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result v1

    const-string v2, "PRAGMA read_uncommitted = true;"

    invoke-virtual {v0, v2, v1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 166
    :goto_0
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setTransactionIsolation(I)V

    return-void
.end method

.method protected setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V

    return-void
.end method
