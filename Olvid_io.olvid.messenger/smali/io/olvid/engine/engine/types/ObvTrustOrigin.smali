.class public Lio/olvid/engine/engine/types/ObvTrustOrigin;
.super Ljava/lang/Object;
.source "ObvTrustOrigin.java"


# static fields
.field public static final DIRECT_TYPE:I = 0x0

.field public static final GROUP_TYPE:I = 0x2

.field public static final INTRODUCTION_TYPE:I = 0x1


# instance fields
.field private final mediatorOrGroupOwner:Lio/olvid/engine/engine/types/identities/ObvIdentity;

.field private final timestamp:J

.field private final type:I


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/datatypes/containers/TrustOrigin;Lio/olvid/engine/datatypes/Identity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 45
    iput v1, p0, Lio/olvid/engine/engine/types/ObvTrustOrigin;->type:I

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown TrustOrigin type "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->getType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    iput v1, p0, Lio/olvid/engine/engine/types/ObvTrustOrigin;->type:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lio/olvid/engine/engine/types/ObvTrustOrigin;->type:I

    .line 51
    :goto_0
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/engine/engine/types/ObvTrustOrigin;->timestamp:J

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->getMediatorOrGroupOwnerIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 55
    :try_start_0
    new-instance v0, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->getMediatorOrGroupOwnerIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p4}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 58
    :catch_0
    new-instance v0, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->getMediatorOrGroupOwnerIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    new-instance p2, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-direct {p2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;-><init>()V

    invoke-direct {v0, p1, p2}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    .line 61
    :cond_3
    :goto_1
    iput-object v0, p0, Lio/olvid/engine/engine/types/ObvTrustOrigin;->mediatorOrGroupOwner:Lio/olvid/engine/engine/types/identities/ObvIdentity;

    return-void
.end method


# virtual methods
.method public getMediatorOrGroupOwner()Lio/olvid/engine/engine/types/identities/ObvIdentity;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvTrustOrigin;->mediatorOrGroupOwner:Lio/olvid/engine/engine/types/identities/ObvIdentity;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lio/olvid/engine/engine/types/ObvTrustOrigin;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 21
    iget v0, p0, Lio/olvid/engine/engine/types/ObvTrustOrigin;->type:I

    return v0
.end method
