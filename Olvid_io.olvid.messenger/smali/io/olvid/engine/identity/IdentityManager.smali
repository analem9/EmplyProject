.class public Lio/olvid/engine/identity/IdentityManager;
.super Ljava/lang/Object;
.source "IdentityManager.java"

# interfaces
.implements Lio/olvid/engine/metamanager/SolveChallengeDelegate;
.implements Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;
.implements Lio/olvid/engine/metamanager/IdentityDelegate;
.implements Lio/olvid/engine/identity/datatypes/IdentityManagerSessionFactory;
.implements Lio/olvid/engine/identity/datatypes/EphemeralIdentityCreationDelegate;
.implements Lio/olvid/engine/metamanager/ObvManager;


# static fields
.field public static final PADDING_LENGTH:I = 0x10


# instance fields
.field private createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

.field private final identityPhotosPath:Ljava/lang/String;

.field private final jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final metaManager:Lio/olvid/engine/metamanager/MetaManager;

.field private notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field private protocolStarterDelegate:Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;

.field private pushNotificationDelegate:Lio/olvid/engine/metamanager/PushNotificationDelegate;


# direct methods
.method public constructor <init>(Lio/olvid/engine/metamanager/MetaManager;Ljava/lang/String;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lio/olvid/engine/identity/IdentityManager;->metaManager:Lio/olvid/engine/metamanager/MetaManager;

    .line 82
    iput-object p2, p0, Lio/olvid/engine/identity/IdentityManager;->identityPhotosPath:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lio/olvid/engine/identity/IdentityManager;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 86
    const-class p2, Lio/olvid/engine/metamanager/CreateSessionDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 87
    const-class p2, Lio/olvid/engine/metamanager/PushNotificationDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 88
    const-class p2, Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 89
    const-class p2, Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 90
    invoke-virtual {p1, p0}, Lio/olvid/engine/metamanager/MetaManager;->registerImplementedDelegates(Ljava/lang/Object;)V

    return-void
.end method

.method public static upgradeTables(Lio/olvid/engine/datatypes/Session;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 135
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 136
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 137
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/OwnedDevice;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 138
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 139
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 140
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/ContactIdentity;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 141
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 142
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/ContactDevice;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 143
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 144
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/ContactGroup;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 145
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 146
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/PendingGroupMember;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    return-void
.end method

.method private wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;
    .locals 7

    .line 169
    new-instance v6, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, p0, Lio/olvid/engine/identity/IdentityManager;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    iget-object v4, p0, Lio/olvid/engine/identity/IdentityManager;->identityPhotosPath:Ljava/lang/String;

    iget-object v5, p0, Lio/olvid/engine/identity/IdentityManager;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/NotificationPostingDelegate;Lio/olvid/engine/identity/datatypes/EphemeralIdentityCreationDelegate;Ljava/lang/String;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v6
.end method


# virtual methods
.method public addContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 458
    :try_start_0
    invoke-virtual {p2, p4}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    new-instance v0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-direct {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;-><init>()V

    const/4 v1, 0x0

    .line 463
    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->setVersion(I)V

    .line 464
    iget-object v1, p0, Lio/olvid/engine/identity/IdentityManager;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v1, p3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 465
    invoke-virtual {v0, p3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->setIdentityDetails(Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    .line 467
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p4, v0, p5}, Lio/olvid/engine/identity/databases/ContactIdentity;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;Lio/olvid/engine/datatypes/containers/TrustOrigin;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "An error occurred while creating a ContactIdentity."

    .line 469
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 470
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1

    .line 459
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Error: trying to add your ownedIdentity as a contact"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 473
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 474
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public addDeviceForContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 618
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lio/olvid/engine/identity/databases/ContactDevice;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 621
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lio/olvid/engine/identity/databases/ContactDevice;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public addDeviceForOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 388
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/OwnedDevice;->createOtherDevice(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 390
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public addGroupMemberFromPendingMember(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/GroupMembersChangedCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 894
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 900
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    if-nez v1, :cond_4

    .line 905
    invoke-virtual {p0, p1, p4, p3}, Lio/olvid/engine/identity/IdentityManager;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 909
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 914
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1

    invoke-static {v1, p2, p3, p4}, Lio/olvid/engine/identity/databases/PendingGroupMember;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/PendingGroupMember;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 916
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/PendingGroupMember;->delete()V

    .line 919
    :cond_0
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;

    .line 922
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->incrementGroupMembersVersion()V

    if-eqz p5, :cond_1

    .line 924
    invoke-interface {p5}, Lio/olvid/engine/datatypes/GroupMembersChangedCallback;->callback()V

    :cond_1
    return-void

    :cond_2
    const-string p1, "Called addGroupMemberFromPendingMember outside a transaction"

    .line 910
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 911
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_3
    const-string p1, "Error in addGroupMemberFromPendingMember: contactIdentity is not a Contact."

    .line 906
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 907
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_4
    const-string p1, "Error in addGroupMemberFromPendingMember: you are not the owner of the group."

    .line 901
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 902
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_5
    const-string p1, "Error in addGroupMemberFromPendingMember: ContactGroup not found."

    .line 896
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 897
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public addPendingMembersToGroup(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/GroupMembersChangedCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 802
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 808
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    if-nez v1, :cond_6

    .line 813
    invoke-virtual {p0, p1, p3, p2}, Lio/olvid/engine/identity/IdentityManager;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    .line 815
    array-length v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p4, v4

    .line 816
    invoke-virtual {p0, p1, v5, p3}, Lio/olvid/engine/identity/IdentityManager;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 820
    invoke-virtual {v1, v5}, Lio/olvid/engine/datatypes/containers/Group;->isMember(Lio/olvid/engine/datatypes/Identity;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v5}, Lio/olvid/engine/datatypes/containers/Group;->isPendingMember(Lio/olvid/engine/datatypes/Identity;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "Error in addPendingMembersToGroup: contactIdentity is already in group."

    .line 821
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 822
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Error in addPendingMembersToGroup: contactIdentity is not a Contact."

    .line 817
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 818
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 825
    :cond_2
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 830
    array-length v1, p4

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v2, p4, v3

    .line 831
    invoke-virtual {p0, p1, v2, p3}, Lio/olvid/engine/identity/IdentityManager;->getSerializedPublishedDetailsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object v4

    .line 832
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v5

    invoke-static {v5, p2, p3, v2, v4}, Lio/olvid/engine/identity/databases/PendingGroupMember;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)Lio/olvid/engine/identity/databases/PendingGroupMember;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 836
    :cond_3
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->incrementGroupMembersVersion()V

    if-eqz p5, :cond_4

    .line 838
    invoke-interface {p5}, Lio/olvid/engine/datatypes/GroupMembersChangedCallback;->callback()V

    :cond_4
    return-void

    :cond_5
    const-string p1, "Called addPendingMembersToGroup outside a transaction"

    .line 826
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 827
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_6
    const-string p1, "Error in addPendingMembersToGroup: you are not the owner of the group."

    .line 809
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 810
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_7
    const-string p1, "Error in addPendingMembersToGroup: ContactGroup not found."

    .line 804
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 805
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public addTrustOriginToContact(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 481
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 486
    invoke-virtual {p1, p4}, Lio/olvid/engine/identity/databases/ContactIdentity;->addTrustOrigin(Lio/olvid/engine/datatypes/containers/TrustOrigin;)V

    return-void

    :cond_0
    const-string p1, "Error in addTrustOriginToContact: contactIdentity is not a ContactIdentity of ownedIdentity"

    .line 483
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 484
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public createContactGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/GroupInformation;[Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 743
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p4, v2

    .line 744
    invoke-virtual {p0, p1, v3, p2}, Lio/olvid/engine/identity/IdentityManager;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "Error in createContactGroup: a GroupMember is not a Contact."

    .line 745
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 746
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 750
    :cond_1
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    .line 753
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v0

    iget-object v2, p3, Lio/olvid/engine/datatypes/containers/GroupInformation;->serializedGroupDetailsWithVersionAndPhoto:Ljava/lang/String;

    iget-object v3, p3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 756
    invoke-virtual {v3, p2}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, p3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 751
    :goto_1
    invoke-static {p1, v0, p2, v2, v3}, Lio/olvid/engine/identity/databases/ContactGroup;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    .line 758
    array-length v0, p4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v3, p4, v2

    .line 759
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v4

    invoke-static {p1, v4, p2, v3}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 761
    :cond_3
    array-length p4, p5

    :goto_3
    if-ge v1, p4, :cond_4

    aget-object v0, p5, v1

    .line 762
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v0, v0, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->serializedDetails:Ljava/lang/String;

    invoke-static {p1, v2, p2, v3, v0}, Lio/olvid/engine/identity/databases/PendingGroupMember;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)Lio/olvid/engine/identity/databases/PendingGroupMember;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public deleteAllProtocolEphemeralIdentities(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 430
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    invoke-static {v0, p2}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->deleteAll(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    move-result-object p2

    .line 431
    array-length v0, p2

    if-lez v0, :cond_0

    .line 432
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 433
    iget-object v3, p0, Lio/olvid/engine/identity/IdentityManager;->pushNotificationDelegate:Lio/olvid/engine/metamanager/PushNotificationDelegate;

    invoke-virtual {v2}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Lio/olvid/engine/metamanager/PushNotificationDelegate;->unregisterPushNotification(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 575
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lio/olvid/engine/identity/databases/ContactIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    .line 579
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->getGroupOwnerAndUidsOfGroupsContainingContact(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[[B

    move-result-object p1

    .line 580
    array-length p1, p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Attempted to delete a contact still member of some groups."

    .line 581
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 582
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 587
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactIdentity;->delete()V

    :cond_2
    return-void
.end method

.method public deleteEphemeralIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 419
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    invoke-static {v0, p2}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->delete()V

    .line 425
    iget-object v0, p0, Lio/olvid/engine/identity/IdentityManager;->pushNotificationDelegate:Lio/olvid/engine/metamanager/PushNotificationDelegate;

    invoke-interface {v0, p1, p2}, Lio/olvid/engine/metamanager/PushNotificationDelegate;->unregisterPushNotification(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V

    return-void

    :cond_0
    const-string p1, "Trying to delete an unknown OwnedEphemeralIdentity."

    .line 421
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 422
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public deleteGroup(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 785
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 790
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    if-nez p2, :cond_0

    .line 795
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->delete()V

    return-void

    :cond_0
    const-string p1, "Error in deleteGroup: you are not the group owner"

    .line 791
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 792
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Error in deleteGroup: group not found"

    .line 787
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 788
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public deleteOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 247
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->delete()V

    return-void
.end method

.method public discardLatestGroupDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1168
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1170
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->discardLatestDetails()V

    :cond_0
    return-void
.end method

.method public discardLatestIdentityDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->discardLatestDetails()V

    :cond_0
    return-void
.end method

.method public ephemeralIdentityCreated(Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;)V
    .locals 8

    const-string v0, "New OwnedEphemeralIdentity inserted. Registering push notifications with polling."

    .line 1228
    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 1229
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/identity/IdentityManager;->getSession()Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/identity/IdentityManager;->pushNotificationDelegate:Lio/olvid/engine/metamanager/PushNotificationDelegate;

    iget-object v2, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    const/4 v5, -0x2

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lio/olvid/engine/metamanager/PushNotificationDelegate;->registerPushNotification(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    .line 1231
    iget-object p1, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1232
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1229
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    .line 1232
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1233
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public generateEphemeralIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 410
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 414
    :cond_0
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    return-object p1
.end method

.method public generateOwnedIdentity(Lio/olvid/engine/datatypes/Session;Ljava/lang/String;Lio/olvid/engine/engine/types/JsonIdentityDetails;Ljava/util/UUID;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/Identity;
    .locals 8

    .line 238
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lio/olvid/engine/identity/databases/OwnedIdentity;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/lang/String;Ljava/lang/Byte;Ljava/lang/Byte;Lio/olvid/engine/engine/types/JsonIdentityDetails;ZLjava/util/UUID;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 242
    :cond_0
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    return-object p1
.end method

.method public getApiKey(Lio/olvid/engine/datatypes/Identity;)Ljava/util/UUID;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/identity/IdentityManager;->getSession()Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :try_start_1
    invoke-static {v1, p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getApiKey()Ljava/util/UUID;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 212
    :try_start_2
    invoke-virtual {v1}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V

    :cond_0
    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    .line 205
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 212
    :try_start_4
    invoke-virtual {v1}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v0
.end method

.method public getContactIdentityTrustLevel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/TrustLevel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 604
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 608
    :cond_0
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentity;->getTrustLevel()Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object p1

    return-object p1
.end method

.method public getContactIdentityTrustedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/engine/types/JsonIdentityDetails;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 537
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 539
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentity;->getTrustedDetails()Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getJsonIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContactPublishedAndTrustedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 546
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lio/olvid/engine/identity/databases/ContactIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 549
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentity;->getPublishedDetailsVersion()I

    move-result p2

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentity;->getTrustedDetailsVersion()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_0

    new-array p2, v0, [Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    .line 551
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentity;->getPublishedDetails()Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getJsonIdentityDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object p1

    aput-object p1, p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    .line 554
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentity;->getPublishedDetails()Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    move-result-object p3

    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getJsonIdentityDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object p3

    aput-object p3, p2, v1

    .line 555
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentity;->getTrustedDetails()Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->getJsonIdentityDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object p1

    aput-object p1, p2, v0

    :goto_0
    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContactsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/Identity;
    .locals 2

    .line 492
    :try_start_0
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 494
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getContactIdentities()[Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object p1

    .line 495
    array-length p2, p1

    new-array p2, p2, [Lio/olvid/engine/datatypes/Identity;

    const/4 v0, 0x0

    .line 496
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 497
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/ContactIdentity;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    aput-object v1, p2, v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 365
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    invoke-static {v0, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getCurrentDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    return-object p1

    .line 369
    :cond_0
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 371
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeterministicSeedForOwnedIdentity(Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/Seed;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 647
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 650
    invoke-virtual {p0}, Lio/olvid/engine/identity/IdentityManager;->getSession()Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    .line 651
    :try_start_0
    invoke-static {v0, p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 655
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getPrivateIdentity()Lio/olvid/engine/datatypes/PrivateIdentity;

    move-result-object p1

    .line 656
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/PrivateIdentity;->getMacKey()Lio/olvid/engine/datatypes/key/symmetric/MACKey;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/crypto/Suite;->getMAC(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/MAC;

    move-result-object v1

    .line 657
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/PrivateIdentity;->getMacKey()Lio/olvid/engine/datatypes/key/symmetric/MACKey;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/16 v3, 0x55

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-interface {v1, p1, v2}, Lio/olvid/engine/crypto/MAC;->digest(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B)[B

    move-result-object p1

    .line 658
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 659
    array-length v2, p1

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    array-length p1, p1

    array-length v2, p2

    invoke-static {p2, v4, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p1, "sha-256"

    .line 661
    invoke-static {p1}, Lio/olvid/engine/crypto/Suite;->getHash(Ljava/lang/String;)Lio/olvid/engine/crypto/Hash;

    move-result-object p1

    .line 662
    invoke-interface {p1, v1}, Lio/olvid/engine/crypto/Hash;->digest([B)[B

    move-result-object p1

    .line 663
    new-instance p2, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {p2, p1}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V

    :cond_0
    return-object p2

    .line 653
    :cond_1
    :try_start_1
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "OwnedIdentity not found"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 650
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_2

    .line 664
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2

    .line 648
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public getDeviceUidsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;
    .locals 0

    .line 631
    :try_start_0
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 633
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentity;->getDeviceUids()[Lio/olvid/engine/datatypes/UID;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Lio/olvid/engine/datatypes/UID;

    return-object p1
.end method

.method public getDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 346
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 350
    :cond_0
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getAllDeviceUids()[Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    return-object p1
.end method

.method public getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 1074
    :cond_0
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1

    invoke-static {v1, p3, p2}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v0

    .line 1078
    :cond_1
    new-instance v0, Lio/olvid/engine/datatypes/containers/Group;

    .line 1079
    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUid()[B

    move-result-object v2

    .line 1081
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1

    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUid()[B

    move-result-object v3

    invoke-static {v1, v3, p2}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->getContactIdentitiesInGroup(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    .line 1082
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1

    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUid()[B

    move-result-object v3

    invoke-static {v1, v3, p2}, Lio/olvid/engine/identity/databases/PendingGroupMember;->getPendingMembersInGroup(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v5

    .line 1083
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUid()[B

    move-result-object v1

    invoke-static {p1, v1, p2}, Lio/olvid/engine/identity/databases/PendingGroupMember;->getDeclinedPendingMembersInGroup(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    .line 1084
    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    .line 1085
    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupMembersVersion()J

    move-result-wide v8

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lio/olvid/engine/datatypes/containers/Group;-><init>([BLio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;J)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getGroupInformation(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/GroupInformation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 1116
    :cond_0
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 1120
    :cond_1
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupInformation()Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getGroupOwnerAndUidOfGroupsWhereContactIsPending(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[[B
    .locals 0

    .line 1176
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/PendingGroupMember;->getGroupOwnerAndUidOfGroupsWhereContactIsPending(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[[B

    move-result-object p1

    return-object p1
.end method

.method public getGroupOwnerAndUidsOfGroupsOwnedByContact(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 593
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUidsOfGroupsOwnedByContact(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[[B

    move-result-object p1

    return-object p1
.end method

.method public getGroupPublishedAndLatestOrTrustedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)[Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1125
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1128
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->getPublishedDetailsVersion()I

    move-result p2

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->getLatestOrTrustedDetailsVersion()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_0

    new-array p2, v0, [Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    .line 1130
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->getPublishedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getJsonGroupDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    move-result-object p1

    aput-object p1, p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    .line 1133
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->getPublishedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object p3

    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getJsonGroupDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    move-result-object p3

    aput-object p3, p2, v1

    .line 1134
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->getLatestOrTrustedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getJsonGroupDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    move-result-object p1

    aput-object p1, p2, v0

    :goto_0
    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGroupWithDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/GroupWithDetails;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1

    invoke-static {v1, p3, p2}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v0

    .line 1098
    :cond_1
    new-instance v0, Lio/olvid/engine/datatypes/containers/GroupWithDetails;

    .line 1099
    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUid()[B

    move-result-object v2

    .line 1101
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1

    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUid()[B

    move-result-object v3

    invoke-static {v1, v3, p2}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->getContactIdentitiesInGroup(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    .line 1102
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1

    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUid()[B

    move-result-object v3

    invoke-static {v1, v3, p2}, Lio/olvid/engine/identity/databases/PendingGroupMember;->getPendingMembersInGroup(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v5

    .line 1103
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUid()[B

    move-result-object v1

    invoke-static {p1, v1, p2}, Lio/olvid/engine/identity/databases/PendingGroupMember;->getDeclinedPendingMembersInGroup(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    .line 1104
    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    .line 1105
    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupMembersVersion()J

    move-result-wide v8

    .line 1106
    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getPublishedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getJsonGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v10

    .line 1107
    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroup;->getLatestOrTrustedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getJsonGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v11

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;-><init>([BLio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;JLio/olvid/engine/engine/types/JsonGroupDetails;Lio/olvid/engine/engine/types/JsonGroupDetails;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getGroupsForOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/GroupWithDetails;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v11, p2

    .line 1051
    invoke-direct/range {p0 .. p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    invoke-static {v0, v11}, Lio/olvid/engine/identity/databases/ContactGroup;->getAllForIdentity(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object v12

    .line 1052
    array-length v0, v12

    new-array v13, v0, [Lio/olvid/engine/datatypes/containers/GroupWithDetails;

    const/4 v0, 0x0

    const/4 v14, 0x0

    .line 1053
    :goto_0
    array-length v0, v12

    if-ge v14, v0, :cond_0

    .line 1054
    new-instance v15, Lio/olvid/engine/datatypes/containers/GroupWithDetails;

    aget-object v0, v12, v14

    .line 1055
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUid()[B

    move-result-object v1

    .line 1057
    invoke-direct/range {p0 .. p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    aget-object v2, v12, v14

    invoke-virtual {v2}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUid()[B

    move-result-object v2

    invoke-static {v0, v2, v11}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->getContactIdentitiesInGroup(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 1058
    invoke-direct/range {p0 .. p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    aget-object v2, v12, v14

    invoke-virtual {v2}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUid()[B

    move-result-object v2

    invoke-static {v0, v2, v11}, Lio/olvid/engine/identity/databases/PendingGroupMember;->getPendingMembersInGroup(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v4

    .line 1059
    invoke-direct/range {p0 .. p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    aget-object v2, v12, v14

    invoke-virtual {v2}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwnerAndUid()[B

    move-result-object v2

    invoke-static {v0, v2, v11}, Lio/olvid/engine/identity/databases/PendingGroupMember;->getDeclinedPendingMembersInGroup(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    aget-object v0, v12, v14

    .line 1060
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    aget-object v0, v12, v14

    .line 1061
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupMembersVersion()J

    move-result-wide v7

    aget-object v0, v12, v14

    .line 1062
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->getPublishedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getJsonGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v9

    aget-object v0, v12, v14

    .line 1063
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->getLatestOrTrustedDetails()Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->getJsonGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v10

    move-object v0, v15

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/datatypes/containers/GroupWithDetails;-><init>([BLio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;JLio/olvid/engine/engine/types/JsonGroupDetails;Lio/olvid/engine/engine/types/JsonGroupDetails;)V

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-object v13
.end method

.method public getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .line 173
    iget-object v0, p0, Lio/olvid/engine/identity/IdentityManager;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 359
    :cond_0
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getOtherDeviceUids()[Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    return-object p1
.end method

.method public getOwnedIdentities(Lio/olvid/engine/datatypes/Session;)[Lio/olvid/engine/datatypes/Identity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getAll(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;)[Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    .line 254
    array-length v0, p1

    new-array v0, v0, [Lio/olvid/engine/datatypes/Identity;

    const/4 v1, 0x0

    .line 255
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 256
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getOwnedIdentityAssociatedWithEphemeralIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/Identity;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 440
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 444
    :cond_0
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->getAssociatedOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    return-object p1
.end method

.method public getOwnedIdentityForDeviceUid(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/Identity;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedDevice;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/identity/databases/OwnedDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedDevice;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOwnedIdentityPublishedAndLatestDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 318
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getPublishedDetailsVersion()I

    move-result p2

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getLatestDetailsVersion()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    new-array p2, v1, [Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    .line 323
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getPublishedDetails()Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getJsonIdentityDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object p1

    aput-object p1, p2, v2

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    .line 326
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getPublishedDetails()Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getJsonIdentityDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object v0

    aput-object v0, p2, v2

    .line 327
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getLatestDetails()Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getJsonIdentityDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object p1

    aput-object p1, p2, v1

    :goto_0
    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOwnedIdentityPublishedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/engine/types/JsonIdentityDetails;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 309
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getPublishedDetails()Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getJsonIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSerializedPublishedDetailsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;
    .locals 0

    .line 532
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactIdentity;->getSerializedPublishedDetails(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSerializedPublishedDetailsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getSerializedPublishedDetails(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSession()Lio/olvid/engine/identity/datatypes/IdentityManagerSession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lio/olvid/engine/identity/IdentityManager;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    if-eqz v0, :cond_0

    .line 165
    new-instance v7, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    invoke-interface {v0}, Lio/olvid/engine/metamanager/CreateSessionDelegate;->getSession()Lio/olvid/engine/datatypes/Session;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/identity/IdentityManager;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    iget-object v5, p0, Lio/olvid/engine/identity/IdentityManager;->identityPhotosPath:Ljava/lang/String;

    iget-object v6, p0, Lio/olvid/engine/identity/IdentityManager;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-object v1, v7

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/NotificationPostingDelegate;Lio/olvid/engine/identity/datatypes/EphemeralIdentityCreationDelegate;Ljava/lang/String;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v7

    .line 163
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "No CreateSessionDelegate was set in IdentityManager."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrustOriginsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/TrustOrigin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 565
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->getAll(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/identity/databases/ContactTrustOrigin;

    move-result-object p1

    .line 566
    array-length p2, p1

    new-array p2, p2, [Lio/olvid/engine/datatypes/containers/TrustOrigin;

    const/4 p3, 0x0

    .line 567
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_0

    .line 568
    aget-object v0, p1, p3

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->getTrustOrigin()Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v0

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public initialisationComplete()V
    .locals 7

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/identity/IdentityManager;->getSession()Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :try_start_1
    invoke-static {v0}, Lio/olvid/engine/identity/databases/ContactIdentity;->getAllWithoutDevices(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;)[Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object v1

    .line 100
    array-length v2, v1

    if-lez v2, :cond_0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " contacts with no device. Starting corresponding deviceDiscoveryProtocols."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 102
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 103
    iget-object v5, p0, Lio/olvid/engine/identity/IdentityManager;->protocolStarterDelegate:Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;

    invoke-virtual {v4}, Lio/olvid/engine/identity/databases/ContactIdentity;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-virtual {v4}, Lio/olvid/engine/identity/databases/ContactIdentity;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;->startDeviceDiscoveryProtocol(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 106
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 98
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 106
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public isDeviceUidOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 641
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lio/olvid/engine/identity/databases/ContactDevice;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 598
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOwnedOrEphemeralIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    invoke-static {v0, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object v0

    .line 232
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    move-result-object p1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isRemoteDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 396
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedDevice;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/identity/databases/OwnedDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedDevice;->isCurrentDevice()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public leaveGroup(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 769
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 774
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 779
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->delete()V

    return-void

    :cond_0
    const-string p1, "Error in leaveGroup: you are the group owner"

    .line 775
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 776
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Error in leaveGroup: group not found"

    .line 771
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 772
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public publishLatestGroupDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1159
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1161
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->publishLatestDetails()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public publishLatestIdentityDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 287
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishLatestDetails()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public removeMembersAndPendingFromGroup(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/GroupMembersChangedCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 846
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 852
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    if-nez v1, :cond_8

    .line 857
    invoke-virtual {p0, p1, p3, p2}, Lio/olvid/engine/identity/IdentityManager;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    .line 859
    array-length v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p4, v4

    .line 860
    invoke-virtual {v1, v5}, Lio/olvid/engine/datatypes/containers/Group;->isMember(Lio/olvid/engine/datatypes/Identity;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, v5}, Lio/olvid/engine/datatypes/containers/Group;->isPendingMember(Lio/olvid/engine/datatypes/Identity;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "Error in removeMembersAndPendingFromGroup: contactIdentity is not member or pending."

    .line 861
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 862
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 866
    :cond_2
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 871
    array-length v1, p4

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v2, p4, v3

    .line 872
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v4

    invoke-static {v4, p2, p3, v2}, Lio/olvid/engine/identity/databases/PendingGroupMember;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/PendingGroupMember;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 874
    invoke-virtual {v4}, Lio/olvid/engine/identity/databases/PendingGroupMember;->delete()V

    .line 876
    :cond_3
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v4

    invoke-static {v4, p2, p3, v2}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 878
    invoke-virtual {v2}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->delete()V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 883
    :cond_5
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->incrementGroupMembersVersion()V

    if-eqz p5, :cond_6

    .line 885
    invoke-interface {p5}, Lio/olvid/engine/datatypes/GroupMembersChangedCallback;->callback()V

    :cond_6
    return-void

    :cond_7
    const-string p1, "Called removeMembersAndPendingFromGroup outside a transaction"

    .line 867
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 868
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_8
    const-string p1, "Error in removeMembersAndPendingFromGroup: you are not the owner of the group."

    .line 853
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 854
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_9
    const-string p1, "Error in removeMembersAndPendingFromGroup: ContactGroup not found."

    .line 848
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 849
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public setContactDetailsPhoto(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 524
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 526
    invoke-virtual {p1, p4, p5}, Lio/olvid/engine/identity/databases/ContactIdentity;->setDetailsPhotoUrl(I[B)V

    :cond_0
    return-void
.end method

.method public setContactPublishedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 516
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 518
    invoke-virtual {p1, p4}, Lio/olvid/engine/identity/databases/ContactIdentity;->updatePublishedDetails(Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/CreateSessionDelegate;)V
    .locals 2

    .line 112
    iput-object p1, p0, Lio/olvid/engine/identity/IdentityManager;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/identity/IdentityManager;->getSession()Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 116
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/identity/databases/OwnedIdentity;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 117
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/identity/databases/OwnedDevice;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 118
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 119
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 120
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/identity/databases/ContactIdentity;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 121
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/identity/databases/ContactTrustOrigin;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 122
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/identity/databases/ContactDevice;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 123
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 124
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 125
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 126
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/identity/databases/PendingGroupMember;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 127
    iget-object v0, p1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 128
    :try_start_2
    invoke-virtual {p1}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 114
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 128
    :try_start_4
    invoke-virtual {p1}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 130
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create identity databases"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lio/olvid/engine/identity/IdentityManager;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/PushNotificationDelegate;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lio/olvid/engine/identity/IdentityManager;->pushNotificationDelegate:Lio/olvid/engine/metamanager/PushNotificationDelegate;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lio/olvid/engine/identity/IdentityManager;->protocolStarterDelegate:Lio/olvid/engine/protocol/datatypes/ProtocolStarterDelegate;

    return-void
.end method

.method public setOwnedIdentityDetailsServerLabelAndKey(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 279
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p1, p3, p4, p5}, Lio/olvid/engine/identity/databases/OwnedIdentity;->setPhotoLabelAndKey(ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    :cond_0
    return-void
.end method

.method public setPendingMemberDeclined(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 930
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 938
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 944
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lio/olvid/engine/identity/databases/PendingGroupMember;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/PendingGroupMember;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 946
    invoke-virtual {p1, p5}, Lio/olvid/engine/identity/databases/PendingGroupMember;->setDeclined(Z)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "Error in setPendingMemberDeclined: you are not the groupOwner."

    .line 939
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 940
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_2
    const-string p1, "Error in setPendingMemberDeclined: ContactGroup not found."

    .line 933
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 934
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public signIdentities(Lio/olvid/engine/datatypes/Session;[B[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 673
    :try_start_0
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    .line 675
    invoke-static {p1, p4}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 677
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getPrivateIdentity()Lio/olvid/engine/datatypes/PrivateIdentity;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 680
    invoke-static {p1, p4}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 682
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->getPrivateIdentity()Lio/olvid/engine/datatypes/PrivateIdentity;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 688
    invoke-virtual {p4}, Lio/olvid/engine/datatypes/Identity;->getServerAuthenticationPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;->getSignaturePublicKey()Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;

    move-result-object p1

    .line 689
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/PrivateIdentity;->getServerAuthenticationPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;

    move-result-object p4

    invoke-virtual {p4}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;->getSignaturePrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;

    move-result-object p4

    .line 691
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 692
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 693
    array-length p2, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_2

    aget-object v4, p3, v3

    .line 694
    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/16 p2, 0x10

    .line 696
    invoke-interface {p5, p2}, Lio/olvid/engine/crypto/PRNGService;->bytes(I)[B

    move-result-object p3

    .line 697
    invoke-virtual {v1, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 698
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 699
    invoke-static {p4}, Lio/olvid/engine/crypto/Suite;->getSignature(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/Signature;

    move-result-object v3

    .line 700
    invoke-interface {v3, p4, p1, v1, p5}, Lio/olvid/engine/crypto/Signature;->sign(Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;[BLio/olvid/engine/crypto/PRNGService;)[B

    move-result-object p1

    .line 701
    array-length p4, p1

    add-int/2addr p4, p2

    new-array p4, p4, [B

    .line 702
    invoke-static {p3, v2, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    array-length p3, p1

    invoke-static {p1, v2, p4, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p4

    .line 686
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Unknown owned identity"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 706
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    return-object v0
.end method

.method public solveChallenge([BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/identity/IdentityManager;->getSession()Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    invoke-static {v1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {v2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getPrivateIdentity()Lio/olvid/engine/datatypes/PrivateIdentity;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    .line 187
    invoke-static {v1, p2}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 189
    invoke-virtual {p2}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->getPrivateIdentity()Lio/olvid/engine/datatypes/PrivateIdentity;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    .line 195
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/PrivateIdentity;->getServerAuthenticationPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    move-result-object p2

    invoke-static {p2}, Lio/olvid/engine/crypto/Suite;->getServerAuthentication(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/ServerAuthentication;

    move-result-object p2

    .line 196
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/PrivateIdentity;->getServerAuthenticationPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;

    move-result-object v3

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/PrivateIdentity;->getServerAuthenticationPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    move-result-object v2

    invoke-interface {p2, p1, v3, v2, p3}, Lio/olvid/engine/crypto/ServerAuthentication;->solveChallenge([BLio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;Lio/olvid/engine/crypto/PRNGService;)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 197
    :try_start_2
    invoke-virtual {v1}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-object p1

    .line 193
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Unknown owned identity"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 180
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v1, :cond_4

    .line 197
    :try_start_5
    invoke-virtual {v1}, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p3

    :try_start_6
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p2
    :try_end_6
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 198
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public trustPublishedContactDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 508
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/identity/databases/ContactIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactIdentity;->trustPublishedDetails()V

    :cond_0
    return-void
.end method

.method public trustPublishedGroupDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1143
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1145
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/ContactGroup;->trustPublishedDetails()V

    :cond_0
    return-void
.end method

.method public unwrap(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/EncryptedBytes;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1201
    :try_start_0
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1

    invoke-static {v1, p3}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1203
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getPrivateIdentity()Lio/olvid/engine/datatypes/PrivateIdentity;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 1206
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p3}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1208
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->getPrivateIdentity()Lio/olvid/engine/datatypes/PrivateIdentity;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    return-object v0

    .line 1214
    :cond_2
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/PrivateIdentity;->getEncryptionPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/crypto/Suite;->getPublicKeyEncryption(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/PublicKeyEncryption;

    move-result-object p1

    .line 1215
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/PrivateIdentity;->getEncryptionPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lio/olvid/engine/crypto/PublicKeyEncryption;->decrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;Lio/olvid/engine/datatypes/EncryptedBytes;)[B

    move-result-object p1

    .line 1216
    new-instance p2, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p2, p1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {p2}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_0
    .catch Lio/olvid/engine/crypto/exceptions/DecryptionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public updateApiKeyOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 337
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    .line 338
    invoke-virtual {p1, p3}, Lio/olvid/engine/identity/databases/OwnedIdentity;->setApiKey(Ljava/util/UUID;)V

    return-void
.end method

.method public updateGroupMembersAndDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;Ljava/util/HashSet;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/olvid/engine/datatypes/Session;",
            "Lio/olvid/engine/datatypes/Identity;",
            "Lio/olvid/engine/datatypes/containers/GroupInformation;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;",
            ">;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 953
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 959
    iget-object v0, p3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p2, v0}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 964
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v0

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v1

    invoke-static {v0, v1, p2}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 971
    iget-object v1, p0, Lio/olvid/engine/identity/IdentityManager;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p3, Lio/olvid/engine/datatypes/containers/GroupInformation;->serializedGroupDetailsWithVersionAndPhoto:Ljava/lang/String;

    const-class v3, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    .line 972
    invoke-virtual {v0, v1}, Lio/olvid/engine/identity/databases/ContactGroup;->updatePublishedDetails(Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;)V

    .line 976
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/ContactGroup;->getGroupMembersVersion()J

    move-result-wide v1

    cmp-long v3, v1, p6

    if-gez v3, :cond_b

    .line 978
    invoke-virtual {v0, p6, p7}, Lio/olvid/engine/identity/databases/ContactGroup;->setGroupMembersVersion(J)V

    .line 981
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object p6

    invoke-virtual {p0, p1, p2, p6}, Lio/olvid/engine/identity/IdentityManager;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object p6

    if-eqz p6, :cond_a

    .line 986
    new-instance p7, Ljava/util/HashSet;

    invoke-virtual {p6}, Lio/olvid/engine/datatypes/containers/Group;->getGroupMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 987
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p6}, Lio/olvid/engine/datatypes/containers/Group;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object p6

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p6

    invoke-direct {v0, p6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 989
    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 990
    iget-object v1, p6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1, p2}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 994
    :cond_0
    iget-object v1, p6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 995
    iget-object p6, p6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p7, p6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1000
    :cond_1
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v2

    iget-object v3, p6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v1, v2, p2, v3}, Lio/olvid/engine/identity/databases/PendingGroupMember;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/PendingGroupMember;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1002
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/PendingGroupMember;->delete()V

    .line 1003
    invoke-virtual {v0, p6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1007
    :cond_2
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1

    iget-object v2, p6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v1, v2, p2}, Lio/olvid/engine/identity/databases/ContactIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1009
    iget-object v4, p6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v5, p6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->serializedDetails:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createGroupTrustOrigin(JLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lio/olvid/engine/identity/IdentityManager;->addContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V

    .line 1013
    :cond_3
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object v1

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v2

    iget-object p6, p6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v1, v2, p2, p6}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;

    goto :goto_0

    .line 1017
    :cond_4
    invoke-virtual {p7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_5
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lio/olvid/engine/datatypes/Identity;

    .line 1018
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p7

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v1

    invoke-static {p7, v1, p2, p6}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;

    move-result-object p6

    if-eqz p6, :cond_5

    .line 1020
    invoke-virtual {p6}, Lio/olvid/engine/identity/databases/ContactGroupMembersJoin;->delete()V

    goto :goto_1

    .line 1025
    :cond_6
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 1026
    invoke-virtual {v0, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_7

    .line 1027
    invoke-virtual {v0, p5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1030
    :cond_7
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p6

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object p7

    iget-object v1, p5, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object p5, p5, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->serializedDetails:Ljava/lang/String;

    invoke-static {p6, p7, p2, v1, p5}, Lio/olvid/engine/identity/databases/PendingGroupMember;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)Lio/olvid/engine/identity/databases/PendingGroupMember;

    goto :goto_2

    .line 1034
    :cond_8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_9
    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_b

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 1035
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p6

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object p7

    iget-object p5, p5, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {p6, p7, p2, p5}, Lio/olvid/engine/identity/databases/PendingGroupMember;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/PendingGroupMember;

    move-result-object p5

    if-eqz p5, :cond_9

    .line 1037
    invoke-virtual {p5}, Lio/olvid/engine/identity/databases/PendingGroupMember;->delete()V

    goto :goto_3

    :cond_a
    const-string p1, "A ContactGroup exists but getGroup returned null"

    .line 983
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 984
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_b
    return-void

    :cond_c
    const-string p1, "Error: in updateGroupMembersAndDetails, group not found"

    .line 966
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 967
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_d
    const-string p1, "Error: in updateGroupMembersAndDetails, group is owned"

    .line 960
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 961
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_e
    const-string p1, "Calling updateGroupMembersAndDetails from outside a transaction"

    .line 954
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 955
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public updateLatestGroupDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[BLio/olvid/engine/engine/types/JsonGroupDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1151
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lio/olvid/engine/identity/databases/ContactGroup;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/ContactGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1153
    invoke-virtual {p1, p4}, Lio/olvid/engine/identity/databases/ContactGroup;->setLatestDetails(Lio/olvid/engine/engine/types/JsonGroupDetails;)V

    :cond_0
    return-void
.end method

.method public updateLatestIdentityDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p1, p3}, Lio/olvid/engine/identity/databases/OwnedIdentity;->setLatestDetails(Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    :cond_0
    return-void
.end method

.method public updateOwnedIdentityPhoto(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1}, Lio/olvid/engine/identity/IdentityManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentity;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p1, p3}, Lio/olvid/engine/identity/databases/OwnedIdentity;->setPhoto(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public verifyIdentitiesSignature([B[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 715
    :try_start_0
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/Identity;->getServerAuthenticationPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    move-result-object p3

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;->getSignaturePublicKey()Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;

    move-result-object p3

    .line 717
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 718
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 719
    array-length p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p2, v2

    .line 720
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 722
    invoke-static {p4, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 723
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 725
    invoke-static {p3}, Lio/olvid/engine/crypto/Suite;->getSignature(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/Signature;

    move-result-object v1

    .line 726
    array-length v2, p4

    invoke-static {p4, p1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-interface {v1, p3, p2, p1}, Lio/olvid/engine/crypto/Signature;->verify(Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;[B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 728
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    return v0
.end method

.method public wrap(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 1

    .line 1190
    :try_start_0
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getEncryptionPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getPublicKeyEncryption(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/PublicKeyEncryption;

    move-result-object v0

    .line 1191
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getEncryptionPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-result-object p2

    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, p2, p1, p3}, Lio/olvid/engine/crypto/PublicKeyEncryption;->encrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;[BLio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
