.class public Lio/olvid/engine/datatypes/EncryptedBytes;
.super Ljava/lang/Object;
.source "EncryptedBytes.java"


# instance fields
.field final bytes:[B

.field public final length:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/olvid/engine/datatypes/EncryptedBytes;->bytes:[B

    .line 15
    array-length p1, p1

    iput p1, p0, Lio/olvid/engine/datatypes/EncryptedBytes;->length:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 24
    instance-of v0, p1, Lio/olvid/engine/datatypes/EncryptedBytes;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 27
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/EncryptedBytes;->bytes:[B

    check-cast p1, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 19
    iget-object v0, p0, Lio/olvid/engine/datatypes/EncryptedBytes;->bytes:[B

    return-object v0
.end method
