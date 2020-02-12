.class final Lio/olvid/messenger/AnonymousUsageService$2;
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

    .line 159
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 162
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 166
    :goto_0
    invoke-static {}, Lio/olvid/messenger/AnonymousUsageService;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 168
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AnonymousUsageService;->access$300()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 172
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->anonymousUsageLogItemDao()Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;

    move-result-object v1

    invoke-interface {v1}, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;->getAll()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lio/olvid/engine/encoder/Encoded;

    .line 181
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;

    .line 182
    invoke-virtual {v6}, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x5

    new-array v3, v3, [Lio/olvid/engine/encoder/Encoded;

    const-string v5, "android"

    .line 187
    invoke-static {v5}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-static {v5}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    const-string v7, "0.7.9"

    .line 189
    invoke-static {v7}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x3

    const-wide/16 v7, 0x4d

    .line 190
    invoke-static {v7, v8}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x4

    .line 191
    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    aput-object v2, v3, v5

    .line 186
    invoke-static {v3}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    .line 192
    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v2

    .line 194
    new-instance v3, Ljava/net/URL;

    const-string v5, "https://statistics.olvid.io/statisticsPut"

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v5, 0x1388

    .line 198
    :try_start_3
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 199
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 200
    array-length v5, v2

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v5, "Content-Type"

    const-string v7, "application/bytes"

    .line 201
    invoke-virtual {v3, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Olvid-API-Version"

    const-string v7, "7"

    .line 202
    invoke-virtual {v3, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    .line 205
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 206
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0x2000

    new-array v7, v7, [B

    .line 210
    :goto_2
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 211
    invoke-virtual {v5, v7, v4, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 213
    :cond_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 215
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 217
    new-instance v5, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {v5, v2}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    .line 219
    invoke-virtual {v5}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    .line 220
    array-length v5, v2

    if-eqz v5, :cond_5

    .line 223
    aget-object v2, v2, v4

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v2

    .line 224
    array-length v5, v2

    if-ne v5, v6, :cond_4

    .line 228
    aget-byte v2, v2, v4

    if-nez v2, :cond_3

    .line 230
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->anonymousUsageLogItemDao()Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;->deleteMany(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 225
    :cond_4
    :try_start_5
    new-instance v1, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v1}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v1

    .line 221
    :cond_5
    new-instance v1, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v1}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    .line 233
    :try_start_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    const-string v1, "Error uploading statistics"

    .line 236
    invoke-static {v1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 170
    :catch_1
    :try_start_7
    monitor-exit v1

    goto/16 :goto_0

    .line 172
    :goto_3
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method
