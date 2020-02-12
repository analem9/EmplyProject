.class public Lio/olvid/engine/engine/types/identities/ObvGroup;
.super Ljava/lang/Object;
.source "ObvGroup.java"


# instance fields
.field private final bytesDeclinedPendingMembers:[[B

.field private final bytesGroupMembersIdentities:[[B

.field private final bytesGroupOwnerAndUid:[B

.field private final bytesGroupOwnerIdentity:[B

.field private final bytesOwnedIdentity:[B

.field private final groupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

.field private final pendingGroupMembers:[Lio/olvid/engine/engine/types/identities/ObvIdentity;


# direct methods
.method public constructor <init>([BLio/olvid/engine/engine/types/JsonGroupDetails;[B[[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;[[B[B)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->bytesGroupOwnerAndUid:[B

    .line 16
    iput-object p2, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->groupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    .line 17
    iput-object p3, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->bytesOwnedIdentity:[B

    .line 18
    iput-object p4, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->bytesGroupMembersIdentities:[[B

    .line 19
    iput-object p5, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->pendingGroupMembers:[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    .line 20
    iput-object p6, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->bytesDeclinedPendingMembers:[[B

    .line 21
    iput-object p7, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->bytesGroupOwnerIdentity:[B

    return-void
.end method


# virtual methods
.method public getBytesDeclinedPendingMembers()[[B
    .locals 1

    .line 45
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->bytesDeclinedPendingMembers:[[B

    return-object v0
.end method

.method public getBytesGroupMembersIdentities()[[B
    .locals 1

    .line 37
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->bytesGroupMembersIdentities:[[B

    return-object v0
.end method

.method public getBytesGroupOwnerAndUid()[B
    .locals 1

    .line 25
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->bytesGroupOwnerAndUid:[B

    return-object v0
.end method

.method public getBytesGroupOwnerIdentity()[B
    .locals 1

    .line 49
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->bytesGroupOwnerIdentity:[B

    return-object v0
.end method

.method public getBytesOwnedIdentity()[B
    .locals 1

    .line 33
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->bytesOwnedIdentity:[B

    return-object v0
.end method

.method public getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->groupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    return-object v0
.end method

.method public getPendingGroupMembers()[Lio/olvid/engine/engine/types/identities/ObvIdentity;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvGroup;->pendingGroupMembers:[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    return-object v0
.end method
