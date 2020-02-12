.class public Lio/olvid/messenger/databases/tasks/SetDiscussionBackgroundImageTask;
.super Ljava/lang/Object;
.source "SetDiscussionBackgroundImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final discussionId:J

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;J)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/SetDiscussionBackgroundImageTask;->uri:Landroid/net/Uri;

    .line 20
    iput-wide p2, p0, Lio/olvid/messenger/databases/tasks/SetDiscussionBackgroundImageTask;->discussionId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 25
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    move-result-object v1

    iget-wide v2, p0, Lio/olvid/messenger/databases/tasks/SetDiscussionBackgroundImageTask;->discussionId:J

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;->get(J)Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    move-result-object v1

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    iget-wide v2, p0, Lio/olvid/messenger/databases/tasks/SetDiscussionBackgroundImageTask;->discussionId:J

    invoke-direct {v1, v2, v3}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;-><init>(J)V

    .line 29
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;->insert(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)J

    .line 32
    :cond_0
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 34
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->buildBackgroundImagePath()Ljava/lang/String;

    move-result-object v3

    .line 37
    :try_start_0
    iget-object v4, p0, Lio/olvid/messenger/databases/tasks/SetDiscussionBackgroundImageTask;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    .line 41
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/high16 v5, 0x40000

    :try_start_2
    new-array v5, v5, [B

    .line 44
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    .line 45
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 47
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_2

    .line 48
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 52
    :cond_2
    iput-object v3, v1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;->update(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    return-void

    :catchall_0
    move-exception v0

    .line 41
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 47
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 39
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to read from provided Uri"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 37
    :goto_2
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v2, :cond_4

    .line 48
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v2

    :try_start_a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
