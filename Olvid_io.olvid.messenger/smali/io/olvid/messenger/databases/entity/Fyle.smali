.class public Lio/olvid/messenger/databases/entity/Fyle;
.super Ljava/lang/Object;
.source "Fyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;,
        Lio/olvid/messenger/databases/entity/Fyle$SizeAndSha256;
    }
.end annotation


# static fields
.field public static final FILE_PATH:Ljava/lang/String; = "permanent_file_path"

.field public static final FYLE_DIRECTORY:Ljava/lang/String; = "fyles"

.field public static final SHA256:Ljava/lang/String; = "sha256"

.field public static final TABLE_NAME:Ljava/lang/String; = "fyle_table"

.field private static final fyleLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field

.field private static final hashMapLock:Ljava/lang/Object;


# instance fields
.field public filePath:Ljava/lang/String;

.field public id:J

.field public sha256:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/olvid/messenger/databases/entity/Fyle;->fyleLocks:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/olvid/messenger/databases/entity/Fyle;->hashMapLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    return-void
.end method

.method public static acquireLock([B)V
    .locals 3

    .line 129
    invoke-static {p0}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 130
    sget-object v0, Lio/olvid/messenger/databases/entity/Fyle;->fyleLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    sget-object v0, Lio/olvid/messenger/databases/entity/Fyle;->hashMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lio/olvid/messenger/databases/entity/Fyle;->fyleLocks:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    sget-object v1, Lio/olvid/messenger/databases/entity/Fyle;->fyleLocks:Ljava/util/HashMap;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 137
    :cond_1
    :goto_0
    sget-object v0, Lio/olvid/messenger/databases/entity/Fyle;->fyleLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public static buildFylePath([B)Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "fyles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 88
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static computeSHA256(Landroid/net/Uri;)Lio/olvid/messenger/databases/entity/Fyle$SizeAndSha256;
    .locals 7

    const/4 v0, 0x0

    .line 92
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    const-string v1, "SHA-256"

    .line 96
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/high16 v2, 0x40000

    new-array v2, v2, [B

    const-wide/16 v3, 0x0

    .line 100
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x0

    .line 101
    invoke-virtual {v1, v2, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    goto :goto_0

    .line 104
    :cond_2
    new-instance v2, Lio/olvid/messenger/databases/entity/Fyle$SizeAndSha256;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lio/olvid/messenger/databases/entity/Fyle$SizeAndSha256;-><init>(J[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    .line 105
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object v2

    :catchall_0
    move-exception v1

    .line 92
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p0, :cond_4

    .line 105
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-object v0
.end method

.method public static releaseLock([B)V
    .locals 1

    .line 141
    invoke-static {p0}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 142
    sget-object v0, Lio/olvid/messenger/databases/entity/Fyle;->fyleLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Trying to release a lock that does not exist!"

    .line 143
    invoke-static {p0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_0
    sget-object v0, Lio/olvid/messenger/databases/entity/Fyle;->fyleLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .line 66
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/olvid/messenger/databases/dao/FyleDao;->delete(Lio/olvid/messenger/databases/entity/Fyle;)V

    .line 67
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public isComplete()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveToFyleDirectory(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    invoke-static {v0}, Lio/olvid/messenger/databases/entity/Fyle;->buildFylePath([B)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iput-object v0, p0, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unable to move fyle"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
