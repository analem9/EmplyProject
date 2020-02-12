.class public Lio/olvid/engine/datatypes/KeyId;
.super Ljava/lang/Object;
.source "KeyId.java"


# static fields
.field public static final KEYID_LENGTH:I = 0x20


# instance fields
.field private final keyId:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 17
    iput-object p1, p0, Lio/olvid/engine/datatypes/KeyId;->keyId:[B

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 31
    instance-of v0, p1, Lio/olvid/engine/datatypes/KeyId;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/KeyId;->keyId:[B

    check-cast p1, Lio/olvid/engine/datatypes/KeyId;

    iget-object p1, p1, Lio/olvid/engine/datatypes/KeyId;->keyId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lio/olvid/engine/datatypes/KeyId;->keyId:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/olvid/engine/datatypes/KeyId;->keyId:[B

    invoke-static {v0}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
