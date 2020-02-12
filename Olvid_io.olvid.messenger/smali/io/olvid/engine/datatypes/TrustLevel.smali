.class public Lio/olvid/engine/datatypes/TrustLevel;
.super Ljava/lang/Object;
.source "TrustLevel.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final major:I

.field public final minor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lio/olvid/engine/datatypes/TrustLevel;->major:I

    .line 9
    iput p2, p0, Lio/olvid/engine/datatypes/TrustLevel;->minor:I

    return-void
.end method

.method public static createDirect()Lio/olvid/engine/datatypes/TrustLevel;
    .locals 3

    .line 24
    new-instance v0, Lio/olvid/engine/datatypes/TrustLevel;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/olvid/engine/datatypes/TrustLevel;-><init>(II)V

    return-object v0
.end method

.method public static createIndirect(I)Lio/olvid/engine/datatypes/TrustLevel;
    .locals 2

    .line 32
    new-instance v0, Lio/olvid/engine/datatypes/TrustLevel;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lio/olvid/engine/datatypes/TrustLevel;-><init>(II)V

    return-object v0
.end method

.method public static createServer()Lio/olvid/engine/datatypes/TrustLevel;
    .locals 3

    .line 28
    new-instance v0, Lio/olvid/engine/datatypes/TrustLevel;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/olvid/engine/datatypes/TrustLevel;-><init>(II)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lio/olvid/engine/datatypes/TrustLevel;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 14
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 15
    new-instance v1, Lio/olvid/engine/datatypes/TrustLevel;

    invoke-direct {v1, v0, p0}, Lio/olvid/engine/datatypes/TrustLevel;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 37
    check-cast p1, Lio/olvid/engine/datatypes/TrustLevel;

    .line 38
    iget v0, p0, Lio/olvid/engine/datatypes/TrustLevel;->major:I

    iget v1, p1, Lio/olvid/engine/datatypes/TrustLevel;->major:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_1
    iget v0, p0, Lio/olvid/engine/datatypes/TrustLevel;->minor:I

    iget p1, p1, Lio/olvid/engine/datatypes/TrustLevel;->minor:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lio/olvid/engine/datatypes/TrustLevel;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/olvid/engine/datatypes/TrustLevel;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
