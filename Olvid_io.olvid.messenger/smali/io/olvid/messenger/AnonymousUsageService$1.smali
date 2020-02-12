.class final Lio/olvid/messenger/AnonymousUsageService$1;
.super Ljava/lang/Thread;
.source "AnonymousUsageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/AnonymousUsageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 93
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->anonymousUsageLogItemDao()Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;

    move-result-object v1

    invoke-interface {v1}, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;->getAll()Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v4, v1

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    move-wide v6, v4

    move-wide v4, v2

    .line 106
    :catch_0
    :cond_1
    :goto_1
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AnonymousUsageService;->access$000()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/AnonymousUsageService$LogItem;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    new-instance v8, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v9, v1, Lio/olvid/messenger/AnonymousUsageService$LogItem;->identityBytes:[B

    invoke-direct {v8, v9}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    .line 113
    invoke-static {}, Lio/olvid/messenger/AnonymousUsageService;->access$100()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 114
    invoke-static {}, Lio/olvid/messenger/AnonymousUsageService;->access$100()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :goto_2
    move-object v13, v9

    goto :goto_3

    .line 116
    :cond_2
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v9

    iget-object v10, v1, Lio/olvid/messenger/AnonymousUsageService$LogItem;->identityBytes:[B

    invoke-interface {v9, v10}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->get([B)Lio/olvid/messenger/databases/entity/OwnedIdentity;

    move-result-object v9

    if-nez v9, :cond_3

    goto :goto_1

    .line 121
    :cond_3
    :try_start_1
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v10

    iget-object v9, v9, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {v10, v9}, Lio/olvid/engine/engine/Engine;->getApiKeyForOwnedIdentity([B)Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    .line 122
    invoke-static {}, Lio/olvid/messenger/AnonymousUsageService;->access$100()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 130
    :goto_3
    invoke-static {}, Lio/olvid/messenger/AnonymousUsageService;->access$200()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 131
    invoke-static {}, Lio/olvid/messenger/AnonymousUsageService;->access$200()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v12, v8

    goto :goto_4

    .line 133
    :cond_4
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->anonymizerForOwnedIdentityDao()Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;

    move-result-object v9

    iget-object v10, v1, Lio/olvid/messenger/AnonymousUsageService$LogItem;->identityBytes:[B

    invoke-interface {v9, v10}, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;->get([B)Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;

    move-result-object v9

    if-nez v9, :cond_5

    .line 135
    new-instance v9, Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;

    iget-object v10, v1, Lio/olvid/messenger/AnonymousUsageService$LogItem;->identityBytes:[B

    invoke-direct {v9, v10}, Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;-><init>([B)V

    .line 136
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->anonymizerForOwnedIdentityDao()Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;

    move-result-object v10

    invoke-interface {v10, v9}, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;->insert(Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;)V

    .line 138
    :cond_5
    iget-object v9, v9, Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;->pseudo:Ljava/lang/String;

    .line 139
    invoke-static {}, Lio/olvid/messenger/AnonymousUsageService;->access$200()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v9

    .line 142
    :goto_4
    new-instance v8, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;

    iget-wide v14, v1, Lio/olvid/messenger/AnonymousUsageService$LogItem;->timestamp:J

    iget v9, v1, Lio/olvid/messenger/AnonymousUsageService$LogItem;->type:I

    iget-object v1, v1, Lio/olvid/messenger/AnonymousUsageService$LogItem;->extraCount:Ljava/lang/Integer;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v17}, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/Integer;)V

    .line 143
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->anonymousUsageLogItemDao()Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;

    move-result-object v1

    invoke-interface {v1, v8}, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;->insert(Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;)V

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-ltz v1, :cond_1

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-wide/32 v10, 0x927c0

    cmp-long v1, v8, v10

    if-lez v1, :cond_1

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 149
    invoke-static {}, Lio/olvid/messenger/AnonymousUsageService;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 150
    :try_start_2
    invoke-static {}, Lio/olvid/messenger/AnonymousUsageService;->access$300()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit v1

    move-wide v6, v2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
