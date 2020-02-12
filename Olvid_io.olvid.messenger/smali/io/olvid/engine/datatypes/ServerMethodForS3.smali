.class public abstract Lio/olvid/engine/datatypes/ServerMethodForS3;
.super Ljava/lang/Object;
.source "ServerMethodForS3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x20000

.field public static final GENERAL_ERROR:B = -0x1t

.field public static final INVALID_SIGNED_URL:B = 0x2t

.field public static final MALFORMED_URL:B = -0x80t

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final NOT_FOUND:B = 0x1t

.field public static final OK:B = 0x0t

.field public static final SERVER_CONNECTION_ERROR:B = -0x7ft


# instance fields
.field private progressListener:Lio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;

.field private progressListenerIntervalMs:J

.field protected returnStatus:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->progressListener:Lio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;

    return-void
.end method


# virtual methods
.method public execute()B
    .locals 13

    const-string v0, "GET"

    .line 55
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/ServerMethodForS3;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/ServerMethodForS3;->getDataToSend()[B

    move-result-object v2

    .line 57
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/ServerMethodForS3;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 60
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x1388

    .line 64
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 65
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/ServerMethodForS3;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/high16 v5, 0x20000

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 71
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 72
    iget-object v3, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->progressListener:Lio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;

    if-eqz v3, :cond_2

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->progressListenerIntervalMs:J

    add-long/2addr v7, v9

    .line 74
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    move-wide v8, v7

    const/4 v7, 0x0

    .line 75
    :goto_0
    array-length v10, v2

    if-ge v7, v10, :cond_3

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v12, v10, v8

    if-lez v12, :cond_1

    .line 77
    iget-object v10, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->progressListener:Lio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;

    int-to-long v11, v7

    invoke-interface {v10, v11, v12}, Lio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;->onProgress(J)V

    .line 78
    iget-wide v10, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->progressListenerIntervalMs:J

    add-long/2addr v8, v10

    .line 80
    :cond_1
    array-length v10, v2

    sub-int/2addr v10, v7

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v3, v2, v7, v10}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v7, v5

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 87
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    const/4 v7, -0x1

    if-eq v2, v3, :cond_6

    const/16 v0, 0x193

    if-eq v2, v0, :cond_5

    const/16 v0, 0x194

    if-eq v2, v0, :cond_4

    .line 131
    iput-byte v7, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->returnStatus:B

    goto :goto_4

    .line 127
    :cond_4
    iput-byte v4, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->returnStatus:B

    goto :goto_4

    :cond_5
    const/4 v0, 0x2

    .line 123
    iput-byte v0, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->returnStatus:B

    goto :goto_4

    .line 91
    :cond_6
    iput-byte v6, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->returnStatus:B

    .line 92
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/ServerMethodForS3;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 93
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 94
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 95
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v3, v5, [B

    .line 99
    iget-object v4, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->progressListener:Lio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;

    if-eqz v4, :cond_8

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->progressListenerIntervalMs:J

    add-long/2addr v4, v8

    move-wide v8, v4

    const/4 v4, 0x0

    .line 102
    :cond_7
    :goto_2
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-eq v5, v7, :cond_9

    .line 103
    invoke-virtual {v0, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v4, v5

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v5, v10, v8

    if-lez v5, :cond_7

    .line 106
    iget-object v5, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->progressListener:Lio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;

    int-to-long v10, v4

    invoke-interface {v5, v10, v11}, Lio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;->onProgress(J)V

    .line 107
    iget-wide v10, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->progressListenerIntervalMs:J

    add-long/2addr v8, v10

    goto :goto_2

    .line 111
    :cond_8
    :goto_3
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-eq v4, v7, :cond_9

    .line 112
    invoke-virtual {v0, v3, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 115
    :cond_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 117
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lio/olvid/engine/datatypes/ServerMethodForS3;->handleReceivedData([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :cond_a
    :goto_4
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    throw v0
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/16 v0, -0x7f

    .line 142
    iput-byte v0, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->returnStatus:B

    goto :goto_5

    :catch_1
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/16 v0, -0x80

    .line 139
    iput-byte v0, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->returnStatus:B

    .line 144
    :goto_5
    iget-byte v0, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->returnStatus:B

    return v0
.end method

.method protected abstract getDataToSend()[B
.end method

.method protected abstract getMethod()Ljava/lang/String;
.end method

.method protected abstract getUrl()Ljava/lang/String;
.end method

.method protected abstract handleReceivedData([B)V
.end method

.method public final setProgressListener(JLio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->progressListenerIntervalMs:J

    .line 49
    iput-object p3, p0, Lio/olvid/engine/datatypes/ServerMethodForS3;->progressListener:Lio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;

    return-void
.end method
