.class public Lio/olvid/engine/datatypes/containers/Group;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field private final declinedPendingMembers:[Lio/olvid/engine/datatypes/Identity;

.field private final groupMembers:[Lio/olvid/engine/datatypes/Identity;

.field private final groupMembersVersion:J

.field private final groupOwner:Lio/olvid/engine/datatypes/Identity;

.field private final groupOwnerAndUid:[B

.field private final ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final pendingGroupMembers:[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;


# direct methods
.method public constructor <init>([BLio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;J)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/Group;->groupOwnerAndUid:[B

    .line 17
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/Group;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 18
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/Group;->groupMembers:[Lio/olvid/engine/datatypes/Identity;

    .line 19
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/Group;->pendingGroupMembers:[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 20
    iput-object p5, p0, Lio/olvid/engine/datatypes/containers/Group;->declinedPendingMembers:[Lio/olvid/engine/datatypes/Identity;

    .line 21
    iput-object p6, p0, Lio/olvid/engine/datatypes/containers/Group;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    .line 22
    iput-wide p7, p0, Lio/olvid/engine/datatypes/containers/Group;->groupMembersVersion:J

    return-void
.end method


# virtual methods
.method public getDeclinedPendingMembers()[Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/Group;->declinedPendingMembers:[Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getGroupMembers()[Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/Group;->groupMembers:[Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getGroupMembersVersion()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lio/olvid/engine/datatypes/containers/Group;->groupMembersVersion:J

    return-wide v0
.end method

.method public getGroupOwner()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/Group;->groupOwner:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getGroupOwnerAndUid()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/Group;->groupOwnerAndUid:[B

    return-object v0
.end method

.method public getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/Group;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/Group;->pendingGroupMembers:[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    return-object v0
.end method

.method public isDeclinedPendingMember(Lio/olvid/engine/datatypes/Identity;)Z
    .locals 5

    .line 72
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/Group;->declinedPendingMembers:[Lio/olvid/engine/datatypes/Identity;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 73
    invoke-virtual {v4, p1}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isMember(Lio/olvid/engine/datatypes/Identity;)Z
    .locals 5

    .line 54
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/Group;->groupMembers:[Lio/olvid/engine/datatypes/Identity;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 55
    invoke-virtual {v4, p1}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isPendingMember(Lio/olvid/engine/datatypes/Identity;)Z
    .locals 5

    .line 63
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/Group;->pendingGroupMembers:[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 64
    iget-object v4, v4, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v4, p1}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
