.class Lio/olvid/engine/crypto/Curve25519;
.super Lio/olvid/engine/crypto/EdwardCurve;
.source "EdwardCurve.java"


# static fields
.field private static instance:Lio/olvid/engine/crypto/Curve25519;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Lio/olvid/engine/crypto/Curve25519;

    invoke-direct {v0}, Lio/olvid/engine/crypto/Curve25519;-><init>()V

    sput-object v0, Lio/olvid/engine/crypto/Curve25519;->instance:Lio/olvid/engine/crypto/Curve25519;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 213
    invoke-direct {p0}, Lio/olvid/engine/crypto/EdwardCurve;-><init>()V

    .line 214
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lio/olvid/engine/crypto/Curve25519;->p:Ljava/math/BigInteger;

    .line 215
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

    iput-object v0, p0, Lio/olvid/engine/crypto/Curve25519;->G:Lio/olvid/engine/datatypes/EdwardCurvePoint;

    .line 220
    new-instance v0, Ljava/math/BigInteger;

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    invoke-direct {v0, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lio/olvid/engine/crypto/Curve25519;->q:Ljava/math/BigInteger;

    .line 221
    new-instance v0, Ljava/math/BigInteger;

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    invoke-direct {v0, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lio/olvid/engine/crypto/Curve25519;->d:Ljava/math/BigInteger;

    const-wide/16 v2, 0x8

    .line 222
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/crypto/Curve25519;->nu:Ljava/math/BigInteger;

    const-wide/16 v2, 0x2

    .line 223
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/crypto/Curve25519;->tonelliNonQR:Ljava/math/BigInteger;

    .line 224
    iget-object v0, p0, Lio/olvid/engine/crypto/Curve25519;->p:Ljava/math/BigInteger;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/crypto/Curve25519;->tonelliT:Ljava/math/BigInteger;

    .line 225
    iput v2, p0, Lio/olvid/engine/crypto/Curve25519;->tonelliS:I

    .line 226
    iput v1, p0, Lio/olvid/engine/crypto/Curve25519;->byteLength:I

    return-void

    :array_0
    .array-data 1
        0x7ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x13t
    .end array-data

    :array_1
    .array-data 1
        0x15t
        -0x66t
        0x68t
        0x49t
        -0x1ct
        0x4ct
        0x3ct
        0x7ft
        0x6t
        0x1bt
        0x3dt
        0x57t
        0xft
        -0x3ct
        -0x13t
        0x5bt
        0x5dt
        0x14t
        -0x38t
        -0x46t
        0x42t
        0x53t
        -0x21t
        0x49t
        -0x34t
        0x7et
        -0x21t
        -0x80t
        -0xbt
        0x33t
        -0x53t
        -0x65t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x58t
    .end array-data

    :array_3
    .array-data 1
        0x10t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x14t
        -0x22t
        -0x7t
        -0x22t
        -0x5et
        -0x9t
        -0x64t
        -0x2at
        0x58t
        0x12t
        0x63t
        0x1at
        0x5ct
        -0xbt
        -0x2dt
        -0x13t
    .end array-data

    :array_4
    .array-data 1
        0x2dt
        -0x4t
        -0x6dt
        0x11t
        -0x2ct
        -0x70t
        0x1t
        -0x74t
        0x73t
        0x38t
        -0x41t
        -0x7at
        -0x78t
        -0x7at
        0x17t
        0x67t
        -0x1t
        -0x71t
        -0xbt
        -0x4et
        -0x42t
        -0x42t
        0x27t
        0x54t
        -0x76t
        0x14t
        -0x4et
        0x35t
        -0x14t
        -0x5at
        -0x79t
        0x4at
    .end array-data
.end method

.method public static getInstance()Lio/olvid/engine/crypto/Curve25519;
    .locals 1

    .line 230
    sget-object v0, Lio/olvid/engine/crypto/Curve25519;->instance:Lio/olvid/engine/crypto/Curve25519;

    return-object v0
.end method
