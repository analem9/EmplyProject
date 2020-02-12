.class public Lio/olvid/engine/datatypes/containers/GroupWithDetails;
.super Lio/olvid/engine/datatypes/containers/Group;
.source "GroupWithDetails.java"


# instance fields
.field private final latestOrTrustedGroupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

.field private final publishedGroupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;


# direct methods
.method public constructor <init>([BLio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;JLio/olvid/engine/engine/types/JsonGroupDetails;Lio/olvid/engine/engine/types/JsonGroupDetails;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p8}, Lio/olvid/engine/datatypes/containers/Group;-><init>([BLio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;J)V

    .line 12
    iput-object p9, p0, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->publishedGroupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    .line 13
    iput-object p10, p0, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->latestOrTrustedGroupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    return-void
.end method


# virtual methods
.method public getLatestOrTrustedGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->latestOrTrustedGroupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    return-object v0
.end method

.method public getPublishedGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/GroupWithDetails;->publishedGroupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    return-object v0
.end method
