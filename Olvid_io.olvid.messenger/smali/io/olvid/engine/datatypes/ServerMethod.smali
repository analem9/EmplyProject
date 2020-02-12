.class public abstract Lio/olvid/engine/datatypes/ServerMethod;
.super Ljava/lang/Object;
.source "ServerMethod.java"


# static fields
.field public static final API_KEY_LICENSES_EXHAUSTED:B = 0x8t

.field public static final DELETED_FROM_SERVER:B = 0x9t

.field public static final EXCEEDING_EXPECTED_BYTE_LENGTH:B = 0x3t

.field public static final GENERAL_ERROR:B = -0x1t

.field public static final INVALID_SESSION:B = 0x4t

.field public static final MALFORMED_SERVER_RESPONSE:B = -0x7et

.field public static final MALFORMED_URL:B = -0x80t

.field public static final NOT_YET_AVAILABLE:B = 0x5t

.field public static final OK:B = 0x0t

.field public static final PROOF_OF_WORK_REQUIRED:B = 0x1t

.field public static final QUOTA_EXCEEDED:B = 0x2t

.field public static final SERVER_CONNECTION_ERROR:B = -0x7ft

.field public static final UNKNOWN_API_KEY:B = 0x7t


# instance fields
.field protected returnStatus:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()B
    .locals 9

    .line 43
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/ServerMethod;->getServer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "://"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 47
    aget-object v1, v0, v3

    .line 48
    aget-object v0, v0, v2

    goto :goto_0

    .line 50
    :cond_0
    aget-object v0, v0, v3

    const-string v1, "https"

    :goto_0
    const/16 v4, 0x3a

    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 56
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    .line 58
    :goto_1
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/ServerMethod;->getServerMethod()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/ServerMethod;->getDataToSend()[B

    move-result-object v7

    .line 62
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1, v0, v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1388

    .line 66
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 67
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 68
    array-length v1, v7

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v1, "Content-Type"

    const-string v4, "application/bytes"

    .line 69
    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Olvid-API-Version"

    const-string v4, "7"

    .line 70
    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 73
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 74
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 75
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v6, 0x2000

    new-array v6, v6, [B

    .line 79
    :goto_2
    invoke-virtual {v4, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-eq v7, v5, :cond_2

    .line 80
    invoke-virtual {v1, v6, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 84
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 86
    new-instance v4, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {v4, v1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    .line 88
    invoke-virtual {v4}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    .line 89
    array-length v4, v1

    if-eqz v4, :cond_4

    .line 92
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v4

    .line 93
    array-length v5, v4

    if-ne v5, v2, :cond_3

    .line 98
    aget-byte v3, v4, v3

    iput-byte v3, p0, Lio/olvid/engine/datatypes/ServerMethod;->returnStatus:B

    .line 99
    array-length v3, v1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {p0, v1}, Lio/olvid/engine/datatypes/ServerMethod;->parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 94
    :cond_3
    :try_start_3
    new-instance v1, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v1}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v1

    .line 90
    :cond_4
    new-instance v1, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v1}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    .line 101
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 102
    throw v1
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    const/16 v0, -0x7e

    .line 111
    iput-byte v0, p0, Lio/olvid/engine/datatypes/ServerMethod;->returnStatus:B

    goto :goto_3

    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/16 v0, -0x7f

    .line 108
    iput-byte v0, p0, Lio/olvid/engine/datatypes/ServerMethod;->returnStatus:B

    goto :goto_3

    :catch_2
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/16 v0, -0x80

    .line 105
    iput-byte v0, p0, Lio/olvid/engine/datatypes/ServerMethod;->returnStatus:B

    .line 113
    :goto_3
    iget-byte v0, p0, Lio/olvid/engine/datatypes/ServerMethod;->returnStatus:B

    return v0
.end method

.method protected abstract getDataToSend()[B
.end method

.method protected abstract getServer()Ljava/lang/String;
.end method

.method protected abstract getServerMethod()Ljava/lang/String;
.end method

.method protected abstract parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
.end method
