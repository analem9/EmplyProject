.class public Lio/olvid/engine/datatypes/containers/TrustOrigin;
.super Ljava/lang/Object;
.source "TrustOrigin.java"


# static fields
.field public static final DIRECT_TYPE:I = 0x0

.field public static final GROUP_TYPE:I = 0x2

.field public static final INTRODUCTION_TYPE:I = 0x1


# instance fields
.field private final mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final timestamp:J

.field private final type:I


# direct methods
.method private constructor <init>(IJLio/olvid/engine/datatypes/Identity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lio/olvid/engine/datatypes/containers/TrustOrigin;->type:I

    .line 35
    iput-wide p2, p0, Lio/olvid/engine/datatypes/containers/TrustOrigin;->timestamp:J

    .line 36
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/TrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method

.method public static createDirectTrustOrigin(J)Lio/olvid/engine/datatypes/containers/TrustOrigin;
    .locals 3

    .line 40
    new-instance v0, Lio/olvid/engine/datatypes/containers/TrustOrigin;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lio/olvid/engine/datatypes/containers/TrustOrigin;-><init>(IJLio/olvid/engine/datatypes/Identity;)V

    return-object v0
.end method

.method public static createGroupTrustOrigin(JLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/TrustOrigin;
    .locals 2

    .line 54
    new-instance v0, Lio/olvid/engine/datatypes/containers/TrustOrigin;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1, p2}, Lio/olvid/engine/datatypes/containers/TrustOrigin;-><init>(IJLio/olvid/engine/datatypes/Identity;)V

    return-object v0
.end method

.method public static createIntroductionTrustOrigin(JLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/TrustOrigin;
    .locals 2

    .line 47
    new-instance v0, Lio/olvid/engine/datatypes/containers/TrustOrigin;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lio/olvid/engine/datatypes/containers/TrustOrigin;-><init>(IJLio/olvid/engine/datatypes/Identity;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 65
    instance-of v0, p1, Lio/olvid/engine/datatypes/containers/TrustOrigin;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    check-cast p1, Lio/olvid/engine/datatypes/containers/TrustOrigin;

    .line 69
    iget v0, p1, Lio/olvid/engine/datatypes/containers/TrustOrigin;->type:I

    iget v2, p0, Lio/olvid/engine/datatypes/containers/TrustOrigin;->type:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    return v0

    .line 76
    :cond_2
    iget-object p1, p1, Lio/olvid/engine/datatypes/containers/TrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/TrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 74
    :cond_3
    iget-object p1, p1, Lio/olvid/engine/datatypes/containers/TrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/TrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getMediatorOrGroupOwnerIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/TrustOrigin;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lio/olvid/engine/datatypes/containers/TrustOrigin;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 22
    iget v0, p0, Lio/olvid/engine/datatypes/containers/TrustOrigin;->type:I

    return v0
.end method
