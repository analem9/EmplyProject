.class public Lio/olvid/engine/datatypes/DictionaryKey;
.super Ljava/lang/Object;
.source "DictionaryKey.java"


# instance fields
.field public final data:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 20
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/datatypes/DictionaryKey;->data:[B

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 13
    iput-object p1, p0, Lio/olvid/engine/datatypes/DictionaryKey;->data:[B

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 25
    instance-of v0, p1, Lio/olvid/engine/datatypes/DictionaryKey;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 28
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/DictionaryKey;->data:[B

    check-cast p1, Lio/olvid/engine/datatypes/DictionaryKey;

    iget-object p1, p1, Lio/olvid/engine/datatypes/DictionaryKey;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 33
    iget-object v0, p0, Lio/olvid/engine/datatypes/DictionaryKey;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
