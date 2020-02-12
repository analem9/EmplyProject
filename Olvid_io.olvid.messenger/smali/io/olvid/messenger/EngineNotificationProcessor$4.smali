.class Lio/olvid/messenger/EngineNotificationProcessor$4;
.super Ljava/lang/Object;
.source "EngineNotificationProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/EngineNotificationProcessor;->callback(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/EngineNotificationProcessor;

.field final synthetic val$bytesGroupUid:[B

.field final synthetic val$bytesOwnedIdentity:[B

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;


# direct methods
.method constructor <init>(Lio/olvid/messenger/EngineNotificationProcessor;[B[BLio/olvid/engine/engine/types/identities/ObvGroup;Ljava/lang/String;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    iput-object p2, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$bytesGroupUid:[B

    iput-object p3, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$bytesOwnedIdentity:[B

    iput-object p4, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    iput-object p5, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$groupName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 677
    :try_start_0
    new-instance v0, Lio/olvid/messenger/databases/entity/Group;

    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$bytesGroupUid:[B

    iget-object v2, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$bytesOwnedIdentity:[B

    iget-object v3, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesGroupOwnerIdentity()[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/olvid/messenger/databases/entity/Group;-><init>([B[BLio/olvid/engine/engine/types/JsonGroupDetails;[B)V

    .line 678
    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v1}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/GroupDao;->insert(Lio/olvid/messenger/databases/entity/Group;)V

    .line 680
    iget-object v0, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$groupName:Ljava/lang/String;

    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$bytesOwnedIdentity:[B

    iget-object v2, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$bytesGroupUid:[B

    invoke-static {v0, v1, v2}, Lio/olvid/messenger/databases/entity/Discussion;->createGroupDiscussion(Ljava/lang/String;[B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v1}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/olvid/messenger/databases/dao/DiscussionDao;->insert(Lio/olvid/messenger/databases/entity/Discussion;)J

    move-result-wide v1

    iput-wide v1, v0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    .line 685
    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesGroupMembersIdentities()[[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 686
    iget-object v7, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v7}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v7

    iget-object v8, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$bytesOwnedIdentity:[B

    invoke-interface {v7, v8, v6}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 688
    new-instance v5, Lio/olvid/messenger/databases/entity/ContactGroupJoin;

    iget-object v7, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$bytesGroupUid:[B

    iget-object v8, v6, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v9, v6, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-direct {v5, v7, v8, v9}, Lio/olvid/messenger/databases/entity/ContactGroupJoin;-><init>([B[B[B)V

    .line 689
    iget-object v7, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v7}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v7

    invoke-interface {v7, v5}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->insert(Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V

    .line 690
    iget-object v5, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v5}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v5

    iget-wide v7, v0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iget-object v6, v6, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v5, v7, v8, v6}, Lio/olvid/messenger/databases/entity/Message;->createMemberJoinedGroupMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v5

    .line 691
    iget-object v6, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v6}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v6

    invoke-interface {v6, v5}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/olvid/messenger/databases/entity/Discussion;->updateLastMessageTimestamp(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 697
    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v1}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    .line 702
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 703
    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesDeclinedPendingMembers()[[B

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 704
    new-instance v6, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-direct {v6, v5}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 706
    :cond_3
    iget-object v1, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getPendingGroupMembers()[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 707
    new-instance v11, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v6

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v5

    const-string v7, "%f %l (%p @ %c)"

    invoke-virtual {v5, v7}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$bytesOwnedIdentity:[B

    iget-object v9, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->val$bytesGroupUid:[B

    new-instance v5, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v4

    invoke-direct {v5, v4}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lio/olvid/messenger/databases/entity/PendingGroupMember;-><init>([BLjava/lang/String;[B[BZ)V

    .line 708
    iget-object v4, p0, Lio/olvid/messenger/EngineNotificationProcessor$4;->this$0:Lio/olvid/messenger/EngineNotificationProcessor;

    invoke-static {v4}, Lio/olvid/messenger/EngineNotificationProcessor;->access$000(Lio/olvid/messenger/EngineNotificationProcessor;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v4

    invoke-interface {v4, v11}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->insert(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 711
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method
