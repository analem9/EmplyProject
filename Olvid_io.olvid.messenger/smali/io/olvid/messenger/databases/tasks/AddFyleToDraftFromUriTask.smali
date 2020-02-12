.class public Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;
.super Ljava/lang/Object;
.source "AddFyleToDraftFromUriTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final discussionId:J

.field private final localFile:Ljava/io/File;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;J)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->uri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->localFile:Ljava/io/File;

    .line 38
    iput-wide p2, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->discussionId:J

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/io/File;J)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->uri:Landroid/net/Uri;

    .line 43
    iput-object p2, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->localFile:Ljava/io/File;

    .line 44
    iput-wide p3, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->discussionId:J

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->discussionId:J

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 34

    move-object/from16 v11, p0

    const-string v0, "_display_name"

    .line 49
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v12

    .line 50
    new-instance v1, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$1;

    invoke-direct {v1, v11, v12}, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$1;-><init>(Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;Lio/olvid/messenger/databases/AppDatabase;)V

    invoke-virtual {v12, v1}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    .line 65
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    iget-wide v2, v11, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->discussionId:J

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->getDiscussionDraftMessageSync(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v13

    if-nez v13, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting/creating draft for discussion with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v11, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->discussionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 75
    :try_start_0
    iget-object v2, v11, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->uri:Landroid/net/Uri;

    invoke-virtual {v14, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 77
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 78
    iget-object v3, v11, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v14

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    if-eqz v2, :cond_1

    .line 79
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_3

    .line 83
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd@HHmmss"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v26, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    .line 78
    :goto_1
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v5, v0

    if-eqz v2, :cond_2

    .line 85
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    move-object/from16 v26, v4

    goto/16 :goto_1e

    :cond_3
    move-object/from16 v26, v3

    :goto_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_4
    iget-object v0, v11, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lio/olvid/messenger/databases/entity/Fyle;->computeSHA256(Landroid/net/Uri;)Lio/olvid/messenger/databases/entity/Fyle$SizeAndSha256;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 92
    iget-object v7, v0, Lio/olvid/messenger/databases/entity/Fyle$SizeAndSha256;->sha256:[B

    .line 93
    iget-wide v5, v0, Lio/olvid/messenger/databases/entity/Fyle$SizeAndSha256;->fileSize:J

    .line 94
    invoke-static {v7}, Lio/olvid/messenger/databases/entity/Fyle;->buildFylePath([B)Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 96
    :try_start_7
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object v0

    invoke-interface {v0, v7}, Lio/olvid/messenger/databases/dao/FyleDao;->getBySha256([B)Lio/olvid/messenger/databases/entity/Fyle;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    const-string v15, "Unable to read from provided Uri"

    const-wide/16 v27, 0x0

    if-eqz v0, :cond_14

    .line 98
    :try_start_8
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result v16
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-object/from16 v29, v15

    if-eqz v16, :cond_6

    .line 103
    :try_start_9
    new-instance v14, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v7, v4

    move-object v4, v0

    move-wide/from16 v30, v5

    move-object v5, v13

    move-object v6, v7

    move-object/from16 v7, v26

    const/4 v13, 0x1

    const/4 v15, 0x0

    move-wide/from16 v9, v30

    invoke-direct/range {v1 .. v10}, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;-><init>(Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;Lio/olvid/messenger/databases/AppDatabase;Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v12, v14}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 123
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 124
    :cond_5
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    aput-object v26, v1, v15

    const v2, 0x7f1001fa

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v0, v15, v1}, Lio/olvid/messenger/App;->toast(Ljava/lang/String;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    goto/16 :goto_1f

    :cond_6
    move-object v9, v4

    move-wide/from16 v30, v5

    const/4 v10, 0x1

    const/4 v15, 0x0

    .line 131
    :try_start_a
    invoke-static {v7}, Lio/olvid/messenger/databases/entity/Fyle;->acquireLock([B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 136
    :try_start_b
    new-instance v6, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$3;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_f

    const/4 v5, 0x2

    move-object v1, v6

    const/4 v4, 0x0

    move-object/from16 v2, p0

    const/4 v15, -0x1

    move-object v3, v12

    move-object v4, v0

    move-object v5, v13

    move-object v15, v6

    move-object v6, v9

    move-object/from16 v32, v7

    move-object/from16 v7, v26

    move-object/from16 v33, v9

    move-wide/from16 v9, v30

    :try_start_c
    invoke-direct/range {v1 .. v10}, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$3;-><init>(Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;Lio/olvid/messenger/databases/AppDatabase;Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v12, v15}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 155
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v2

    iget-wide v3, v0, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    iget-wide v5, v13, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v2, v3, v4, v5, v6}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->get(JJ)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object v2

    if-eqz v1, :cond_13

    .line 156
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_f

    .line 160
    :cond_7
    iget-object v1, v11, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->localFile:Ljava/io/File;

    if-eqz v1, :cond_8

    .line 161
    iget-object v1, v11, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->localFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/entity/Fyle;->moveToFyleDirectory(Ljava/lang/String;)V

    move-wide/from16 v9, v30

    move-object/from16 v4, v33

    goto :goto_5

    .line 165
    :cond_8
    iget-object v1, v11, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->uri:Landroid/net/Uri;

    invoke-virtual {v14, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    if-eqz v1, :cond_11

    .line 169
    :try_start_d
    new-instance v3, Ljava/io/FileOutputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    move-object/from16 v4, v33

    :try_start_e
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    const/high16 v5, 0x40000

    :try_start_f
    new-array v5, v5, [B

    .line 172
    :goto_4
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_9

    int-to-long v7, v6

    add-long v7, v27, v7

    const/4 v9, 0x0

    .line 174
    :try_start_10
    invoke-virtual {v3, v5, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V

    long-to-float v6, v7

    move-wide/from16 v9, v30

    long-to-float v14, v9

    div-float/2addr v6, v14

    .line 175
    iput v6, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    .line 176
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v6

    invoke-interface {v6, v2}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-wide/from16 v27, v7

    move-wide/from16 v30, v9

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x1

    goto/16 :goto_9

    :cond_9
    move-wide/from16 v9, v30

    .line 178
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    if-eqz v1, :cond_a

    .line 179
    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_a
    cmp-long v1, v27, v9

    if-nez v1, :cond_10

    .line 186
    :goto_5
    iput-object v4, v0, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    .line 187
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/FyleDao;->update(Lio/olvid/messenger/databases/entity/Fyle;)V

    const/4 v1, 0x2

    .line 189
    iput v1, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    const/4 v3, 0x0

    .line 190
    iput v3, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    .line 191
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v1

    invoke-interface {v1, v2}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    .line 194
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v1

    iget-wide v2, v0, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getForFyleId(J)Ljava/util/List;

    move-result-object v1

    .line 195
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 196
    iget v3, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    const/4 v5, 0x1

    if-eqz v3, :cond_b

    if-eq v3, v5, :cond_b

    goto :goto_6

    :cond_b
    const/4 v3, 0x4

    .line 199
    :try_start_13
    iput v3, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 200
    iput v3, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    .line 201
    iget-object v3, v0, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    iput-object v3, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->filePath:Ljava/lang/String;

    .line 202
    iput-wide v9, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->size:J

    .line 203
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    .line 204
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v3

    iget-object v6, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v6, v2}, Lio/olvid/engine/engine/Engine;->deleteAttachment([BI)V

    goto :goto_6

    :cond_c
    const/4 v5, 0x1

    .line 210
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    iget-wide v1, v13, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->get(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    .line 211
    iget v1, v0, Lio/olvid/messenger/databases/entity/Message;->status:I

    if-nez v1, :cond_f

    .line 214
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v1

    iget-wide v2, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getStatusForMessage(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 215
    sget-object v7, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->imageAndVideoPattern:Ljava/util/regex/Pattern;

    iget-object v6, v6, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_d

    add-int/lit8 v3, v3, 0x1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 220
    :cond_e
    iput v2, v0, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    .line 221
    iput v3, v0, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    .line 222
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V

    const/4 v1, 0x0

    .line 223
    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/entity/Message;->post(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    .line 228
    :cond_f
    :goto_8
    :try_start_14
    invoke-static/range {v32 .. v32}, Lio/olvid/messenger/databases/entity/Fyle;->releaseLock([B)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_1f

    :catchall_5
    move-exception v0

    goto/16 :goto_10

    :catch_1
    move-exception v0

    goto/16 :goto_11

    :cond_10
    const/4 v5, 0x1

    :try_start_15
    const-string v0, "Error copying fyle!"

    .line 181
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    :catchall_6
    move-exception v0

    const/4 v5, 0x1

    move-object v2, v0

    .line 169
    :goto_9
    :try_start_16
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :catchall_7
    move-exception v0

    move-object v6, v0

    .line 178
    :try_start_17
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object v3, v0

    :try_start_18
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v6

    :catchall_9
    move-exception v0

    goto :goto_b

    :catchall_a
    move-exception v0

    move-object/from16 v4, v33

    :goto_b
    const/4 v5, 0x1

    :goto_c
    move-object v2, v0

    goto :goto_d

    :cond_11
    move-object/from16 v4, v33

    const/4 v5, 0x1

    .line 167
    new-instance v0, Ljava/lang/Exception;

    move-object/from16 v2, v29

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    :catchall_b
    move-exception v0

    goto :goto_c

    .line 165
    :goto_d
    :try_start_19
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    :catchall_c
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_12

    .line 179
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    goto :goto_e

    :catchall_d
    move-exception v0

    move-object v1, v0

    :try_start_1b
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12
    :goto_e
    throw v3

    :cond_13
    :goto_f
    move-object/from16 v4, v33

    const/4 v5, 0x1

    .line 157
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v26, v1, v2

    const v3, 0x7f1001fa

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v0, v2, v1}, Lio/olvid/messenger/App;->toast(Ljava/lang/String;II)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    .line 228
    :try_start_1c
    invoke-static/range {v32 .. v32}, Lio/olvid/messenger/databases/entity/Fyle;->releaseLock([B)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8

    return-void

    :catch_2
    move-exception v0

    goto :goto_12

    :catchall_e
    move-exception v0

    move-object/from16 v4, v33

    goto :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v4, v33

    goto :goto_11

    :catchall_f
    move-exception v0

    move-object/from16 v32, v7

    move-object v4, v9

    :goto_10
    const/4 v5, 0x1

    goto :goto_13

    :catch_4
    move-exception v0

    move-object/from16 v32, v7

    move-object v4, v9

    :goto_11
    const/4 v5, 0x1

    .line 226
    :goto_12
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    goto :goto_8

    :catchall_10
    move-exception v0

    .line 228
    :goto_13
    :try_start_1e
    invoke-static/range {v32 .. v32}, Lio/olvid/messenger/databases/entity/Fyle;->releaseLock([B)V

    .line 229
    throw v0

    :catch_5
    move-exception v0

    move-object v4, v9

    goto/16 :goto_1d

    :cond_14
    move-wide v9, v5

    move-object/from16 v32, v7

    move-object v2, v15

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 232
    invoke-static/range {v32 .. v32}, Lio/olvid/messenger/databases/entity/Fyle;->acquireLock([B)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    .line 234
    :try_start_1f
    new-instance v0, Lio/olvid/messenger/databases/entity/Fyle;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_7
    .catchall {:try_start_1f .. :try_end_1f} :catchall_18

    move-object/from16 v6, v32

    :try_start_20
    invoke-direct {v0, v6}, Lio/olvid/messenger/databases/entity/Fyle;-><init>([B)V

    .line 235
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object v7
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_6
    .catchall {:try_start_20 .. :try_end_20} :catchall_17

    move-object/from16 v32, v6

    :try_start_21
    invoke-interface {v7, v0}, Lio/olvid/messenger/databases/dao/FyleDao;->insert(Lio/olvid/messenger/databases/entity/Fyle;)J

    move-result-wide v5

    iput-wide v5, v0, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    .line 236
    iget-wide v5, v0, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    move-object/from16 v29, v2

    iget-wide v1, v13, Lio/olvid/messenger/databases/entity/Message;->id:J

    iget-object v7, v13, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    move-wide/from16 v16, v5

    move-wide/from16 v18, v1

    move-object/from16 v20, v7

    move-object/from16 v21, v4

    move-object/from16 v22, v26

    move-object/from16 v23, v8

    move-wide/from16 v24, v9

    invoke-static/range {v16 .. v25}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->createCopying(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object v1

    .line 244
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->insert(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    .line 246
    iget-object v2, v11, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->localFile:Ljava/io/File;

    if-eqz v2, :cond_15

    .line 247
    iget-object v2, v11, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->localFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/olvid/messenger/databases/entity/Fyle;->moveToFyleDirectory(Ljava/lang/String;)V

    goto :goto_15

    .line 250
    :cond_15
    iget-object v2, v11, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->uri:Landroid/net/Uri;

    invoke-virtual {v14, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_7
    .catchall {:try_start_21 .. :try_end_21} :catchall_18

    if-eqz v2, :cond_1b

    .line 254
    :try_start_22
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_14

    const/high16 v6, 0x40000

    :try_start_23
    new-array v6, v6, [B

    .line 258
    :goto_14
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_16

    int-to-long v14, v7

    add-long v14, v27, v14

    const/4 v8, 0x0

    .line 260
    invoke-virtual {v5, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    long-to-float v7, v14

    long-to-float v8, v9

    div-float/2addr v7, v8

    .line 261
    iput v7, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    .line 262
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v7

    invoke-interface {v7, v1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    move-wide/from16 v27, v14

    goto :goto_14

    .line 264
    :cond_16
    :try_start_24
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_14

    if-eqz v2, :cond_17

    .line 265
    :try_start_25
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 268
    :cond_17
    :goto_15
    iput-object v4, v0, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    .line 269
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/olvid/messenger/databases/dao/FyleDao;->update(Lio/olvid/messenger/databases/entity/Fyle;)V

    const/4 v0, 0x2

    .line 271
    iput v0, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    .line 272
    iput v3, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    .line 273
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    .line 276
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    iget-wide v1, v13, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->get(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    .line 277
    iget v1, v0, Lio/olvid/messenger/databases/entity/Message;->status:I

    if-nez v1, :cond_1a

    .line 280
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v1

    iget-wide v2, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getStatusForMessage(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 281
    sget-object v6, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->imageAndVideoPattern:Ljava/util/regex/Pattern;

    iget-object v5, v5, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_18

    add-int/lit8 v3, v3, 0x1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 286
    :cond_19
    iput v2, v0, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    .line 287
    iput v3, v0, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    .line 288
    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/entity/Message;->post(Z)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_7
    .catchall {:try_start_25 .. :try_end_25} :catchall_18

    .line 294
    :cond_1a
    :goto_17
    :try_start_26
    invoke-static/range {v32 .. v32}, Lio/olvid/messenger/databases/entity/Fyle;->releaseLock([B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_8

    goto/16 :goto_1f

    :catchall_11
    move-exception v0

    move-object v1, v0

    .line 254
    :try_start_27
    throw v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    :catchall_12
    move-exception v0

    move-object v3, v0

    .line 264
    :try_start_28
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_13

    goto :goto_18

    :catchall_13
    move-exception v0

    move-object v5, v0

    :try_start_29
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v3

    :catchall_14
    move-exception v0

    move-object v1, v0

    goto :goto_19

    .line 252
    :cond_1b
    new-instance v0, Ljava/lang/Exception;

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    .line 250
    :goto_19
    :try_start_2a
    throw v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_15

    :catchall_15
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_1c

    .line 265
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v0

    move-object v2, v0

    :try_start_2c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1a
    throw v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_7
    .catchall {:try_start_2c .. :try_end_2c} :catchall_18

    :catchall_17
    move-exception v0

    move-object/from16 v32, v6

    goto :goto_1c

    :catch_6
    move-exception v0

    move-object/from16 v32, v6

    goto :goto_1b

    :catchall_18
    move-exception v0

    goto :goto_1c

    :catch_7
    move-exception v0

    .line 292
    :goto_1b
    :try_start_2d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    goto :goto_17

    .line 294
    :goto_1c
    :try_start_2e
    invoke-static/range {v32 .. v32}, Lio/olvid/messenger/databases/entity/Fyle;->releaseLock([B)V

    .line 295
    throw v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_8

    :catch_8
    move-exception v0

    :goto_1d
    move-object v1, v4

    goto :goto_1e

    :cond_1d
    :try_start_2f
    const-string v0, "Unable to compute SHA256 of Uri"

    .line 89
    invoke-static {v0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_9

    :catch_9
    move-exception v0

    goto :goto_1e

    :catch_a
    move-exception v0

    move-object/from16 v26, v1

    .line 298
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v1, :cond_1e

    .line 300
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1e
    if-eqz v26, :cond_1f

    .line 305
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v26, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v0, v3, v1}, Lio/olvid/messenger/App;->toast(Ljava/lang/String;II)V

    goto :goto_1f

    :cond_1f
    const/4 v3, 0x0

    const v0, 0x7f1001f7

    .line 307
    invoke-static {v0, v3}, Lio/olvid/messenger/App;->toast(II)V

    :catch_b
    :cond_20
    :goto_1f
    return-void
.end method
