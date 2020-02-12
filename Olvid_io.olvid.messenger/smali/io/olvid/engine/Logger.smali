.class public Lio/olvid/engine/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/Logger$LogOutputter;
    }
.end annotation


# static fields
.field public static final DEBUG:I = 0x0

.field public static final ERROR:I = 0x3

.field public static final INFO:I = 0x1

.field public static final NONE:I = 0xa

.field public static final WARNING:I = 0x2

.field private static final hexArray:[C

.field private static outputLogLevel:I = 0xa

.field private static outputter:Lio/olvid/engine/Logger$LogOutputter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/olvid/engine/Logger;->hexArray:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-static {v0, p0}, Lio/olvid/engine/Logger;->log(ILjava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 107
    invoke-static {v0, p0}, Lio/olvid/engine/Logger;->log(ILjava/lang/String;)V

    return-void
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .locals 7

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 124
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 126
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 101
    invoke-static {v0, p0}, Lio/olvid/engine/Logger;->log(ILjava/lang/String;)V

    return-void
.end method

.method private static log(ILjava/lang/String;)V
    .locals 3

    .line 47
    sget v0, Lio/olvid/engine/Logger;->outputLogLevel:I

    if-lt p0, v0, :cond_5

    .line 49
    sget-object v0, Lio/olvid/engine/Logger;->outputter:Lio/olvid/engine/Logger$LogOutputter;

    if-nez v0, :cond_0

    .line 51
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "Logger"

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {v0, v1, p1}, Lio/olvid/engine/Logger$LogOutputter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-interface {v0, v1, p1}, Lio/olvid/engine/Logger$LogOutputter;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    invoke-interface {v0, v1, p1}, Lio/olvid/engine/Logger$LogOutputter;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_4
    invoke-interface {v0, v1, p1}, Lio/olvid/engine/Logger$LogOutputter;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static setOutputLogLevel(I)V
    .locals 0

    .line 73
    sput p0, Lio/olvid/engine/Logger;->outputLogLevel:I

    return-void
.end method

.method public static setOutputter(Lio/olvid/engine/Logger$LogOutputter;)V
    .locals 0

    .line 23
    sput-object p0, Lio/olvid/engine/Logger;->outputter:Lio/olvid/engine/Logger$LogOutputter;

    return-void
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 6

    .line 113
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 114
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 115
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 116
    sget-object v4, Lio/olvid/engine/Logger;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 117
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 104
    invoke-static {v0, p0}, Lio/olvid/engine/Logger;->log(ILjava/lang/String;)V

    return-void
.end method
