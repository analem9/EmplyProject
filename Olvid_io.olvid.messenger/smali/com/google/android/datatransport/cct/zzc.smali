.class final Lcom/google/android/datatransport/cct/zzc;
.super Ljava/lang/Object;
.source "com.google.android.datatransport:transport-backend-cct@@2.2.0"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/TransportBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/zzc$zza;,
        Lcom/google/android/datatransport/cct/zzc$zzb;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/firebase/encoders/DataEncoder;

.field private final zzb:Landroid/net/ConnectivityManager;

.field final zzc:Ljava/net/URL;

.field private final zzd:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final zze:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final zzf:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/datatransport/cct/a/zzs;->zza()Lcom/google/firebase/encoders/DataEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/cct/zzc;->zza:Lcom/google/firebase/encoders/DataEncoder;

    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/google/android/datatransport/cct/zzc;->zzb:Landroid/net/ConnectivityManager;

    .line 4
    sget-object p1, Lcom/google/android/datatransport/cct/CCTDestination;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/datatransport/cct/zzc;->zza(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/zzc;->zzc:Ljava/net/URL;

    .line 5
    iput-object p3, p0, Lcom/google/android/datatransport/cct/zzc;->zzd:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/cct/zzc;->zze:Lcom/google/android/datatransport/runtime/time/Clock;

    const p1, 0x9c40

    .line 7
    iput p1, p0, Lcom/google/android/datatransport/cct/zzc;->zzf:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/datatransport/cct/zzc$zza;Lcom/google/android/datatransport/cct/zzc$zzb;)Lcom/google/android/datatransport/cct/zzc$zza;
    .locals 3

    .line 49
    iget-object v0, p1, Lcom/google/android/datatransport/cct/zzc$zzb;->zzb:Ljava/net/URL;

    if-eqz v0, :cond_0

    const-string v1, "CctTransportBackend"

    const-string v2, "Following redirect to: %s"

    .line 50
    invoke-static {v1, v2, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iget-object p1, p1, Lcom/google/android/datatransport/cct/zzc$zzb;->zzb:Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/cct/zzc$zza;->zza(Ljava/net/URL;)Lcom/google/android/datatransport/cct/zzc$zza;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private zza(Lcom/google/android/datatransport/cct/zzc$zza;)Lcom/google/android/datatransport/cct/zzc$zzb;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p1, Lcom/google/android/datatransport/cct/zzc$zza;->zza:Ljava/net/URL;

    const-string v1, "CctTransportBackend"

    const-string v2, "Making request to: %s"

    invoke-static {v1, v2, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p1, Lcom/google/android/datatransport/cct/zzc$zza;->zza:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x7530

    .line 5
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6
    iget v2, p0, Lcom/google/android/datatransport/cct/zzc;->zzf:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v4, "POST"

    .line 9
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "2.2.0"

    aput-object v4, v2, v3

    const-string v3, "datatransport/%s android/"

    .line 11
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    .line 12
    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gzip"

    const-string v3, "Content-Encoding"

    .line 13
    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    .line 14
    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Accept-Encoding"

    .line 15
    invoke-virtual {v0, v5, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v5, p1, Lcom/google/android/datatransport/cct/zzc$zza;->zzc:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v6, "X-Goog-Api-Key"

    .line 17
    invoke-virtual {v0, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v5

    .line 19
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 21
    :try_start_1
    iget-object v11, p0, Lcom/google/android/datatransport/cct/zzc;->zza:Lcom/google/firebase/encoders/DataEncoder;

    iget-object p1, p1, Lcom/google/android/datatransport/cct/zzc$zza;->zzb:Lcom/google/android/datatransport/cct/a/zzo;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-direct {v12, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v11, p1, v12}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_1
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 23
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 24
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v7, "Status Code: "

    :try_start_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/datatransport/runtime/logging/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v7, "Content-Type: "

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/datatransport/runtime/logging/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v6, "Content-Encoding: "

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/datatransport/runtime/logging/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x12e

    if-eq p1, v1, :cond_4

    const/16 v1, 0x12d

    if-eq p1, v1, :cond_4

    const/16 v1, 0x133

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_2

    .line 28
    new-instance v0, Lcom/google/android/datatransport/cct/zzc$zzb;

    invoke-direct {v0, p1, v10, v8, v9}, Lcom/google/android/datatransport/cct/zzc$zzb;-><init>(ILjava/net/URL;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 29
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V

    return-object v0

    .line 30
    :cond_2
    :try_start_6
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 34
    :goto_0
    :try_start_7
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 35
    invoke-static {v0}, Lcom/google/android/datatransport/cct/a/zzx;->zza(Ljava/io/Reader;)Lcom/google/android/datatransport/cct/a/zzx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/datatransport/cct/a/zzx;->zza()J

    move-result-wide v2

    .line 36
    new-instance v0, Lcom/google/android/datatransport/cct/zzc$zzb;

    invoke-direct {v0, p1, v10, v2, v3}, Lcom/google/android/datatransport/cct/zzc$zzb;-><init>(ILjava/net/URL;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 37
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 38
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 39
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_4
    :goto_1
    const-string v1, "Location"

    .line 40
    :try_start_a
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/google/android/datatransport/cct/zzc$zzb;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v2, v8, v9}, Lcom/google/android/datatransport/cct/zzc$zzb;-><init>(ILjava/net/URL;J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 42
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V

    return-object v1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    const-string v0, "Couldn\'t encode request, returning with 400"

    .line 43
    :try_start_b
    invoke-static {v1, v0, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    new-instance p1, Lcom/google/android/datatransport/cct/zzc$zzb;

    const/16 v0, 0x190

    invoke-direct {p1, v0, v10, v8, v9}, Lcom/google/android/datatransport/cct/zzc$zzb;-><init>(ILjava/net/URL;J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 45
    :try_start_c
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 46
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V

    return-object p1

    .line 47
    :goto_3
    :try_start_d
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception p1

    .line 48
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/datatransport/cct/zzc;Lcom/google/android/datatransport/cct/zzc$zza;)Lcom/google/android/datatransport/cct/zzc$zzb;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/cct/zzc;->zza(Lcom/google/android/datatransport/cct/zzc$zza;)Lcom/google/android/datatransport/cct/zzc$zzb;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public decorate(Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/EventInternal;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/zzc;->zzb:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->toBuilder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "sdk-version"

    .line 3
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    .line 4
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "hardware"

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "device"

    .line 6
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "product"

    .line 7
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "os-uild"

    .line 8
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "manufacturer"

    .line 9
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "fingerprint"

    .line 10
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    .line 11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 12
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const-string v3, "tz-offset"

    .line 14
    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    if-nez v0, :cond_0

    .line 15
    sget-object v1, Lcom/google/android/datatransport/cct/a/zzy$zzc;->zzs:Lcom/google/android/datatransport/cct/a/zzy$zzc;

    invoke-virtual {v1}, Lcom/google/android/datatransport/cct/a/zzy$zzc;->zza()I

    move-result v1

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :goto_0
    const-string v2, "net-type"

    .line 17
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    if-nez v0, :cond_1

    .line 18
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzy$zzb;->zza:Lcom/google/android/datatransport/cct/a/zzy$zzb;

    invoke-virtual {v0}, Lcom/google/android/datatransport/cct/a/zzy$zzb;->zza()I

    move-result v0

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 20
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzy$zzb;->zzu:Lcom/google/android/datatransport/cct/a/zzy$zzb;

    invoke-virtual {v0}, Lcom/google/android/datatransport/cct/a/zzy$zzb;->zza()I

    move-result v0

    goto :goto_1

    .line 21
    :cond_2
    invoke-static {v0}, Lcom/google/android/datatransport/cct/a/zzy$zzb;->zza(I)Lcom/google/android/datatransport/cct/a/zzy$zzb;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v1, "mobile-subtype"

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object p1

    return-object p1
.end method

.method public send(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getEvents()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "CctTransportBackend"

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 12
    invoke-static {}, Lcom/google/android/datatransport/cct/a/zzv;->zza()Lcom/google/android/datatransport/cct/a/zzv$zza;

    move-result-object v5

    sget-object v6, Lcom/google/android/datatransport/cct/a/zzaa;->zza:Lcom/google/android/datatransport/cct/a/zzaa;

    .line 13
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/a/zzv$zza;->zza(Lcom/google/android/datatransport/cct/a/zzaa;)Lcom/google/android/datatransport/cct/a/zzv$zza;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/datatransport/cct/zzc;->zze:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 14
    invoke-interface {v6}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/datatransport/cct/a/zzv$zza;->zza(J)Lcom/google/android/datatransport/cct/a/zzv$zza;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/datatransport/cct/zzc;->zzd:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 15
    invoke-interface {v6}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/datatransport/cct/a/zzv$zza;->zzb(J)Lcom/google/android/datatransport/cct/a/zzv$zza;

    move-result-object v5

    .line 16
    invoke-static {}, Lcom/google/android/datatransport/cct/a/zzq;->zza()Lcom/google/android/datatransport/cct/a/zzq$zza;

    move-result-object v6

    sget-object v7, Lcom/google/android/datatransport/cct/a/zzq$zzb;->zzb:Lcom/google/android/datatransport/cct/a/zzq$zzb;

    .line 17
    invoke-virtual {v6, v7}, Lcom/google/android/datatransport/cct/a/zzq$zza;->zza(Lcom/google/android/datatransport/cct/a/zzq$zzb;)Lcom/google/android/datatransport/cct/a/zzq$zza;

    move-result-object v6

    .line 18
    invoke-static {}, Lcom/google/android/datatransport/cct/a/zza;->zza()Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "sdk-version"

    .line 19
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zza(I)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "model"

    .line 20
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zze(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "hardware"

    .line 21
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zzc(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "device"

    .line 22
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zza(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "product"

    .line 23
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zzg(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "os-uild"

    .line 24
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zzf(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "manufacturer"

    .line 25
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zzd(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "fingerprint"

    .line 26
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/google/android/datatransport/cct/a/zza$zza;->zzb(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lcom/google/android/datatransport/cct/a/zza$zza;->zza()Lcom/google/android/datatransport/cct/a/zza;

    move-result-object v4

    .line 28
    invoke-virtual {v6, v4}, Lcom/google/android/datatransport/cct/a/zzq$zza;->zza(Lcom/google/android/datatransport/cct/a/zza;)Lcom/google/android/datatransport/cct/a/zzq$zza;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lcom/google/android/datatransport/cct/a/zzq$zza;->zza()Lcom/google/android/datatransport/cct/a/zzq;

    move-result-object v4

    .line 30
    invoke-virtual {v5, v4}, Lcom/google/android/datatransport/cct/a/zzv$zza;->zza(Lcom/google/android/datatransport/cct/a/zzq;)Lcom/google/android/datatransport/cct/a/zzv$zza;

    move-result-object v4

    .line 31
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/datatransport/cct/a/zzv$zza;->zzb(I)Lcom/google/android/datatransport/cct/a/zzv$zza;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 32
    :catch_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/datatransport/cct/a/zzv$zza;->zzb(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zzv$zza;

    .line 33
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 35
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    move-result-object v7

    .line 36
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getEncoding()Lcom/google/android/datatransport/Encoding;

    move-result-object v8

    const-string v9, "proto"

    .line 37
    invoke-static {v9}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 38
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/datatransport/cct/a/zzt;->zza([B)Lcom/google/android/datatransport/cct/a/zzt$zza;

    move-result-object v7

    goto :goto_4

    :cond_2
    const-string v9, "json"

    .line 39
    invoke-static {v9}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 40
    new-instance v8, Ljava/lang/String;

    .line 41
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getBytes()[B

    move-result-object v7

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v8}, Lcom/google/android/datatransport/cct/a/zzt;->zza(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zzt$zza;

    move-result-object v7

    .line 42
    :goto_4
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/EventInternal;->getEventMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/datatransport/cct/a/zzt$zza;->zza(J)Lcom/google/android/datatransport/cct/a/zzt$zza;

    move-result-object v8

    .line 43
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/EventInternal;->getUptimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/datatransport/cct/a/zzt$zza;->zzb(J)Lcom/google/android/datatransport/cct/a/zzt$zza;

    move-result-object v8

    const-string v9, "tz-offset"

    .line 44
    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/datatransport/cct/a/zzt$zza;->zzc(J)Lcom/google/android/datatransport/cct/a/zzt$zza;

    move-result-object v8

    .line 45
    invoke-static {}, Lcom/google/android/datatransport/cct/a/zzy;->zza()Lcom/google/android/datatransport/cct/a/zzy$zza;

    move-result-object v9

    const-string v10, "net-type"

    .line 46
    invoke-virtual {v6, v10}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    move-result v10

    .line 47
    invoke-static {v10}, Lcom/google/android/datatransport/cct/a/zzy$zzc;->zza(I)Lcom/google/android/datatransport/cct/a/zzy$zzc;

    move-result-object v10

    .line 48
    invoke-virtual {v9, v10}, Lcom/google/android/datatransport/cct/a/zzy$zza;->zza(Lcom/google/android/datatransport/cct/a/zzy$zzc;)Lcom/google/android/datatransport/cct/a/zzy$zza;

    move-result-object v9

    const-string v10, "mobile-subtype"

    .line 49
    invoke-virtual {v6, v10}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    move-result v10

    .line 50
    invoke-static {v10}, Lcom/google/android/datatransport/cct/a/zzy$zzb;->zza(I)Lcom/google/android/datatransport/cct/a/zzy$zzb;

    move-result-object v10

    .line 51
    invoke-virtual {v9, v10}, Lcom/google/android/datatransport/cct/a/zzy$zza;->zza(Lcom/google/android/datatransport/cct/a/zzy$zzb;)Lcom/google/android/datatransport/cct/a/zzy$zza;

    move-result-object v9

    .line 52
    invoke-virtual {v9}, Lcom/google/android/datatransport/cct/a/zzy$zza;->zza()Lcom/google/android/datatransport/cct/a/zzy;

    move-result-object v9

    .line 53
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/a/zzt$zza;->zza(Lcom/google/android/datatransport/cct/a/zzy;)Lcom/google/android/datatransport/cct/a/zzt$zza;

    .line 54
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 55
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/google/android/datatransport/cct/a/zzt$zza;->zza(I)Lcom/google/android/datatransport/cct/a/zzt$zza;

    .line 56
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/datatransport/cct/a/zzt$zza;->zza()Lcom/google/android/datatransport/cct/a/zzt;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    const-string v6, "Received event of unsupported encoding %s. Skipping..."

    .line 57
    invoke-static {v3, v6, v8}, Lcom/google/android/datatransport/runtime/logging/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 58
    :cond_5
    invoke-virtual {v4, v5}, Lcom/google/android/datatransport/cct/a/zzv$zza;->zza(Ljava/util/List;)Lcom/google/android/datatransport/cct/a/zzv$zza;

    .line 59
    invoke-virtual {v4}, Lcom/google/android/datatransport/cct/a/zzv$zza;->zza()Lcom/google/android/datatransport/cct/a/zzv;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 60
    :cond_6
    invoke-static {v1}, Lcom/google/android/datatransport/cct/a/zzo;->zza(Ljava/util/List;)Lcom/google/android/datatransport/cct/a/zzo;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/google/android/datatransport/cct/zzc;->zzc:Ljava/net/URL;

    .line 62
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getExtras()[B

    move-result-object v4

    if-eqz v4, :cond_8

    .line 63
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getExtras()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->fromByteArray([B)Lcom/google/android/datatransport/cct/CCTDestination;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getAPIKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 65
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getAPIKey()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getEndPoint()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 67
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getEndPoint()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/cct/zzc;->zza(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 68
    :catch_1
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_5
    const/4 p1, 0x5

    .line 69
    :try_start_2
    new-instance v4, Lcom/google/android/datatransport/cct/zzc$zza;

    invoke-direct {v4, v2, v0, v1}, Lcom/google/android/datatransport/cct/zzc$zza;-><init>(Ljava/net/URL;Lcom/google/android/datatransport/cct/a/zzo;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/datatransport/cct/zza;->zza(Lcom/google/android/datatransport/cct/zzc;)Lcom/google/android/datatransport/runtime/retries/Function;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/cct/zzb;->zza()Lcom/google/android/datatransport/runtime/retries/RetryStrategy;

    move-result-object v1

    .line 70
    invoke-static {p1, v4, v0, v1}, Lcom/google/android/datatransport/runtime/retries/Retries;->retry(ILjava/lang/Object;Lcom/google/android/datatransport/runtime/retries/Function;Lcom/google/android/datatransport/runtime/retries/RetryStrategy;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/datatransport/cct/zzc$zzb;

    .line 71
    iget v0, p1, Lcom/google/android/datatransport/cct/zzc$zzb;->zza:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_9

    .line 72
    iget-wide v0, p1, Lcom/google/android/datatransport/cct/zzc$zzb;->zzc:J

    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->ok(J)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object p1

    return-object p1

    .line 73
    :cond_9
    iget p1, p1, Lcom/google/android/datatransport/cct/zzc$zzb;->zza:I

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_b

    const/16 v0, 0x194

    if-ne p1, v0, :cond_a

    goto :goto_6

    .line 74
    :cond_a
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object p1

    return-object p1

    .line 75
    :cond_b
    :goto_6
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->transientError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    const-string v0, "Could not make request to the backend"

    .line 76
    invoke-static {v3, v0, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->transientError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object p1

    return-object p1
.end method
