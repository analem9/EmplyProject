.class public Lio/olvid/engine/datatypes/containers/UidAndNumber;
.super Ljava/lang/Object;
.source "UidAndNumber.java"


# instance fields
.field public final attachmentNumber:I

.field public final uid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/UID;I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/UidAndNumber;->uid:Lio/olvid/engine/datatypes/UID;

    .line 11
    iput p2, p0, Lio/olvid/engine/datatypes/containers/UidAndNumber;->attachmentNumber:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 21
    instance-of v0, p1, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 24
    :cond_0
    check-cast p1, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    .line 25
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/UidAndNumber;->uid:Lio/olvid/engine/datatypes/UID;

    iget-object v2, p1, Lio/olvid/engine/datatypes/containers/UidAndNumber;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0, v2}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/olvid/engine/datatypes/containers/UidAndNumber;->attachmentNumber:I

    iget p1, p1, Lio/olvid/engine/datatypes/containers/UidAndNumber;->attachmentNumber:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 16
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/UidAndNumber;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/UID;->hashCode()I

    move-result v0

    iget v1, p0, Lio/olvid/engine/datatypes/containers/UidAndNumber;->attachmentNumber:I

    xor-int/2addr v0, v1

    return v0
.end method
