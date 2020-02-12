.class public Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;
.super Ljava/lang/Object;
.source "ObvPostMessageOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/engine/types/ObvPostMessageOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesKey"
.end annotation


# instance fields
.field final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;->bytes:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 51
    instance-of v0, p1, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;->bytes:[B

    check-cast p1, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;

    iget-object p1, p1, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;->bytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;->bytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 57
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
