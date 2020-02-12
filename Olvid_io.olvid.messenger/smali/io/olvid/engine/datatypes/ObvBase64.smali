.class public Lio/olvid/engine/datatypes/ObvBase64;
.super Ljava/lang/Object;
.source "ObvBase64.java"


# static fields
.field private static final base64Map:[C

.field private static final invBase64Map:[I

.field private static final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 7
    sput-object v0, Lio/olvid/engine/datatypes/ObvBase64;->base64Map:[C

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 8
    sput-object v0, Lio/olvid/engine/datatypes/ObvBase64;->invBase64Map:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10
    :goto_0
    sget-object v2, Lio/olvid/engine/datatypes/ObvBase64;->invBase64Map:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x41

    :goto_1
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_1

    .line 13
    sget-object v2, Lio/olvid/engine/datatypes/ObvBase64;->invBase64Map:[I

    aput v0, v2, v1

    .line 14
    sget-object v2, Lio/olvid/engine/datatypes/ObvBase64;->base64Map:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    move v0, v3

    goto :goto_1

    :cond_1
    const/16 v1, 0x61

    :goto_2
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_2

    .line 17
    sget-object v2, Lio/olvid/engine/datatypes/ObvBase64;->invBase64Map:[I

    aput v0, v2, v1

    .line 18
    sget-object v2, Lio/olvid/engine/datatypes/ObvBase64;->base64Map:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    move v0, v3

    goto :goto_2

    :cond_2
    const/16 v1, 0x30

    :goto_3
    const/16 v2, 0x39

    if-gt v1, v2, :cond_3

    .line 21
    sget-object v2, Lio/olvid/engine/datatypes/ObvBase64;->invBase64Map:[I

    aput v0, v2, v1

    .line 22
    sget-object v2, Lio/olvid/engine/datatypes/ObvBase64;->base64Map:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    move v0, v3

    goto :goto_3

    .line 24
    :cond_3
    sget-object v1, Lio/olvid/engine/datatypes/ObvBase64;->invBase64Map:[I

    const/16 v2, 0x2d

    aput v0, v1, v2

    .line 25
    sget-object v3, Lio/olvid/engine/datatypes/ObvBase64;->base64Map:[C

    add-int/lit8 v4, v0, 0x1

    aput-char v2, v3, v0

    const/16 v0, 0x5f

    .line 26
    aput v4, v1, v0

    .line 27
    aput-char v0, v3, v4

    const-string v0, "^[-_a-zA-Z0-9]*$"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/olvid/engine/datatypes/ObvBase64;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "=+$"

    const-string v1, ""

    .line 60
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 62
    array-length v1, v0

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 65
    sget-object v1, Lio/olvid/engine/datatypes/ObvBase64;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 68
    array-length p0, v0

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x4

    .line 69
    new-array p0, p0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 72
    :goto_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x3

    if-ge v1, v3, :cond_0

    .line 74
    sget-object v3, Lio/olvid/engine/datatypes/ObvBase64;->invBase64Map:[I

    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    aget v1, v3, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v5, v4, 0x1

    .line 75
    aget-char v4, v0, v4

    aget v4, v3, v4

    shl-int/lit8 v4, v4, 0xc

    xor-int/2addr v1, v4

    add-int/lit8 v4, v5, 0x1

    .line 76
    aget-char v5, v0, v5

    aget v5, v3, v5

    shl-int/lit8 v5, v5, 0x6

    xor-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    .line 77
    aget-char v4, v0, v4

    aget v3, v3, v4

    xor-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    .line 79
    aput-byte v4, p0, v2

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    .line 80
    aput-byte v4, p0, v3

    add-int/lit8 v3, v2, 0x1

    int-to-byte v1, v1

    .line 81
    aput-byte v1, p0, v2

    move v2, v3

    move v1, v5

    goto :goto_0

    .line 83
    :cond_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_1

    .line 85
    sget-object v3, Lio/olvid/engine/datatypes/ObvBase64;->invBase64Map:[I

    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    aget v1, v3, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v5, v4, 0x1

    .line 86
    aget-char v4, v0, v4

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0xc

    xor-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    .line 88
    aput-byte v1, p0, v2

    move v2, v3

    move v1, v5

    .line 90
    :cond_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x3

    if-ne v1, v3, :cond_2

    .line 92
    sget-object v3, Lio/olvid/engine/datatypes/ObvBase64;->invBase64Map:[I

    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    aget v1, v3, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v5, v4, 0x1

    .line 93
    aget-char v4, v0, v4

    aget v4, v3, v4

    shl-int/lit8 v4, v4, 0xc

    xor-int/2addr v1, v4

    .line 94
    aget-char v0, v0, v5

    aget v0, v3, v0

    shl-int/lit8 v0, v0, 0x6

    xor-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    .line 96
    aput-byte v3, p0, v2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 97
    aput-byte v0, p0, v1

    :cond_2
    return-object p0

    .line 66
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0

    .line 63
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7

    .line 33
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 34
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 37
    :goto_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    if-ge v1, v3, :cond_0

    .line 38
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v4, v2, 0x1

    .line 40
    sget-object v5, Lio/olvid/engine/datatypes/ObvBase64;->base64Map:[C

    shr-int/lit8 v6, v3, 0x12

    aget-char v6, v5, v6

    aput-char v6, v0, v2

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v6, v3, 0xc

    and-int/lit8 v6, v6, 0x3f

    .line 41
    aget-char v6, v5, v6

    aput-char v6, v0, v4

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    .line 42
    aget-char v6, v5, v6

    aput-char v6, v0, v2

    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    .line 43
    aget-char v3, v5, v3

    aput-char v3, v0, v4

    goto :goto_0

    .line 45
    :cond_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    .line 46
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    .line 47
    sget-object v5, Lio/olvid/engine/datatypes/ObvBase64;->base64Map:[C

    shr-int/lit8 v6, v3, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v5, v6

    aput-char v6, v0, v2

    add-int/lit8 v2, v4, 0x1

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    .line 48
    aget-char v3, v5, v3

    aput-char v3, v0, v4

    .line 50
    :cond_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_2

    .line 51
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    xor-int/2addr p0, v3

    add-int/lit8 v1, v2, 0x1

    .line 52
    sget-object v3, Lio/olvid/engine/datatypes/ObvBase64;->base64Map:[C

    shr-int/lit8 v4, p0, 0xa

    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v3, v4

    aput-char v4, v0, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0x3f

    .line 53
    aget-char v4, v3, v4

    aput-char v4, v0, v1

    shl-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p0, 0x3f

    .line 54
    aget-char p0, v3, p0

    aput-char p0, v0, v2

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
