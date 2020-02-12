.class Lio/olvid/engine/crypto/MDC;
.super Lio/olvid/engine/crypto/EdwardCurve;
.source "EdwardCurve.java"


# static fields
.field private static instance:Lio/olvid/engine/crypto/MDC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lio/olvid/engine/crypto/MDC;

    invoke-direct {v0}, Lio/olvid/engine/crypto/MDC;-><init>()V

    sput-object v0, Lio/olvid/engine/crypto/MDC;->instance:Lio/olvid/engine/crypto/MDC;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 189
    invoke-direct {p0}, Lio/olvid/engine/crypto/EdwardCurve;-><init>()V

    .line 190
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lio/olvid/engine/crypto/MDC;->p:Ljava/math/BigInteger;

    .line 191
    new-instance v0, Ljava/math/BigInteger;

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    invoke-direct {v0, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    new-array v4, v1, [B

    fill-array-data v4, :array_2

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {v0, v2, p0}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->noCheckFactory(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/crypto/MDC;->G:Lio/olvid/engine/datatypes/EdwardCurvePoint;

    .line 196
    new-instance v0, Ljava/math/BigInteger;

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    invoke-direct {v0, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lio/olvid/engine/crypto/MDC;->q:Ljava/math/BigInteger;

    .line 197
    new-instance v0, Ljava/math/BigInteger;

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    invoke-direct {v0, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lio/olvid/engine/crypto/MDC;->d:Ljava/math/BigInteger;

    const-wide/16 v4, 0x4

    .line 198
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/crypto/MDC;->nu:Ljava/math/BigInteger;

    const-wide/16 v4, 0x2

    .line 199
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/crypto/MDC;->tonelliNonQR:Ljava/math/BigInteger;

    .line 200
    iget-object v0, p0, Lio/olvid/engine/crypto/MDC;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/crypto/MDC;->tonelliT:Ljava/math/BigInteger;

    .line 201
    iput v3, p0, Lio/olvid/engine/crypto/MDC;->tonelliS:I

    .line 202
    iput v1, p0, Lio/olvid/engine/crypto/MDC;->byteLength:I

    return-void

    nop

    :array_0
    .array-data 1
        -0xft
        0x3bt
        0x68t
        -0x47t
        -0x2ct
        0x56t
        -0x51t
        -0x4ct
        0x53t
        0x2ft
        -0x6et
        -0x3t
        -0x29t
        -0x5bt
        -0x3t
        0x4ft
        0x8t
        0x6at
        -0x70t
        0x37t
        -0x11t
        0x7t
        -0x51t
        -0x62t
        -0x3ft
        0x37t
        0x10t
        0x40t
        0x57t
        0x79t
        -0x14t
        0x13t
    .end array-data

    :array_1
    .array-data 1
        -0x4at
        -0x7ft
        -0x78t
        0x6at
        0x7ft
        -0x70t
        0x3bt
        -0x7dt
        -0x28t
        0x5bt
        0x42t
        0x1et
        0x3t
        -0x35t
        -0x31t
        0x63t
        0x50t
        -0x29t
        0x2at
        -0x45t
        -0x73t
        0x27t
        0x13t
        -0x1et
        0x23t
        0x2ct
        0x25t
        -0x41t
        -0x12t
        0x68t
        0x36t
        0x3bt
    .end array-data

    :array_2
    .array-data 1
        -0x36t
        0x67t
        0x34t
        -0x1ft
        -0x4bt
        -0x64t
        0xbt
        0x3t
        0x59t
        -0x7ft
        0x4dt
        -0x31t
        0x65t
        0x63t
        -0x26t
        0x42t
        0x1dt
        -0x58t
        -0x44t
        0x3dt
        -0x7ft
        -0x57t
        0x3at
        0x3at
        0x7et
        0x73t
        -0x3dt
        0x55t
        -0x43t
        0x28t
        0x64t
        -0x4bt
    .end array-data

    :array_3
    .array-data 1
        0x3ct
        0x4et
        -0x26t
        0x2et
        0x75t
        0x15t
        -0x55t
        -0x13t
        0x14t
        -0x35t
        -0x1ct
        -0x41t
        0x75t
        -0x17t
        0x7ft
        0x53t
        0x4ft
        -0x4dt
        -0x77t
        0x75t
        -0x6t
        -0x7t
        0x74t
        -0x45t
        0x58t
        -0x7bt
        0x52t
        -0xct
        0x21t
        -0x50t
        -0x9t
        -0x5t
    .end array-data

    :array_4
    .array-data 1
        0x57t
        0x13t
        0x4t
        0x52t
        0x19t
        0x65t
        -0x4at
        -0x76t
        0x7ct
        -0x21t
        -0x41t
        -0x34t
        -0x5t
        0xct
        -0x47t
        0x62t
        0x5ft
        0x12t
        0x70t
        -0xat
        0x3ft
        0x21t
        -0x10t
        0x41t
        -0x12t
        -0x6dt
        0x9t
        0x25t
        0x3t
        0x0t
        -0x31t
        -0x77t
    .end array-data
.end method

.method public static getInstance()Lio/olvid/engine/crypto/MDC;
    .locals 1

    .line 206
    sget-object v0, Lio/olvid/engine/crypto/MDC;->instance:Lio/olvid/engine/crypto/MDC;

    return-object v0
.end method
