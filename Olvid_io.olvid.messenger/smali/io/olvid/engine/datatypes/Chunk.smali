.class public Lio/olvid/engine/datatypes/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field private final chunkNumber:I

.field private final data:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lio/olvid/engine/datatypes/Chunk;->chunkNumber:I

    .line 21
    iput-object p2, p0, Lio/olvid/engine/datatypes/Chunk;->data:[B

    return-void
.end method

.method public static lengthOfEncodedChunkFromLengthOfInnerData(I)I
    .locals 0

    add-int/lit8 p0, p0, 0xf

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static lengthOfInnerDataFromLengthOfEncodedChunk(I)I
    .locals 0

    add-int/lit8 p0, p0, -0xf

    add-int/lit8 p0, p0, -0x8

    return p0
.end method

.method public static of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/Chunk;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 26
    new-instance v0, Lio/olvid/engine/datatypes/Chunk;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v1

    long-to-int v2, v1

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lio/olvid/engine/datatypes/Chunk;-><init>(I[B)V

    return-object v0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 30
    iget v1, p0, Lio/olvid/engine/datatypes/Chunk;->chunkNumber:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/datatypes/Chunk;->data:[B

    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method

.method public getChunkNumber()I
    .locals 1

    .line 12
    iget v0, p0, Lio/olvid/engine/datatypes/Chunk;->chunkNumber:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lio/olvid/engine/datatypes/Chunk;->data:[B

    return-object v0
.end method
