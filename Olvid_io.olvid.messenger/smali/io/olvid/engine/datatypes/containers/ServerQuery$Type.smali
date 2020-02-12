.class public Lio/olvid/engine/datatypes/containers/ServerQuery$Type;
.super Ljava/lang/Object;
.source "ServerQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/datatypes/containers/ServerQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final DEVICE_DISCOVERY_QUERY_ID:I = 0x0

.field public static final GET_USER_DATA_QUERY_ID:I = 0x2

.field public static final PUT_USER_DATA_QUERY_ID:I = 0x1


# instance fields
.field private final data:Lio/olvid/engine/datatypes/EncryptedBytes;

.field private final id:I

.field private final identity:Lio/olvid/engine/datatypes/Identity;

.field private final server:Ljava/lang/String;

.field private final serverLabel:Lio/olvid/engine/datatypes/UID;


# direct methods
.method private constructor <init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/EncryptedBytes;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->id:I

    .line 75
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->server:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 77
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->serverLabel:Lio/olvid/engine/datatypes/UID;

    .line 78
    iput-object p5, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->data:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-void
.end method

.method public static createDeviceDiscoveryQuery(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/ServerQuery$Type;
    .locals 7

    .line 102
    new-instance v6, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/EncryptedBytes;)V

    return-object v6
.end method

.method public static createGetUserDataQuery(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/ServerQuery$Type;
    .locals 7

    .line 110
    new-instance v6, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/EncryptedBytes;)V

    return-object v6
.end method

.method public static createPutUserDataQuery(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/datatypes/containers/ServerQuery$Type;
    .locals 7

    .line 106
    new-instance v6, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    move-object v0, v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/EncryptedBytes;)V

    return-object v6
.end method

.method public static of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/ServerQuery$Type;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 115
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    .line 118
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v2

    long-to-int v5, v2

    const/4 v2, 0x1

    .line 119
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    .line 124
    aget-object p0, p0, v3

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    const/4 v4, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v2, :cond_2

    if-eq v5, v3, :cond_0

    move-object v7, v4

    move-object v8, v7

    :goto_0
    move-object v9, v8

    goto :goto_1

    .line 143
    :cond_0
    array-length v1, p0

    if-ne v1, v3, :cond_1

    .line 146
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    .line 147
    aget-object p0, p0, v2

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p0

    move-object v8, p0

    move-object v7, v0

    move-object v9, v4

    goto :goto_1

    .line 144
    :cond_1
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 134
    :cond_2
    array-length v4, p0

    if-ne v4, v1, :cond_3

    .line 137
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    .line 138
    aget-object v1, p0, v2

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 139
    aget-object p0, p0, v3

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeEncryptedData()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object p0

    move-object v9, p0

    move-object v7, v0

    move-object v8, v1

    goto :goto_1

    .line 135
    :cond_3
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 127
    :cond_4
    array-length v1, p0

    if-ne v1, v2, :cond_5

    .line 130
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p0

    move-object v7, p0

    move-object v8, v4

    goto :goto_0

    .line 151
    :goto_1
    new-instance p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/EncryptedBytes;)V

    return-object p0

    .line 128
    :cond_5
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 116
    :cond_6
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 7

    .line 156
    iget v0, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->id:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-array v0, v3, [Lio/olvid/engine/encoder/Encoded;

    .line 172
    iget-object v5, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 173
    invoke-static {v5}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    aput-object v5, v0, v2

    iget-object v5, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->serverLabel:Lio/olvid/engine/datatypes/UID;

    .line 174
    invoke-static {v5}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    aput-object v5, v0, v4

    .line 172
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v0, v1, [Lio/olvid/engine/encoder/Encoded;

    .line 164
    iget-object v5, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 165
    invoke-static {v5}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    aput-object v5, v0, v2

    iget-object v5, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->serverLabel:Lio/olvid/engine/datatypes/UID;

    .line 166
    invoke-static {v5}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v5, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->data:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 167
    invoke-static {v5}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    aput-object v5, v0, v3

    .line 164
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v0, v4, [Lio/olvid/engine/encoder/Encoded;

    .line 158
    iget-object v5, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 159
    invoke-static {v5}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    aput-object v5, v0, v2

    .line 158
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    :goto_0
    new-array v1, v1, [Lio/olvid/engine/encoder/Encoded;

    .line 179
    iget v5, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->id:I

    int-to-long v5, v5

    .line 180
    invoke-static {v5, v6}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    aput-object v5, v1, v2

    iget-object v2, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->server:Ljava/lang/String;

    .line 181
    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v0, v1, v3

    .line 179
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->data:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 82
    iget v0, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->id:I

    return v0
.end method

.method public getIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 90
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->identity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getServerLabel()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->serverLabel:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method
