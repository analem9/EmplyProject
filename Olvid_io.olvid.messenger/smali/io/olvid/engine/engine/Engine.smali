.class public Lio/olvid/engine/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lio/olvid/engine/datatypes/NotificationListener;
.implements Lio/olvid/engine/engine/datatypes/UserInterfaceDialogListener;
.implements Lio/olvid/engine/engine/datatypes/EngineSessionFactory;
.implements Lio/olvid/engine/engine/types/EngineAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/engine/Engine$EngineNotification;,
        Lio/olvid/engine/engine/Engine$NotificationWorker;
    }
.end annotation


# instance fields
.field private final channelManager:Lio/olvid/engine/channel/ChannelManager;

.field private final createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

.field private final dbPath:Ljava/lang/String;

.field private final fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

.field private final identityManager:Lio/olvid/engine/identity/IdentityManager;

.field private instanceCounter:J

.field private final jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference<",
            "Lio/olvid/engine/engine/types/EngineNotificationListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notificationManager:Lio/olvid/engine/notification/NotificationManager;

.field private final notificationQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lio/olvid/engine/engine/Engine$EngineNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final prng:Lio/olvid/engine/crypto/PRNGService;

.field private final protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

.field private final sendManager:Lio/olvid/engine/networksend/SendManager;


# direct methods
.method public constructor <init>(Ljava/io/File;Lio/olvid/engine/Logger$LogOutputter;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, " TO "

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 101
    iput-wide v1, p0, Lio/olvid/engine/engine/Engine;->instanceCounter:J

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/olvid/engine/engine/Engine;->listeners:Ljava/util/HashMap;

    .line 103
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lio/olvid/engine/engine/Engine;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lio/olvid/engine/engine/Engine;->notificationQueue:Ljava/util/concurrent/BlockingQueue;

    .line 105
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/olvid/engine/engine/Engine$NotificationWorker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/olvid/engine/engine/Engine$NotificationWorker;-><init>(Lio/olvid/engine/engine/Engine;Lio/olvid/engine/engine/Engine$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 107
    invoke-static {p2}, Lio/olvid/engine/Logger;->setOutputter(Lio/olvid/engine/Logger$LogOutputter;)V

    .line 108
    invoke-static {p3}, Lio/olvid/engine/Logger;->setOutputLogLevel(I)V

    const/4 p2, 0x0

    .line 110
    invoke-static {p2}, Lio/olvid/engine/crypto/Suite;->getDefaultPRNGService(I)Lio/olvid/engine/crypto/PRNGService;

    move-result-object p2

    iput-object p2, p0, Lio/olvid/engine/engine/Engine;->prng:Lio/olvid/engine/crypto/PRNGService;

    .line 112
    new-instance p2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object p2, p0, Lio/olvid/engine/engine/Engine;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 113
    iget-object p2, p0, Lio/olvid/engine/engine/Engine;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object p3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    if-nez p1, :cond_0

    .line 116
    new-instance p1, Ljava/io/File;

    const-string p2, "java.io.tmpdir"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    :cond_0
    new-instance p2, Ljava/io/File;

    const-string p3, "engine_db.sqlite"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/olvid/engine/engine/Engine;->dbPath:Ljava/lang/String;

    .line 119
    new-instance p2, Ljava/io/File;

    const-string p3, "inbound_attachments"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 122
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    .line 124
    new-instance v1, Ljava/io/File;

    const-string v2, "identity_photos"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 130
    :try_start_0
    iget-object p2, p0, Lio/olvid/engine/engine/Engine;->dbPath:Ljava/lang/String;

    invoke-static {p2}, Lio/olvid/engine/datatypes/Session;->getUpgradeTablesSession(Ljava/lang/String;)Lio/olvid/engine/datatypes/Session;

    move-result-object p2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :try_start_1
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 132
    invoke-static {p2}, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 133
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 134
    invoke-direct {p0, p2}, Lio/olvid/engine/engine/Engine;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;->get(Lio/olvid/engine/engine/datatypes/EngineSession;)Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 138
    invoke-virtual {v1}, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;->getVersion()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING ENGINE DB SCHEMA VERSION CHANGED FROM "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;->getVersion()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;->getVersion()I

    move-result v2

    :goto_0
    if-ge v2, v3, :cond_1

    .line 141
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING    -  STEP VERSION "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 143
    invoke-static {p2, v2, v5}, Lio/olvid/engine/engine/Engine;->upgradeTables(Lio/olvid/engine/datatypes/Session;II)V

    .line 144
    invoke-static {p2, v2, v5}, Lio/olvid/engine/channel/ChannelManager;->upgradeTables(Lio/olvid/engine/datatypes/Session;II)V

    .line 145
    invoke-static {p2, v2, v5}, Lio/olvid/engine/identity/IdentityManager;->upgradeTables(Lio/olvid/engine/datatypes/Session;II)V

    .line 146
    invoke-static {p2, v2, v5}, Lio/olvid/engine/networkfetch/FetchManager;->upgradeTables(Lio/olvid/engine/datatypes/Session;II)V

    .line 147
    invoke-static {p2, v2, v5}, Lio/olvid/engine/networksend/SendManager;->upgradeTables(Lio/olvid/engine/datatypes/Session;II)V

    .line 148
    invoke-static {p2, v2, v5}, Lio/olvid/engine/protocol/ProtocolManager;->upgradeTables(Lio/olvid/engine/datatypes/Session;II)V

    .line 149
    invoke-virtual {v1, v5}, Lio/olvid/engine/engine/databases/EngineDbSchemaVersion;->update(I)V

    .line 150
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move v2, v5

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 153
    :try_start_2
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Session;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    :cond_2
    new-instance p2, Lio/olvid/engine/metamanager/MetaManager;

    invoke-direct {p2}, Lio/olvid/engine/metamanager/MetaManager;-><init>()V

    .line 160
    new-instance v0, Lio/olvid/engine/engine/Engine$1;

    invoke-direct {v0, p0}, Lio/olvid/engine/engine/Engine$1;-><init>(Lio/olvid/engine/engine/Engine;)V

    iput-object v0, p0, Lio/olvid/engine/engine/Engine;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    .line 166
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    invoke-virtual {p2, v0}, Lio/olvid/engine/metamanager/MetaManager;->registerImplementedDelegates(Ljava/lang/Object;)V

    .line 168
    :try_start_3
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 169
    :try_start_4
    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v1}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 170
    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    .line 171
    :try_start_5
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    .line 176
    :cond_3
    new-instance v0, Lio/olvid/engine/channel/ChannelManager;

    invoke-direct {v0, p2}, Lio/olvid/engine/channel/ChannelManager;-><init>(Lio/olvid/engine/metamanager/MetaManager;)V

    iput-object v0, p0, Lio/olvid/engine/engine/Engine;->channelManager:Lio/olvid/engine/channel/ChannelManager;

    .line 177
    new-instance v0, Lio/olvid/engine/identity/IdentityManager;

    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0, p2, p1, v1}, Lio/olvid/engine/identity/IdentityManager;-><init>(Lio/olvid/engine/metamanager/MetaManager;Ljava/lang/String;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    iput-object v0, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    .line 178
    new-instance p1, Lio/olvid/engine/networkfetch/FetchManager;

    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->prng:Lio/olvid/engine/crypto/PRNGService;

    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p1, p2, p3, v0, v1}, Lio/olvid/engine/networkfetch/FetchManager;-><init>(Lio/olvid/engine/metamanager/MetaManager;Ljava/lang/String;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    iput-object p1, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    .line 179
    new-instance p1, Lio/olvid/engine/networksend/SendManager;

    iget-object p3, p0, Lio/olvid/engine/engine/Engine;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-direct {p1, p2, p3}, Lio/olvid/engine/networksend/SendManager;-><init>(Lio/olvid/engine/metamanager/MetaManager;Lio/olvid/engine/crypto/PRNGService;)V

    iput-object p1, p0, Lio/olvid/engine/engine/Engine;->sendManager:Lio/olvid/engine/networksend/SendManager;

    .line 180
    new-instance p1, Lio/olvid/engine/notification/NotificationManager;

    invoke-direct {p1, p2}, Lio/olvid/engine/notification/NotificationManager;-><init>(Lio/olvid/engine/metamanager/MetaManager;)V

    iput-object p1, p0, Lio/olvid/engine/engine/Engine;->notificationManager:Lio/olvid/engine/notification/NotificationManager;

    .line 181
    new-instance p1, Lio/olvid/engine/protocol/ProtocolManager;

    iget-object p3, p0, Lio/olvid/engine/engine/Engine;->prng:Lio/olvid/engine/crypto/PRNGService;

    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p1, p2, p3, v0}, Lio/olvid/engine/protocol/ProtocolManager;-><init>(Lio/olvid/engine/metamanager/MetaManager;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    iput-object p1, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    .line 183
    invoke-direct {p0}, Lio/olvid/engine/engine/Engine;->registerToInternalNotifications()V

    .line 184
    invoke-virtual {p2}, Lio/olvid/engine/metamanager/MetaManager;->initializationComplete()V

    return-void

    :catchall_0
    move-exception p1

    .line 168
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_4

    .line 171
    :try_start_7
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p3

    :try_start_8
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p2
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 173
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to create engine databases"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_5
    :try_start_9
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    .line 130
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p3

    if-eqz p2, :cond_6

    .line 153
    :try_start_b
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Session;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p3
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_1

    :catch_1
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 155
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to check for tables upgrade"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lio/olvid/engine/engine/Engine;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lio/olvid/engine/engine/Engine;->dbPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/engine/engine/Engine;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 76
    iget-object p0, p0, Lio/olvid/engine/engine/Engine;->notificationQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$300(Lio/olvid/engine/engine/Engine;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 76
    iget-object p0, p0, Lio/olvid/engine/engine/Engine;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/engine/engine/Engine;)Ljava/util/HashMap;
    .locals 0

    .line 76
    iget-object p0, p0, Lio/olvid/engine/engine/Engine;->listeners:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lio/olvid/engine/engine/Engine;Ljava/lang/String;J)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lio/olvid/engine/engine/Engine;->removeNotificationListener(Ljava/lang/String;J)V

    return-void
.end method

.method private createDialog(Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;)Lio/olvid/engine/engine/types/ObvDialog;
    .locals 11

    .line 924
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    .line 926
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getDialogType()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v1

    .line 927
    iget v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->id:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 1023
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown DialogType "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lio/olvid/engine/datatypes/containers/DialogType;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v4

    .line 1019
    :pswitch_0
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->serializedGroupDetails:Ljava/lang/String;

    iget-object v3, v1, Lio/olvid/engine/datatypes/containers/DialogType;->groupUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v3

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v3, v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createGroupJoined(Ljava/lang/String;[B[B)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    goto/16 :goto_2

    .line 1012
    :pswitch_1
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    if-eqz v2, :cond_0

    .line 1013
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    .line 1015
    :cond_0
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    invoke-static {v2, v1, v4}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createAutoConfirmedContactIntroduction([BLjava/lang/String;[B)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    goto/16 :goto_2

    .line 995
    :pswitch_2
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    if-eqz v2, :cond_1

    .line 996
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    :cond_1
    move-object v7, v4

    .line 998
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->pendingGroupMemberIdentities:[Lio/olvid/engine/datatypes/Identity;

    array-length v2, v2

    new-array v8, v2, [Lio/olvid/engine/engine/types/identities/ObvIdentity;

    .line 999
    :goto_0
    array-length v2, v8

    if-ge v3, v2, :cond_2

    .line 1001
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/engine/Engine;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v4, v1, Lio/olvid/engine/datatypes/containers/DialogType;->pendingGroupMemberSerializedDetails:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-class v5, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v2, v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 1002
    new-instance v4, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    iget-object v5, v1, Lio/olvid/engine/datatypes/containers/DialogType;->pendingGroupMemberIdentities:[Lio/olvid/engine/datatypes/Identity;

    aget-object v5, v5, v3

    invoke-direct {v4, v5, v2}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    aput-object v4, v8, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1007
    :catch_0
    :cond_2
    iget-object v5, v1, Lio/olvid/engine/datatypes/containers/DialogType;->serializedGroupDetails:Ljava/lang/String;

    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->groupUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v6

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static/range {v5 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createIncreaseGroupOwnerTrustLevel(Ljava/lang/String;[B[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;J)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    goto/16 :goto_2

    .line 987
    :pswitch_3
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    if-eqz v2, :cond_3

    .line 988
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    .line 990
    :cond_3
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    iget-object v3, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createIncreaseMediatorTrustLevel([BLjava/lang/String;[BJ)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    goto/16 :goto_2

    .line 970
    :pswitch_4
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    if-eqz v2, :cond_4

    .line 971
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    :cond_4
    move-object v7, v4

    .line 973
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->pendingGroupMemberIdentities:[Lio/olvid/engine/datatypes/Identity;

    array-length v2, v2

    new-array v8, v2, [Lio/olvid/engine/engine/types/identities/ObvIdentity;

    .line 974
    :goto_1
    array-length v2, v8

    if-ge v3, v2, :cond_5

    .line 976
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/engine/Engine;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v4, v1, Lio/olvid/engine/datatypes/containers/DialogType;->pendingGroupMemberSerializedDetails:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-class v5, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v2, v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 977
    new-instance v4, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    iget-object v5, v1, Lio/olvid/engine/datatypes/containers/DialogType;->pendingGroupMemberIdentities:[Lio/olvid/engine/datatypes/Identity;

    aget-object v5, v5, v3

    invoke-direct {v4, v5, v2}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    aput-object v4, v8, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 982
    :catch_1
    :cond_5
    iget-object v5, v1, Lio/olvid/engine/datatypes/containers/DialogType;->serializedGroupDetails:Ljava/lang/String;

    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->groupUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v6

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static/range {v5 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createAcceptGroupInvite(Ljava/lang/String;[B[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;J)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    goto/16 :goto_2

    .line 962
    :pswitch_5
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    if-eqz v2, :cond_6

    .line 963
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    .line 965
    :cond_6
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    invoke-static {v2, v1, v4}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createMediatorInviteAccepted([BLjava/lang/String;[B)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    goto/16 :goto_2

    .line 954
    :pswitch_6
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    if-eqz v2, :cond_7

    .line 955
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    .line 957
    :cond_7
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    iget-object v3, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createAcceptMediatorInvite([BLjava/lang/String;[BJ)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    goto :goto_2

    .line 949
    :pswitch_7
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createInviteAccepted([BLjava/lang/String;)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    goto :goto_2

    .line 945
    :pswitch_8
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createMutualTrustConfirmed([BLjava/lang/String;)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    goto :goto_2

    .line 941
    :pswitch_9
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    iget-object v3, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    iget-object v4, v1, Lio/olvid/engine/datatypes/containers/DialogType;->sasToDisplay:[B

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->sasEntered:[B

    invoke-static {v2, v3, v4, v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createSasConfirmed([BLjava/lang/String;[B[B)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    goto :goto_2

    .line 937
    :pswitch_a
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    iget-object v3, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    iget-object v4, v1, Lio/olvid/engine/datatypes/containers/DialogType;->sasToDisplay:[B

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createSasExchange([BLjava/lang/String;[BJ)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    goto :goto_2

    .line 933
    :pswitch_b
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    iget-object v3, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createAcceptInvite([BLjava/lang/String;J)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    goto :goto_2

    .line 929
    :pswitch_c
    iget-object v2, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/DialogType;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->createInviteSent([BLjava/lang/String;)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    .line 1026
    :goto_2
    new-instance v2, Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v3, p1, v0, v1}, Lio/olvid/engine/engine/types/ObvDialog;-><init>(Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;[BLio/olvid/engine/engine/types/ObvDialog$Category;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private deleteAttachment(Lio/olvid/engine/datatypes/UID;I)V
    .locals 3

    .line 1841
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1, p2}, Lio/olvid/engine/networkfetch/FetchManager;->deleteAttachment(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;I)V

    .line 1843
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1844
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1841
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_0

    .line 1844
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1845
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Posting engine notification with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 229
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->notificationQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lio/olvid/engine/engine/Engine$EngineNotification;

    invoke-direct {v1, p0, p1, p2}, Lio/olvid/engine/engine/Engine$EngineNotification;-><init>(Lio/olvid/engine/engine/Engine;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerToInternalNotifications()V
    .locals 35

    move-object/from16 v0, p0

    const-string v1, "channel_notification_new_ui_dialog"

    const-string v2, "channel_notification_channel_confirmed"

    const-string v3, "channel_notification_channel_deleted"

    const-string v4, "network_fetch_notification_message_payload_set"

    const-string v5, "network_fetch_notification_attachment_download_failed"

    const-string v6, "network_fetch_notification_attachment_download_finished"

    const-string v7, "network_fetch_notification_attachment_download_progress"

    const-string v8, "network_fetch_notification_attachment_download_was_paused"

    const-string v9, "network_fetch_notification_server_session_created"

    const-string v10, "network_fetch_notification_api_key_rejected_by_server"

    const-string v11, "network_fetch_notification_server_polled"

    const-string v12, "netword_fetch_notification_return_receipt_received"

    const-string v13, "identity_manager_notification_owned_identity_list_updated"

    const-string v14, "identity_manager_notification_owned_identity_published_details_updated"

    const-string v15, "identity_manager_notification_new_contact_identity"

    const-string v16, "identity_manager_notification_contact_identity_deleted"

    const-string v17, "identity_manager_notification_new_contact_device"

    const-string v18, "identity_manager_notification_group_created"

    const-string v19, "identity_manager_notification_group_deleted"

    const-string v20, "identity_manager_notification_group_trusted_details_updated"

    const-string v21, "identity_manager_notification_group_published_details_updated"

    const-string v22, "identity_manager_notification_new_group_published_details"

    const-string v23, "identity_manager_notification_group_member_added"

    const-string v24, "identity_manager_notification_group_member_removed"

    const-string v25, "identity_manager_notification_pending_group_member_added"

    const-string v26, "identity_manager_notification_pending_group_member_removed"

    const-string v27, "identity_manager_notification_pending_group_member_declined_toggled"

    const-string v28, "identity_manager_notification_new_contact_published_details"

    const-string v29, "identity_manager_notification_contact_photo_set"

    const-string v30, "identity_manager_notification_contact_trusted_details_updated"

    const-string v31, "identity_manager_notification_latest_owned_identity_details_updated"

    const-string v32, "network_send_notification_attachment_upload_progress"

    const-string v33, "network_send_notification_attachment_upload_finished"

    const-string v34, "network_send_notification_message_uploaded"

    .line 284
    filled-new-array/range {v1 .. v34}, [Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 320
    iget-object v5, v0, Lio/olvid/engine/engine/Engine;->notificationManager:Lio/olvid/engine/notification/NotificationManager;

    invoke-virtual {v5, v4, v0}, Lio/olvid/engine/notification/NotificationManager;->addListener(Ljava/lang/String;Lio/olvid/engine/datatypes/NotificationListener;)J

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeNotificationListener(Ljava/lang/String;J)V
    .locals 1

    .line 217
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 218
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 220
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    iget-object p1, p0, Lio/olvid/engine/engine/Engine;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method private static upgradeTables(Lio/olvid/engine/datatypes/Session;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 188
    invoke-static {p0, p1, p2}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    return-void
.end method

.method private wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/engine/datatypes/EngineSession;
    .locals 2

    .line 899
    new-instance v0, Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0, p1, p0, v1}, Lio/olvid/engine/engine/datatypes/EngineSession;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/engine/datatypes/UserInterfaceDialogListener;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v0
.end method


# virtual methods
.method public abortProtocol(Lio/olvid/engine/engine/types/ObvDialog;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1477
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1478
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v0, v1}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->get(Lio/olvid/engine/engine/datatypes/EngineSession;Ljava/util/UUID;)Lio/olvid/engine/engine/databases/UserInterfaceDialog;

    move-result-object v1

    .line 1480
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 1481
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getBytesOwnedIdentity()[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1483
    iget-object v3, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1484
    invoke-virtual {v1}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->delete()V

    .line 1485
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    iget-object v3, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v3, v2, p1}, Lio/olvid/engine/protocol/ProtocolManager;->abortProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V

    .line 1486
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1487
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1477
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 1487
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public addNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V
    .locals 4

    .line 195
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 196
    iget-wide v0, p0, Lio/olvid/engine/engine/Engine;->instanceCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 197
    iput-wide v2, p0, Lio/olvid/engine/engine/Engine;->instanceCounter:J

    .line 198
    invoke-interface {p2, v0, v1}, Lio/olvid/engine/engine/types/EngineNotificationListener;->setEngineNotificationListenerRegistrationNumber(J)V

    .line 199
    iget-object v2, p0, Lio/olvid/engine/engine/Engine;->listeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 201
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 202
    iget-object v3, p0, Lio/olvid/engine/engine/Engine;->listeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 205
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object p1, p0, Lio/olvid/engine/engine/Engine;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 326
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "network_fetch_notification_attachment_download_finished"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "network_fetch_notification_attachment_download_progress"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "identity_manager_notification_contact_identity_deleted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "network_fetch_notification_attachment_download_failed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "network_send_notification_attachment_upload_finished"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1f

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "identity_manager_notification_group_published_details_updated"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "channel_notification_channel_deleted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "channel_notification_new_ui_dialog"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "identity_manager_notification_new_contact_published_details"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "identity_manager_notification_new_group_published_details"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x21

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "network_send_notification_attachment_upload_progress"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1e

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "identity_manager_notification_latest_owned_identity_details_updated"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "identity_manager_notification_new_contact_device"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "network_fetch_notification_message_payload_set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "identity_manager_notification_pending_group_member_declined_toggled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "network_fetch_notification_server_session_created"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "identity_manager_notification_group_trusted_details_updated"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "identity_manager_notification_group_member_removed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "identity_manager_notification_group_member_added"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "network_fetch_notification_api_key_rejected_by_server"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "identity_manager_notification_owned_identity_published_details_updated"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "network_fetch_notification_server_polled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "channel_notification_channel_confirmed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "identity_manager_notification_pending_group_member_added"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "network_send_notification_message_uploaded"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x20

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "identity_manager_notification_new_contact_identity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_1a
    const-string v3, "identity_manager_notification_group_deleted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto :goto_1

    :sswitch_1b
    const-string v3, "identity_manager_notification_owned_identity_list_updated"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto :goto_1

    :sswitch_1c
    const-string v3, "identity_manager_notification_group_created"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto :goto_1

    :sswitch_1d
    const-string v3, "identity_manager_notification_contact_photo_set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1b

    goto :goto_1

    :sswitch_1e
    const-string v3, "network_fetch_notification_attachment_download_was_paused"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1f
    const-string v3, "netword_fetch_notification_return_receipt_received"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_20
    const-string v3, "identity_manager_notification_pending_group_member_removed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    goto :goto_1

    :sswitch_21
    const-string v3, "identity_manager_notification_contact_trusted_details_updated"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1c

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v6, "uid"

    const-string v7, "progress"

    const-string v8, "attachment_number"

    const-string v9, "message_identifier"

    const-string v10, "bytes_contact_identity"

    const-string v11, "attachmentNumber"

    const-string v12, "messageUid"

    const-string v13, "bytes_group_uid"

    const-string v14, "group_uid"

    const-string v15, "bytes_owned_identity"

    const-string v5, "contact_identity"

    const-string v4, "owned_identity"

    packed-switch v3, :pswitch_data_0

    .line 885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but no handler is set."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 871
    :pswitch_0
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    .line 872
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    if-eqz v0, :cond_2c

    if-nez v2, :cond_1

    goto/16 :goto_14

    .line 877
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 878
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    invoke-virtual {v3, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_new_group_published_details"

    .line 881
    invoke-direct {v1, v0, v3}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 857
    :pswitch_1
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/UID;

    const-string v3, "timestamp_from_server"

    .line 858
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v0, :cond_2c

    if-nez v2, :cond_2

    goto/16 :goto_14

    .line 863
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 864
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v0

    const-string v4, "identifier"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timestamp_from_server"

    .line 865
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_message_uploaded"

    .line 867
    invoke-direct {v1, v0, v3}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 843
    :pswitch_2
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/UID;

    .line 844
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v0, :cond_3

    goto/16 :goto_14

    .line 849
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 850
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_attachment_uploaded"

    .line 853
    invoke-direct {v1, v0, v3}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 827
    :pswitch_3
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/UID;

    .line 828
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 829
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    if-nez v0, :cond_4

    goto/16 :goto_14

    .line 834
    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 835
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_upload_attachment_progress"

    .line 839
    invoke-direct {v1, v0, v4}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 814
    :pswitch_4
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    const-string v3, "has_unpublished"

    .line 815
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v0, :cond_5

    goto/16 :goto_14

    .line 819
    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 820
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "has_unpublished"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_owned_identity_latest_details_updated"

    .line 823
    invoke-direct {v1, v0, v3}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 798
    :pswitch_5
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    .line 799
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/Identity;

    const-string v4, "identity_details"

    .line 800
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    if-eqz v0, :cond_2c

    if-nez v3, :cond_6

    goto/16 :goto_14

    .line 805
    :cond_6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 806
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "identity_details"

    .line 808
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_contact_published_details_trusted"

    .line 810
    invoke-direct {v1, v0, v4}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 780
    :pswitch_6
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    .line 781
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/Identity;

    const-string v4, "version"

    .line 782
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "is_trusted"

    .line 783
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v0, :cond_2c

    if-nez v3, :cond_7

    goto/16 :goto_14

    .line 788
    :cond_7
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 789
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "version"

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "is_trusted"

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_new_contact_photo"

    .line 794
    invoke-direct {v1, v0, v5}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 766
    :pswitch_7
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    .line 767
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/Identity;

    if-eqz v0, :cond_2c

    if-nez v2, :cond_8

    goto/16 :goto_14

    .line 772
    :cond_8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 773
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_new_contact_published_details"

    .line 776
    invoke-direct {v1, v0, v3}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 748
    :pswitch_8
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 749
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/Identity;

    .line 750
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/engine/datatypes/Identity;

    const-string v5, "declined"

    .line 751
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_2c

    if-nez v4, :cond_9

    goto/16 :goto_14

    .line 756
    :cond_9
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 757
    invoke-virtual {v5, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "declined"

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_pending_group_member_decline_toggled"

    .line 762
    invoke-direct {v1, v0, v5}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 724
    :pswitch_9
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 725
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/Identity;

    .line 726
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/engine/datatypes/Identity;

    const-string v6, "contact_serialized_details"

    .line 727
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_2c

    if-eqz v4, :cond_2c

    if-nez v2, :cond_a

    goto/16 :goto_14

    .line 734
    :cond_a
    :try_start_0
    iget-object v6, v1, Lio/olvid/engine/engine/Engine;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v7, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v6, v2, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/engine/types/JsonIdentityDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 739
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 740
    invoke-virtual {v6, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    new-instance v0, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-direct {v0, v4, v2}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_pending_group_member_removed"

    .line 744
    invoke-direct {v1, v0, v6}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 700
    :pswitch_a
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 701
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/Identity;

    .line 702
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/engine/datatypes/Identity;

    const-string v6, "contact_serialized_details"

    .line 703
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_2c

    if-eqz v4, :cond_2c

    if-nez v2, :cond_b

    goto/16 :goto_14

    .line 710
    :cond_b
    :try_start_1
    iget-object v6, v1, Lio/olvid/engine/engine/Engine;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v7, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v6, v2, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/engine/types/JsonIdentityDetails;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 715
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 716
    invoke-virtual {v6, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    new-instance v0, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-direct {v0, v4, v2}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_pending_group_member_added"

    .line 720
    invoke-direct {v1, v0, v6}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 685
    :pswitch_b
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 686
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/Identity;

    const-string v4, "group_name"

    .line 687
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_2c

    if-nez v2, :cond_c

    goto/16 :goto_14

    .line 692
    :cond_c
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 693
    invoke-virtual {v4, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group_name"

    .line 695
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_group_published_details_updated"

    .line 696
    invoke-direct {v1, v0, v4}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 669
    :pswitch_c
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 670
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/Identity;

    .line 671
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/Identity;

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_2c

    if-nez v2, :cond_d

    goto/16 :goto_14

    .line 676
    :cond_d
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 677
    invoke-virtual {v6, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_group_member_removed"

    .line 681
    invoke-direct {v1, v0, v6}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 653
    :pswitch_d
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 654
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/Identity;

    .line 655
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/Identity;

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_2c

    if-nez v2, :cond_e

    goto/16 :goto_14

    .line 660
    :cond_e
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 661
    invoke-virtual {v6, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_group_member_added"

    .line 665
    invoke-direct {v1, v0, v6}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 637
    :pswitch_e
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 638
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/Identity;

    const-string v4, "group_details"

    .line 639
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_2c

    if-nez v2, :cond_f

    goto/16 :goto_14

    .line 644
    :cond_f
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 645
    invoke-virtual {v4, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group_details"

    .line 647
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_group_published_details_trusted"

    .line 649
    invoke-direct {v1, v0, v4}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 621
    :pswitch_f
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 624
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/Identity;

    if-eqz v0, :cond_2c

    if-nez v2, :cond_10

    goto/16 :goto_14

    .line 629
    :cond_10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "bytes_group_owner_and_uid"

    .line 630
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_group_deleted"

    .line 633
    invoke-direct {v1, v0, v3}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 561
    :pswitch_10
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 562
    :try_start_3
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 563
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/Identity;

    if-eqz v0, :cond_17

    if-nez v2, :cond_11

    goto/16 :goto_8

    .line 568
    :cond_11
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 569
    iget-object v5, v1, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v6, v3, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v5, v6, v2, v0}, Lio/olvid/engine/identity/IdentityManager;->getGroupWithDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/GroupWithDetails;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_12

    if-eqz v3, :cond_2c

    .line 616
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_14

    .line 574
    :cond_12
    :try_start_5
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getGroupMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    array-length v5, v5

    new-array v10, v5, [[B

    const/4 v5, 0x0

    .line 575
    :goto_3
    array-length v6, v10

    if-ge v5, v6, :cond_13

    .line 576
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getGroupMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v6

    aput-object v6, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 578
    :cond_13
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v5

    array-length v5, v5

    new-array v11, v5, [Lio/olvid/engine/engine/types/identities/ObvIdentity;

    const/4 v5, 0x0

    .line 579
    :goto_4
    array-length v6, v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ge v5, v6, :cond_14

    .line 581
    :try_start_6
    iget-object v6, v1, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    invoke-virtual {v6}, Lio/olvid/engine/identity/IdentityManager;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v6

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v7

    aget-object v7, v7, v5

    iget-object v7, v7, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->serializedDetails:Ljava/lang/String;

    const-class v8, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v6, v7, v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 582
    new-instance v7, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v8

    aget-object v8, v8, v5

    iget-object v8, v8, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-direct {v7, v8, v6}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    aput-object v7, v11, v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 584
    :catch_0
    :try_start_7
    new-instance v6, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v7

    aget-object v7, v7, v5

    iget-object v7, v7, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    aput-object v6, v11, v5

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 587
    :cond_14
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getDeclinedPendingMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    array-length v5, v5

    new-array v12, v5, [[B

    const/4 v5, 0x0

    .line 588
    :goto_6
    array-length v6, v12

    if-ge v5, v6, :cond_15

    .line 589
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getDeclinedPendingMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v6

    aput-object v6, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 592
    :cond_15
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    if-nez v5, :cond_16

    .line 593
    new-instance v5, Lio/olvid/engine/engine/types/identities/ObvGroup;

    .line 594
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getGroupOwnerAndUid()[B

    move-result-object v7

    .line 595
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getPublishedGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v8

    .line 596
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v9

    const/4 v13, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lio/olvid/engine/engine/types/identities/ObvGroup;-><init>([BLio/olvid/engine/engine/types/JsonGroupDetails;[B[[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;[[B[B)V

    goto :goto_7

    .line 603
    :cond_16
    new-instance v5, Lio/olvid/engine/engine/types/identities/ObvGroup;

    .line 604
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getGroupOwnerAndUid()[B

    move-result-object v7

    .line 605
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getLatestOrTrustedGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v8

    .line 606
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v9

    .line 610
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v13

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lio/olvid/engine/engine/types/identities/ObvGroup;-><init>([BLio/olvid/engine/engine/types/JsonGroupDetails;[B[[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;[[B[B)V

    :goto_7
    const-string v0, "group"

    .line 614
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_group_created"

    .line 615
    invoke-direct {v1, v0, v4}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_2c

    goto/16 :goto_2

    :cond_17
    :goto_8
    if-eqz v3, :cond_2c

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 561
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_18

    .line 616
    :try_start_9
    invoke-virtual {v3}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_a
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_9
    throw v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    .line 617
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 542
    :pswitch_11
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    if-nez v0, :cond_19

    goto/16 :goto_14

    .line 546
    :cond_19
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 547
    :try_start_c
    iget-object v3, v1, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v4, v2, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v3, v4, v0}, Lio/olvid/engine/identity/IdentityManager;->getOwnedIdentityPublishedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v3

    const-string v4, "%f %l (%p @ %c)"

    .line 548
    invoke-virtual {v3, v4}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 550
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 551
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "display_name"

    .line 552
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_owned_identity_display_name_changed"

    .line 554
    invoke-direct {v1, v0, v4}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v2, :cond_2c

    .line 555
    :try_start_d
    invoke-virtual {v2}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_14

    :catchall_3
    move-exception v0

    move-object v3, v0

    .line 546
    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_1a

    .line 555
    :try_start_f
    invoke-virtual {v2}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_10
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_a
    throw v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    :catch_2
    move-exception v0

    .line 556
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 524
    :pswitch_12
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    .line 525
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/Identity;

    if-eqz v2, :cond_2c

    if-nez v0, :cond_1b

    goto/16 :goto_14

    .line 531
    :cond_1b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 532
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_new_contact_device"

    .line 535
    invoke-direct {v1, v0, v3}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 506
    :pswitch_13
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    :try_start_12
    const-string v0, "remote_identity_key"

    .line 507
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    const-string v6, "current_device_uid_key"

    .line 508
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/UID;

    if-eqz v0, :cond_1d

    if-nez v2, :cond_1c

    goto :goto_c

    .line 513
    :cond_1c
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 514
    iget-object v7, v1, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v8, v3, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v7, v8, v2}, Lio/olvid/engine/identity/IdentityManager;->getOwnedIdentityForDeviceUid(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    .line 515
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_channel_confirmed_or_deleted"

    .line 518
    invoke-direct {v1, v0, v6}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    if-eqz v3, :cond_2c

    .line 519
    :goto_b
    :try_start_13
    invoke-virtual {v3}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_14

    :cond_1d
    :goto_c
    if-eqz v3, :cond_2c

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 506
    :try_start_14
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :catchall_7
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_1e

    .line 519
    :try_start_15
    invoke-virtual {v3}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    goto :goto_d

    :catchall_8
    move-exception v0

    move-object v3, v0

    :try_start_16
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_d
    throw v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    :catch_3
    move-exception v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 488
    :pswitch_14
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4

    :try_start_18
    const-string v0, "remote_identity_key"

    .line 489
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    const-string v6, "current_device_uid_key"

    .line 490
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/UID;

    if-eqz v0, :cond_20

    if-nez v2, :cond_1f

    goto :goto_f

    .line 495
    :cond_1f
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 496
    iget-object v7, v1, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v8, v3, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v7, v8, v2}, Lio/olvid/engine/identity/IdentityManager;->getOwnedIdentityForDeviceUid(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    .line 497
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_channel_confirmed_or_deleted"

    .line 500
    invoke-direct {v1, v0, v6}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    if-eqz v3, :cond_2c

    .line 501
    :goto_e
    :try_start_19
    invoke-virtual {v3}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    goto/16 :goto_14

    :cond_20
    :goto_f
    if-eqz v3, :cond_2c

    goto :goto_e

    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 488
    :try_start_1a
    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    :catchall_a
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_21

    .line 501
    :try_start_1b
    invoke-virtual {v3}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    goto :goto_10

    :catchall_b
    move-exception v0

    move-object v3, v0

    :try_start_1c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21
    :goto_10
    throw v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4

    :catch_4
    move-exception v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 474
    :pswitch_15
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    .line 475
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/Identity;

    if-eqz v0, :cond_2c

    if-nez v2, :cond_22

    goto/16 :goto_14

    .line 480
    :cond_22
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 481
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_contact_deleted"

    .line 484
    invoke-direct {v1, v0, v3}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 453
    :pswitch_16
    :try_start_1d
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5

    .line 454
    :try_start_1e
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    .line 455
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/Identity;

    if-eqz v0, :cond_24

    if-nez v2, :cond_23

    goto :goto_12

    .line 460
    :cond_23
    iget-object v6, v1, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {v6, v0, v2}, Lio/olvid/engine/protocol/ProtocolManager;->startDeviceDiscoveryProtocol(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    .line 462
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 463
    iget-object v7, v1, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v8, v3, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v7, v8, v0, v2}, Lio/olvid/engine/identity/IdentityManager;->getContactIdentityTrustedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v7

    .line 464
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v2, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-direct {v2, v0, v7}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_new_contact"

    .line 467
    invoke-direct {v1, v0, v6}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    if-eqz v3, :cond_2c

    .line 468
    :goto_11
    :try_start_1f
    invoke-virtual {v3}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5

    goto/16 :goto_14

    :cond_24
    :goto_12
    if-eqz v3, :cond_2c

    goto :goto_11

    :catchall_c
    move-exception v0

    move-object v2, v0

    .line 453
    :try_start_20
    throw v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    :catchall_d
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_25

    .line 468
    :try_start_21
    invoke-virtual {v3}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception v0

    move-object v3, v0

    :try_start_22
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_25
    :goto_13
    throw v4
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_5

    :catch_5
    move-exception v0

    .line 469
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 437
    :pswitch_17
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    const-string v3, "server_uid"

    .line 438
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    const-string v4, "nonce"

    .line 439
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    const-string v5, "encrypted_payload"

    .line 440
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    check-cast v5, [B

    const-string v6, "timestamp"

    .line 441
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 443
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 444
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_uid"

    .line 445
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nonce"

    .line 446
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "encrypted_payload"

    .line 447
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "timestamp"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_return_receipt_received"

    .line 449
    invoke-direct {v1, v0, v2}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 424
    :pswitch_18
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    const-string v3, "success"

    .line 425
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v0, :cond_26

    goto/16 :goto_14

    .line 430
    :cond_26
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 431
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_server_polled"

    .line 433
    invoke-direct {v1, v0, v3}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    :pswitch_19
    const-string v0, "identity"

    .line 413
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    if-nez v0, :cond_27

    goto/16 :goto_14

    .line 418
    :cond_27
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 419
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_api_key_accepted"

    .line 420
    invoke-direct {v1, v0, v2}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    :pswitch_1a
    const-string v0, "identity"

    .line 402
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    if-nez v0, :cond_28

    goto/16 :goto_14

    .line 407
    :cond_28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 408
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_api_key_rejected"

    .line 409
    invoke-direct {v1, v0, v2}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 386
    :pswitch_1b
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/UID;

    .line 387
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 388
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    if-nez v0, :cond_29

    goto/16 :goto_14

    .line 393
    :cond_29
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 394
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_download_attachment_progress"

    .line 398
    invoke-direct {v1, v0, v4}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 374
    :pswitch_1c
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/UID;

    .line 375
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 377
    iget-object v3, v1, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    invoke-static {v3, v0, v2}, Lio/olvid/engine/engine/types/ObvAttachment;->create(Lio/olvid/engine/metamanager/NetworkFetchDelegate;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/engine/types/ObvAttachment;

    move-result-object v0

    .line 379
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "attachment"

    .line 380
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_attachment_downloaded"

    .line 382
    invoke-direct {v1, v0, v2}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 363
    :pswitch_1d
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/UID;

    .line 364
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 366
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 367
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "engine_notification_attachment_failed"

    .line 370
    invoke-direct {v1, v0, v3}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_14

    .line 349
    :pswitch_1e
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/UID;

    .line 351
    new-instance v2, Lio/olvid/engine/engine/types/ObvMessage;

    iget-object v3, v1, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    invoke-direct {v2, v3, v0}, Lio/olvid/engine/engine/types/ObvMessage;-><init>(Lio/olvid/engine/metamanager/NetworkFetchDelegate;Lio/olvid/engine/datatypes/UID;)V

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "message_key"

    .line 354
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "engine_notification_new_message"

    .line 356
    invoke-direct {v1, v2, v0}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_14

    :pswitch_1f
    :try_start_23
    const-string v0, "session_key"

    .line 329
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Session;

    const-string v3, "message_to_send_key"

    .line 330
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    if-nez v2, :cond_2a

    goto :goto_14

    .line 335
    :cond_2a
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getDialogType()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v3

    iget v3, v3, Lio/olvid/engine/datatypes/containers/DialogType;->id:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2b

    .line 336
    invoke-direct {v1, v0}, Lio/olvid/engine/engine/Engine;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getDialogUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v0, v2}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->get(Lio/olvid/engine/engine/datatypes/EngineSession;Ljava/util/UUID;)Lio/olvid/engine/engine/databases/UserInterfaceDialog;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 338
    invoke-virtual {v0}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->delete()V

    goto :goto_14

    .line 341
    :cond_2b
    invoke-direct {v1, v0}, Lio/olvid/engine/engine/Engine;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    invoke-direct {v1, v2}, Lio/olvid/engine/engine/Engine;->createDialog(Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;)Lio/olvid/engine/engine/types/ObvDialog;

    move-result-object v2

    invoke-static {v0, v2}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->createOrReplace(Lio/olvid/engine/engine/datatypes/EngineSession;Lio/olvid/engine/engine/types/ObvDialog;)Lio/olvid/engine/engine/databases/UserInterfaceDialog;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_6

    goto :goto_14

    :catch_6
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_7
    :cond_2c
    :goto_14
    :pswitch_20
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x736515ca -> :sswitch_21
        -0x6e40095c -> :sswitch_20
        -0x657960a0 -> :sswitch_1f
        -0x5b7a89c3 -> :sswitch_1e
        -0x4b40f96b -> :sswitch_1d
        -0x48059c39 -> :sswitch_1c
        -0x3cc879c0 -> :sswitch_1b
        -0x28e9eb08 -> :sswitch_1a
        -0x26e2c8c3 -> :sswitch_19
        -0x1dd55a5a -> :sswitch_18
        -0xea37fbc -> :sswitch_17
        -0xd404c75 -> :sswitch_16
        -0xcea0aa4 -> :sswitch_15
        -0xcb6eaf9 -> :sswitch_14
        -0xb5795b3 -> :sswitch_13
        0x200419c -> :sswitch_12
        0x878c1fc -> :sswitch_11
        0xc3efb55 -> :sswitch_10
        0x108be341 -> :sswitch_f
        0x11e632bb -> :sswitch_e
        0x2085c0bb -> :sswitch_d
        0x20cd7895 -> :sswitch_c
        0x2d63afee -> :sswitch_b
        0x3d31241d -> :sswitch_a
        0x42fecdf1 -> :sswitch_9
        0x43558552 -> :sswitch_8
        0x44facddc -> :sswitch_7
        0x49cdbb45 -> :sswitch_6
        0x4e597e8c -> :sswitch_5
        0x50b52262 -> :sswitch_4
        0x55310bb6 -> :sswitch_3
        0x5f516bd8 -> :sswitch_2
        0x692f3f66 -> :sswitch_1
        0x7cb33dab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_20
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_20
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cancelAttachmentUpload([BI)V
    .locals 4

    .line 1851
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1852
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->sendManager:Lio/olvid/engine/networksend/SendManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    new-instance v3, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v3, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    invoke-virtual {v1, v2, v3, p2}, Lio/olvid/engine/networksend/SendManager;->cancelAttachmentUpload(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;I)V

    .line 1853
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1854
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1851
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_0

    .line 1854
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1855
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public connectWebsocket()V
    .locals 1

    .line 1866
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/FetchManager;->connectWebsockets()V

    return-void
.end method

.method public decryptReturnReceipt([B[B)Lio/olvid/engine/engine/types/ObvReturnReceipt;
    .locals 3

    .line 1636
    :try_start_0
    new-instance v0, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {v0, p1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 1637
    invoke-static {p1}, Lio/olvid/engine/crypto/Suite;->getAuthEnc(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1639
    new-instance v1, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-direct {v1, p2}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    invoke-interface {v0, p1, v1}, Lio/olvid/engine/crypto/AuthEnc;->decrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/EncryptedBytes;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1641
    new-instance p2, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p2, p1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {p2}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 1642
    new-instance p2, Lio/olvid/engine/engine/types/ObvReturnReceipt;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 1643
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 1644
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-direct {p2, v0, p1}, Lio/olvid/engine/engine/types/ObvReturnReceipt;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 1649
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteAttachment(Lio/olvid/engine/engine/types/ObvAttachment;)V
    .locals 1

    .line 1821
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvAttachment;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvAttachment;->getNumber()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lio/olvid/engine/engine/Engine;->deleteAttachment(Lio/olvid/engine/datatypes/UID;I)V

    return-void
.end method

.method public deleteAttachment([BI)V
    .locals 1

    .line 1826
    new-instance v0, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v0, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lio/olvid/engine/engine/Engine;->deleteAttachment(Lio/olvid/engine/datatypes/UID;I)V

    return-void
.end method

.method public deleteContact([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1601
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1602
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    .line 1603
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {v0, p2, p1}, Lio/olvid/engine/protocol/ProtocolManager;->deleteContact(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    return-void
.end method

.method public deleteMessage([B)V
    .locals 3

    .line 1831
    new-instance v0, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v0, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    .line 1832
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    iget-object v2, p1, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, v0}, Lio/olvid/engine/networkfetch/FetchManager;->deleteMessage(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V

    .line 1834
    iget-object v0, p1, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 1835
    :try_start_2
    invoke-virtual {p1}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1832
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_0

    .line 1835
    :try_start_4
    invoke-virtual {p1}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1836
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public deleteOwnedIdentity([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1093
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1094
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1095
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1}, Lio/olvid/engine/identity/IdentityManager;->deleteOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V

    .line 1096
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1093
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 1097
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public deletePersistedDialog(Ljava/util/UUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1433
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1434
    :try_start_0
    invoke-static {v0, p1}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->get(Lio/olvid/engine/engine/datatypes/EngineSession;Ljava/util/UUID;)Lio/olvid/engine/engine/databases/UserInterfaceDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1436
    invoke-virtual {p1}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->delete()V

    .line 1437
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1439
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 1433
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 1439
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public deleteReturnReceipt([B[B)V
    .locals 1

    .line 1625
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1626
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    invoke-virtual {v0, p1, p2}, Lio/olvid/engine/networkfetch/FetchManager;->deleteReturnReceipt(Lio/olvid/engine/datatypes/Identity;[B)V
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "DecodingException while reconstructing the ownedIdentity in deleteReturnReceipt"

    .line 1628
    invoke-static {p2}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public disbandGroup([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1595
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1596
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {v0, p2, p1}, Lio/olvid/engine/protocol/ProtocolManager;->disbandGroup([BLio/olvid/engine/datatypes/Identity;)V

    return-void
.end method

.method public discardLatestGroupDetails([B[B)V
    .locals 3

    .line 1403
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    :try_start_1
    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1405
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1406
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1, p2}, Lio/olvid/engine/identity/IdentityManager;->discardLatestGroupDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)V

    .line 1407
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1408
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1403
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_0

    .line 1408
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1409
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public discardLatestIdentityDetails([B)V
    .locals 3

    .line 1187
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :try_start_1
    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1189
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1190
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1}, Lio/olvid/engine/identity/IdentityManager;->discardLatestIdentityDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V

    .line 1191
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1192
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1187
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    .line 1192
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1193
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public disconnectWebsocket()V
    .locals 1

    .line 1871
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/FetchManager;->disconnectWebsockets()V

    return-void
.end method

.method public doesContactHaveAutoAcceptTrustLevel([B[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1310
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1311
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    .line 1312
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1313
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p2, p1}, Lio/olvid/engine/identity/IdentityManager;->getContactIdentityTrustLevel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object p1

    sget-object p2, Lio/olvid/engine/datatypes/Constants;->AUTO_ACCEPT_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1314
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    .line 1312
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_2

    .line 1314
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2
.end method

.method public downloadLargeAttachment([BI)V
    .locals 2

    .line 1806
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v1, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Lio/olvid/engine/networkfetch/FetchManager;->downloadAttachment(Lio/olvid/engine/datatypes/UID;II)V

    return-void
.end method

.method public downloadMessages([B)V
    .locals 3

    .line 1790
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1791
    :try_start_1
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1792
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1}, Lio/olvid/engine/identity/IdentityManager;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 1793
    iget-object v2, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    invoke-virtual {v2, p1, v1}, Lio/olvid/engine/networkfetch/FetchManager;->downloadMessages(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1794
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1790
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    .line 1794
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1795
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public downloadSmallAttachment([BI)V
    .locals 2

    .line 1801
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v1, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p2, p1}, Lio/olvid/engine/networkfetch/FetchManager;->downloadAttachment(Lio/olvid/engine/datatypes/UID;II)V

    return-void
.end method

.method public generateOwnedIdentity(Ljava/lang/String;Lio/olvid/engine/engine/types/JsonIdentityDetails;Ljava/util/UUID;)Lio/olvid/engine/engine/types/identities/ObvIdentity;
    .locals 8

    const/4 v0, 0x0

    .line 1051
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :try_start_1
    const-string p1, ""

    :cond_0
    move-object v4, p1

    .line 1055
    iget-object v2, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v3, v1, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v7, p0, Lio/olvid/engine/engine/Engine;->prng:Lio/olvid/engine/crypto/PRNGService;

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lio/olvid/engine/identity/IdentityManager;->generateOwnedIdentity(Lio/olvid/engine/datatypes/Session;Ljava/lang/String;Lio/olvid/engine/engine/types/JsonIdentityDetails;Ljava/util/UUID;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    if-eqz v1, :cond_1

    .line 1062
    :try_start_2
    invoke-virtual {v1}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v0

    .line 1059
    :cond_2
    :try_start_3
    new-instance p3, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-direct {p3, p1, p2}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    .line 1060
    iget-object p1, v1, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 1062
    :try_start_4
    invoke-virtual {v1}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object p3

    :catchall_0
    move-exception p1

    .line 1051
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v1, :cond_4

    .line 1062
    :try_start_6
    invoke-virtual {v1}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    :try_start_7
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    return-object v0
.end method

.method public getApiKeyForOwnedIdentity([B)Ljava/util/UUID;
    .locals 1

    .line 1071
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1072
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    invoke-virtual {v0, p1}, Lio/olvid/engine/identity/IdentityManager;->getApiKey(Lio/olvid/engine/datatypes/Identity;)Ljava/util/UUID;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContactDeviceCount([B[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1256
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1257
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1258
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    .line 1259
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1, p2}, Lio/olvid/engine/identity/IdentityManager;->getDeviceUidsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 1256
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 1260
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public getContactEstablishedChannelsCount([B[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1265
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1266
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1267
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    .line 1268
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->channelManager:Lio/olvid/engine/channel/ChannelManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p2, p1}, Lio/olvid/engine/channel/ChannelManager;->getConfirmedObliviousChannelDeviceUids(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 1265
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 1269
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public getContactPublishedAndTrustedDetails([B[B)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1274
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1275
    :try_start_0
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    .line 1276
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1277
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1, p2}, Lio/olvid/engine/identity/IdentityManager;->getContactPublishedAndTrustedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1278
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 1274
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 1278
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public getContactTrustOrigins([B[B)[Lio/olvid/engine/engine/types/ObvTrustOrigin;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1295
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1296
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    .line 1298
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1299
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p2, p1}, Lio/olvid/engine/identity/IdentityManager;->getTrustOriginsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object p2

    .line 1300
    array-length v1, p2

    new-array v1, v1, [Lio/olvid/engine/engine/types/ObvTrustOrigin;

    const/4 v2, 0x0

    .line 1301
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 1302
    new-instance v3, Lio/olvid/engine/engine/types/ObvTrustOrigin;

    iget-object v4, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v5, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    aget-object v6, p2, v2

    invoke-direct {v3, v4, v5, v6, p1}, Lio/olvid/engine/engine/types/ObvTrustOrigin;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/datatypes/containers/TrustOrigin;Lio/olvid/engine/datatypes/Identity;)V

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1304
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 1298
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_2

    .line 1304
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2
.end method

.method public getContactsOfOwnedIdentity([B)[Lio/olvid/engine/engine/types/identities/ObvIdentity;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1217
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1218
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1219
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1}, Lio/olvid/engine/identity/IdentityManager;->getContactsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    .line 1220
    array-length v2, v1

    new-array v2, v2, [Lio/olvid/engine/engine/types/identities/ObvIdentity;

    const/4 v3, 0x0

    .line 1222
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 1223
    new-instance v4, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    iget-object v5, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v6, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    aget-object v7, v1, v3

    invoke-direct {v4, v5, v6, v7, p1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    aput-object v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1226
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception p1

    .line 1217
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 1226
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public getGroupPublishedAndLatestOrTrustedDetails([B[B)[Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1373
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1374
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1375
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1, p2}, Lio/olvid/engine/identity/IdentityManager;->getGroupPublishedAndLatestOrTrustedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)[Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 1373
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 1376
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public getGroupsOfOwnedIdentity([B)[Lio/olvid/engine/engine/types/identities/ObvGroup;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1322
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1323
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1324
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1}, Lio/olvid/engine/identity/IdentityManager;->getGroupsForOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/GroupWithDetails;

    move-result-object v1

    .line 1325
    array-length v2, v1

    new-array v2, v2, [Lio/olvid/engine/engine/types/identities/ObvGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1327
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 1328
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getGroupMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    array-length v5, v5

    new-array v10, v5, [[B

    const/4 v5, 0x0

    .line 1329
    :goto_1
    array-length v6, v10

    if-ge v5, v6, :cond_0

    .line 1330
    aget-object v6, v1, v4

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getGroupMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v6

    aput-object v6, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1332
    :cond_0
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v5

    array-length v5, v5

    new-array v11, v5, [Lio/olvid/engine/engine/types/identities/ObvIdentity;

    const/4 v5, 0x0

    .line 1333
    :goto_2
    array-length v6, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v5, v6, :cond_1

    .line 1335
    :try_start_1
    iget-object v6, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    invoke-virtual {v6}, Lio/olvid/engine/identity/IdentityManager;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v6

    aget-object v7, v1, v4

    invoke-virtual {v7}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v7

    aget-object v7, v7, v5

    iget-object v7, v7, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->serializedDetails:Ljava/lang/String;

    const-class v8, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v6, v7, v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 1336
    new-instance v7, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    aget-object v8, v1, v4

    invoke-virtual {v8}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v8

    aget-object v8, v8, v5

    iget-object v8, v8, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-direct {v7, v8, v6}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    aput-object v7, v11, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1338
    :catch_0
    :try_start_2
    new-instance v6, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    aget-object v7, v1, v4

    invoke-virtual {v7}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v7

    aget-object v7, v7, v5

    iget-object v7, v7, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    aput-object v6, v11, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1341
    :cond_1
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getDeclinedPendingMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    array-length v5, v5

    new-array v12, v5, [[B

    const/4 v5, 0x0

    .line 1342
    :goto_4
    array-length v6, v12

    if-ge v5, v6, :cond_2

    .line 1343
    aget-object v6, v1, v4

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getDeclinedPendingMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v6

    aput-object v6, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1345
    :cond_2
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1346
    new-instance v5, Lio/olvid/engine/engine/types/identities/ObvGroup;

    aget-object v6, v1, v4

    .line 1347
    invoke-virtual {v6}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getGroupOwnerAndUid()[B

    move-result-object v7

    aget-object v6, v1, v4

    .line 1348
    invoke-virtual {v6}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getPublishedGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v8

    .line 1349
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v9

    const/4 v13, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lio/olvid/engine/engine/types/identities/ObvGroup;-><init>([BLio/olvid/engine/engine/types/JsonGroupDetails;[B[[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;[[B[B)V

    aput-object v5, v2, v4

    goto :goto_5

    .line 1356
    :cond_3
    new-instance v5, Lio/olvid/engine/engine/types/identities/ObvGroup;

    aget-object v6, v1, v4

    .line 1357
    invoke-virtual {v6}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getGroupOwnerAndUid()[B

    move-result-object v7

    aget-object v6, v1, v4

    .line 1358
    invoke-virtual {v6}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getLatestOrTrustedGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v8

    .line 1359
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v9

    aget-object v6, v1, v4

    .line 1363
    invoke-virtual {v6}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v13

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lio/olvid/engine/engine/types/identities/ObvGroup;-><init>([BLio/olvid/engine/engine/types/JsonGroupDetails;[B[[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;[[B[B)V

    aput-object v5, v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 1368
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_5
    return-object v2

    :catchall_0
    move-exception p1

    .line 1322
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 1368
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    throw v1
.end method

.method public getOwnedIdentities()[Lio/olvid/engine/engine/types/identities/ObvIdentity;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1037
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1039
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2}, Lio/olvid/engine/identity/IdentityManager;->getOwnedIdentities(Lio/olvid/engine/datatypes/Session;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    .line 1040
    array-length v2, v1

    new-array v2, v2, [Lio/olvid/engine/engine/types/identities/ObvIdentity;

    const/4 v3, 0x0

    .line 1042
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 1043
    new-instance v4, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    iget-object v5, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v6, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    aget-object v7, v1, v3

    invoke-direct {v4, v5, v6, v7}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/datatypes/Identity;)V

    aput-object v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1046
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    .line 1037
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 1046
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public getOwnedIdentityPublishedAndLatestDetails([B)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1102
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1103
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1104
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1}, Lio/olvid/engine/identity/IdentityManager;->getOwnedIdentityPublishedAndLatestDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 1102
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 1105
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public getReturnReceiptKey()[B
    .locals 2

    const/4 v0, 0x0

    .line 1618
    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getDefaultAuthEnc(I)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {v0, v1}, Lio/olvid/engine/crypto/AuthEnc;->generateKey(Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v0

    .line 1619
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getReturnReceiptNonce()[B
    .locals 2

    .line 1613
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->prng:Lio/olvid/engine/crypto/PRNGService;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lio/olvid/engine/crypto/PRNGService;->bytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lio/olvid/engine/engine/datatypes/EngineSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 895
    new-instance v0, Lio/olvid/engine/engine/datatypes/EngineSession;

    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    invoke-interface {v1}, Lio/olvid/engine/metamanager/CreateSessionDelegate;->getSession()Lio/olvid/engine/datatypes/Session;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/engine/Engine;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0, v1, p0, v2}, Lio/olvid/engine/engine/datatypes/EngineSession;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/engine/datatypes/UserInterfaceDialogListener;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v0
.end method

.method public inviteContactsToGroup([B[B[[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1561
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1562
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1563
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 1564
    invoke-static {v3}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1566
    :cond_0
    iget-object p3, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {p3, p2, p1, v0}, Lio/olvid/engine/protocol/ProtocolManager;->inviteContactsToGroup([BLio/olvid/engine/datatypes/Identity;Ljava/util/HashSet;)V

    return-void
.end method

.method public isContactOfOwnedIdentity([B[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1247
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1248
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1249
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    .line 1250
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1, p2}, Lio/olvid/engine/identity/IdentityManager;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1251
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 1247
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 1251
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public isInboxAttachmentReceived([BI)Z
    .locals 4

    .line 1780
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    new-instance v3, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v3, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    invoke-virtual {v1, v2, v3, p2}, Lio/olvid/engine/networkfetch/FetchManager;->isInboxAttachmentReceived(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 1782
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 1780
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 1782
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1783
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isOutboxAttachmentSent([BI)Z
    .locals 4

    .line 1759
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->sendManager:Lio/olvid/engine/networksend/SendManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    new-instance v3, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v3, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    invoke-virtual {v1, v2, v3, p2}, Lio/olvid/engine/networksend/SendManager;->isOutboxAttachmentSent(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 1761
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 1759
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 1761
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1762
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isOutboxMessageSent([B)Z
    .locals 4

    .line 1769
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1770
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->sendManager:Lio/olvid/engine/networksend/SendManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    new-instance v3, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v3, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    invoke-virtual {v1, v2, v3}, Lio/olvid/engine/networksend/SendManager;->isOutboxMessageSent(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 1771
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 1769
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 1771
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1772
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public leaveGroup([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1589
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1590
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {v0, p2, p1}, Lio/olvid/engine/protocol/ProtocolManager;->leaveGroup([BLio/olvid/engine/datatypes/Identity;)V

    return-void
.end method

.method public pauseAttachmentDownload([BI)V
    .locals 2

    .line 1811
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v1, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    invoke-virtual {v0, v1, p2}, Lio/olvid/engine/networkfetch/FetchManager;->pauseDownloadAttachment(Lio/olvid/engine/datatypes/UID;I)V

    return-void
.end method

.method public post([B[Lio/olvid/engine/engine/types/ObvOutboundAttachment;Ljava/util/List;[BZ)Lio/olvid/engine/engine/types/ObvPostMessageOutput;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lio/olvid/engine/engine/types/ObvOutboundAttachment;",
            "Ljava/util/List<",
            "[B>;[BZ)",
            "Lio/olvid/engine/engine/types/ObvPostMessageOutput;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1657
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1658
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1660
    :try_start_0
    invoke-static {v0}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    .line 1661
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_0

    .line 1663
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1664
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    :cond_0
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1668
    invoke-virtual {v0}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    const-string v0, "Error decoding a bytesContactIdentity while posting a message!"

    .line 1669
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1673
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1676
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1677
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 1682
    :try_start_1
    array-length v0, v2

    new-array v14, v0, [Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;

    const/4 v0, 0x0

    .line 1684
    :goto_2
    array-length v10, v2

    if-ge v0, v10, :cond_4

    .line 1685
    new-instance v10, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;

    aget-object v11, v2, v0

    .line 1686
    invoke-virtual {v11}, Lio/olvid/engine/engine/types/ObvOutboundAttachment;->getPath()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v11, v2, v0

    .line 1688
    invoke-virtual {v11}, Lio/olvid/engine/engine/types/ObvOutboundAttachment;->getAttachmentLength()J

    move-result-wide v18

    aget-object v11, v2, v0

    .line 1689
    invoke-virtual {v11}, Lio/olvid/engine/engine/types/ObvOutboundAttachment;->getMetadata()[B

    move-result-object v20

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;-><init>(Ljava/lang/String;ZJ[B)V

    aput-object v10, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1693
    :cond_4
    invoke-static/range {p4 .. p4}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object v12

    .line 1696
    new-instance v0, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;

    new-array v10, v6, [Lio/olvid/engine/datatypes/Identity;

    .line 1697
    invoke-interface {v8, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, [Lio/olvid/engine/datatypes/Identity;

    move-object v10, v0

    move-object/from16 v13, p1

    move/from16 v15, p5

    invoke-direct/range {v10 .. v15}, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;-><init>([Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[B[Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;Z)V

    .line 1706
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1708
    :try_start_2
    iget-object v11, v10, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v11}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1709
    iget-object v11, v1, Lio/olvid/engine/engine/Engine;->channelManager:Lio/olvid/engine/channel/ChannelManager;

    iget-object v12, v10, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v13, v1, Lio/olvid/engine/engine/Engine;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-virtual {v11, v12, v0, v13}, Lio/olvid/engine/channel/ChannelManager;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1710
    :try_start_3
    iget-object v11, v10, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v11}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v11, v0

    goto :goto_6

    :catch_1
    move-object v0, v9

    .line 1712
    :catch_2
    :try_start_4
    iget-object v11, v10, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v11}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    if-eqz v10, :cond_5

    .line 1714
    :try_start_5
    invoke-virtual {v10}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_5
    if-eqz v0, :cond_7

    .line 1717
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/olvid/engine/datatypes/Identity;

    .line 1718
    new-instance v12, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;

    invoke-virtual {v11}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v11

    invoke-direct {v12, v11}, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;-><init>([B)V

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v11

    invoke-virtual {v4, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1721
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/olvid/engine/datatypes/Identity;

    .line 1722
    new-instance v11, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;

    invoke-virtual {v10}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v10

    invoke-direct {v11, v10}, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;-><init>([B)V

    invoke-virtual {v4, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 1706
    :goto_6
    :try_start_6
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object v12, v0

    if-eqz v10, :cond_8

    .line 1714
    :try_start_7
    invoke-virtual {v10}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v10, v0

    :try_start_8
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_7
    throw v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v0

    .line 1730
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/olvid/engine/datatypes/Identity;

    .line 1731
    new-instance v11, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;

    invoke-virtual {v10}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v10

    invoke-direct {v11, v10}, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;-><init>([B)V

    invoke-virtual {v4, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1733
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1737
    :cond_a
    new-instance v0, Lio/olvid/engine/engine/types/ObvPostMessageOutput;

    invoke-direct {v0, v7, v4}, Lio/olvid/engine/engine/types/ObvPostMessageOutput;-><init>(ZLjava/util/HashMap;)V

    return-object v0
.end method

.method public processAndroidPushNotification(Ljava/lang/String;)V
    .locals 1

    .line 1172
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/FetchManager;->processAndroidPushNotification(Ljava/lang/String;)V

    return-void
.end method

.method public publishLatestGroupDetails([B[B)V
    .locals 3

    .line 1415
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    :try_start_1
    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1417
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1418
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1, p2}, Lio/olvid/engine/identity/IdentityManager;->publishLatestGroupDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1420
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1, p2}, Lio/olvid/engine/protocol/ProtocolManager;->startGroupDetailsPublicationProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)V

    .line 1422
    :cond_0
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 1423
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1415
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 1423
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1424
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public publishLatestIdentityDetails([B)V
    .locals 4

    .line 1199
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :try_start_1
    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1201
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1202
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1}, Lio/olvid/engine/identity/IdentityManager;->publishLatestIdentityDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1204
    iget-object v2, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    iget-object v3, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2, v3, p1, v1}, Lio/olvid/engine/protocol/ProtocolManager;->startIdentityDetailsPublicationProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;I)V

    .line 1206
    :cond_0
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 1207
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1199
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 1207
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1208
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public recreateAllChannels([B[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1549
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1550
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    .line 1551
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1552
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p2, p1}, Lio/olvid/engine/identity/IdentityManager;->getDeviceUidsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 1553
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1554
    iget-object v5, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {v5, v4, p2, p1}, Lio/olvid/engine/protocol/ProtocolManager;->startChannelCreationWithContactDeviceProtocol(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1556
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 1551
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_2

    .line 1556
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2
.end method

.method public registerToPushNotification([BLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1111
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1112
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    const/4 p1, 0x0

    if-nez p2, :cond_2

    .line 1114
    iget-object p2, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v3, v2}, Lio/olvid/engine/networkfetch/FetchManager;->getRegisteredPushNotificationExtraInfo(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;B)Lio/olvid/engine/encoder/Encoded;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return-void

    .line 1119
    :cond_1
    :try_start_1
    iget-object p2, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p2, v1, v3}, Lio/olvid/engine/identity/IdentityManager;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    new-array p1, p1, [B

    .line 1120
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    .line 1121
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1122
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Lio/olvid/engine/networkfetch/FetchManager;->registerPushNotification(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    .line 1123
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V

    goto :goto_0

    .line 1125
    :cond_2
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lio/olvid/engine/networkfetch/FetchManager;->getRegisteredPushNotificationExtraInfo(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 1128
    :try_start_2
    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v1

    .line 1129
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Firebase token has not changed"

    .line 1130
    invoke-static {v1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 1147
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_3
    return-void

    :catch_0
    move-exception v1

    .line 1135
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1140
    :cond_4
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, v3}, Lio/olvid/engine/identity/IdentityManager;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v5

    .line 1141
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    iget-object v2, p0, Lio/olvid/engine/engine/Engine;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lio/olvid/engine/encoder/Encoded;

    .line 1142
    invoke-static {p2}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    .line 1143
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1144
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    const/4 p1, 0x1

    move-object v4, v5

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lio/olvid/engine/networkfetch/FetchManager;->registerPushNotification(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    .line 1145
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_5

    .line 1147
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 1111
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_6

    .line 1147
    :try_start_5
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p2
.end method

.method public reinvitePendingToGroup([B[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1582
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1583
    invoke-static {p3}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p3

    .line 1584
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {v0, p2, p1, p3}, Lio/olvid/engine/protocol/ProtocolManager;->reinvitePendingToGroup([BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    return-void
.end method

.method public removeContactsFromGroup([B[B[[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1571
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1572
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1573
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 1574
    invoke-static {v3}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1576
    :cond_0
    iget-object p3, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {p3, p2, p1, v0}, Lio/olvid/engine/protocol/ProtocolManager;->removeContactsFromGroup([BLio/olvid/engine/datatypes/Identity;Ljava/util/HashSet;)V

    return-void
.end method

.method public removeNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 212
    invoke-interface {p2}, Lio/olvid/engine/engine/types/EngineNotificationListener;->getEngineNotificationListenerRegistrationNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lio/olvid/engine/engine/Engine;->removeNotificationListener(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public resendAllAttachmentNotifications()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1861
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/FetchManager;->resendAllDownloadedAttachmentNotifications()V

    return-void
.end method

.method public resendAllPersistedDialogs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1444
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1445
    :try_start_0
    invoke-static {v0}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->getAll(Lio/olvid/engine/engine/datatypes/EngineSession;)[Lio/olvid/engine/engine/databases/UserInterfaceDialog;

    move-result-object v1

    .line 1446
    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1447
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1448
    invoke-virtual {v4}, Lio/olvid/engine/engine/databases/UserInterfaceDialog;->resend()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1450
    :cond_0
    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1451
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 1444
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 1451
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public respondToDialog(Lio/olvid/engine/engine/types/ObvDialog;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1456
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1457
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getBytesOwnedIdentity()[B

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    .line 1458
    new-instance v2, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;

    .line 1459
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 1461
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getEncodedResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object v4

    .line 1462
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    invoke-direct {v2, v3, v1, v4, p1}, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;-><init>(Ljava/util/UUID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/encoder/Encoded;)V

    .line 1466
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1470
    iget-object p1, p0, Lio/olvid/engine/engine/Engine;->channelManager:Lio/olvid/engine/channel/ChannelManager;

    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/engine/Engine;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-virtual {p1, v1, v2, v3}, Lio/olvid/engine/channel/ChannelManager;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1471
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1472
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1456
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 1472
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public restartAllOngoingChannelEstablishmentProtocols([B[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1533
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1534
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    .line 1535
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1536
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p2, p1}, Lio/olvid/engine/identity/IdentityManager;->getDeviceUidsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 1537
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lio/olvid/engine/engine/Engine;->channelManager:Lio/olvid/engine/channel/ChannelManager;

    iget-object v4, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v3, v4, p1, p2}, Lio/olvid/engine/channel/ChannelManager;->getConfirmedObliviousChannelDeviceUids(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1539
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 1540
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1541
    iget-object v6, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {v6, v5, p2, p1}, Lio/olvid/engine/protocol/ProtocolManager;->startChannelCreationWithContactDeviceProtocol(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1544
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 1535
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_3

    .line 1544
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p2
.end method

.method public sendReturnReceipt([B[BI[B[B)V
    .locals 9

    .line 1742
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    :try_start_1
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 1744
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    .line 1745
    new-instance p1, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p1, p5}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 1747
    iget-object p1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object p2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p2, v4, v3}, Lio/olvid/engine/identity/IdentityManager;->getDeviceUidsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v5

    .line 1748
    array-length p1, v5

    if-eqz p1, :cond_0

    .line 1749
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->sendManager:Lio/olvid/engine/networksend/SendManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v8}, Lio/olvid/engine/networksend/SendManager;->sendReturnReceipt(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;I[BLio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    .line 1751
    :cond_0
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 1752
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1742
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 1752
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1753
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public sendUserInterfaceDialogDeletionNotification(Ljava/util/UUID;)V
    .locals 2

    .line 917
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uuid"

    .line 918
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "engine_notification_ui_dialog_deleted"

    .line 919
    invoke-direct {p0, p1, v0}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public sendUserInterfaceDialogNotification(Ljava/util/UUID;Lio/olvid/engine/engine/types/ObvDialog;J)V
    .locals 2

    .line 908
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uuid"

    .line 909
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dialog"

    .line 910
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "creation_timestamp"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "engine_notification_ui_dialog"

    .line 912
    invoke-direct {p0, p1, v0}, Lio/olvid/engine/engine/Engine;->postEngineNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public startContactMutualIntroductionProtocol([B[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1503
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1504
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    .line 1505
    invoke-static {p3}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p3

    .line 1506
    invoke-virtual {p2, p3}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1509
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {v0, p2, p3, p1}, Lio/olvid/engine/protocol/ProtocolManager;->startContactMutualIntroductionProtocol(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    return-void

    .line 1507
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public startGroupCreationProtocol(Ljava/lang/String;[B[[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 1514
    array-length v0, p3

    if-eqz v0, :cond_3

    .line 1517
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1518
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    .line 1520
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v1

    .line 1521
    :try_start_0
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p3, v3

    .line 1522
    invoke-static {v4}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    .line 1523
    iget-object v5, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v6, v1, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v5, v6, v4, p2}, Lio/olvid/engine/identity/IdentityManager;->getSerializedPublishedDetailsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object v5

    .line 1524
    new-instance v6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    invoke-direct {v6, v4, v5}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1526
    invoke-virtual {v1}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    .line 1528
    :cond_1
    iget-object p3, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {p3, p1, v0, p2}, Lio/olvid/engine/protocol/ProtocolManager;->startGroupCreationProtocol(Ljava/lang/String;Ljava/util/HashSet;Lio/olvid/engine/datatypes/Identity;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1520
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v1, :cond_2

    .line 1526
    :try_start_2
    invoke-virtual {v1}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2

    .line 1515
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public startTrustEstablishmentProtocol([BLjava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1496
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1497
    invoke-static {p3}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p3

    .line 1498
    iget-object v0, p0, Lio/olvid/engine/engine/Engine;->protocolManager:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {v0, p1, p2, p3}, Lio/olvid/engine/protocol/ProtocolManager;->startTrustEstablishmentProtocol(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)V

    return-void
.end method

.method public trustPublishedContactDetails([B[B)V
    .locals 3

    .line 1283
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :try_start_1
    invoke-static {p2}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    .line 1285
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1286
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p2, p1}, Lio/olvid/engine/identity/IdentityManager;->trustPublishedContactDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    .line 1287
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1288
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1283
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_0

    .line 1288
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1289
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public trustPublishedGroupDetails([B[B)V
    .locals 3

    .line 1381
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    :try_start_1
    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1383
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1384
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1, p2}, Lio/olvid/engine/identity/IdentityManager;->trustPublishedGroupDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)V

    .line 1385
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1386
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1381
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_0

    .line 1386
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1387
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public unregisterToPushNotification([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1163
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1164
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1165
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1}, Lio/olvid/engine/networkfetch/FetchManager;->unregisterPushNotification(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V

    .line 1166
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1163
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 1167
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public updateApiKeyForOwnedIdentity([BLjava/util/UUID;)Z
    .locals 3

    .line 1080
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :try_start_1
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1082
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1, p2}, Lio/olvid/engine/identity/IdentityManager;->updateApiKeyOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;)V

    .line 1083
    iget-object p2, p0, Lio/olvid/engine/engine/Engine;->fetchManager:Lio/olvid/engine/networkfetch/FetchManager;

    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p2, v1, p1}, Lio/olvid/engine/networkfetch/FetchManager;->deleteExistingServerSessionAndCreateANewOne(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    if-eqz v0, :cond_0

    .line 1085
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 1080
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 1085
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1086
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public updateLatestGroupDetails([B[BLio/olvid/engine/engine/types/JsonGroupDetails;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1393
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1394
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1395
    :try_start_0
    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1396
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1, p2, p3}, Lio/olvid/engine/identity/IdentityManager;->updateLatestGroupDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[BLio/olvid/engine/engine/types/JsonGroupDetails;)V

    .line 1397
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1394
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 1398
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public updateLatestIdentityDetails([BLio/olvid/engine/engine/types/JsonIdentityDetails;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1177
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 1178
    invoke-virtual {p0}, Lio/olvid/engine/engine/Engine;->getSession()Lio/olvid/engine/engine/datatypes/EngineSession;

    move-result-object v0

    .line 1179
    :try_start_0
    iget-object v1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 1180
    iget-object v1, p0, Lio/olvid/engine/engine/Engine;->identityManager:Lio/olvid/engine/identity/IdentityManager;

    iget-object v2, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v2, p1, p2}, Lio/olvid/engine/identity/IdentityManager;->updateLatestIdentityDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    .line 1181
    iget-object p1, v0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1182
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1178
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 1182
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/datatypes/EngineSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method
