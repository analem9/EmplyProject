.class public Lio/olvid/messenger/databases/ObvTypeConverters;
.super Ljava/lang/Object;
.source "ObvTypeConverters.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesKeyFromBytes([B)Lio/olvid/messenger/databases/AppDatabase$BytesKey;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_0
    new-instance v0, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    return-object v0
.end method

.method public static bytesKeyToBytes(Lio/olvid/messenger/databases/AppDatabase$BytesKey;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_0
    iget-object p0, p0, Lio/olvid/messenger/databases/AppDatabase$BytesKey;->bytes:[B

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/UUID;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static obvDialogFromBytes([B)Lio/olvid/engine/engine/types/ObvDialog;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 96
    :cond_0
    :try_start_0
    new-instance v1, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {v1, p0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object p0

    invoke-static {v1, p0}, Lio/olvid/engine/engine/types/ObvDialog;->of(Lio/olvid/engine/encoder/Encoded;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/engine/types/ObvDialog;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static obvDialogToBytes(Lio/olvid/engine/engine/types/ObvDialog;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/olvid/engine/engine/types/ObvDialog;->encode(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static uuidToString(Ljava/util/UUID;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
