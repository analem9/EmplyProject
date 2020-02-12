.class Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;
.super Ljava/lang/Object;
.source "AppDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

.field final synthetic val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;Lio/olvid/engine/engine/types/identities/ObvGroup;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    iput-object p2, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inserting missing group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 709
    :try_start_0
    new-instance v0, Lio/olvid/messenger/databases/entity/Group;

    iget-object v1, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    .line 710
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesGroupOwnerAndUid()[B

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    .line 711
    invoke-virtual {v2}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesOwnedIdentity()[B

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    .line 712
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    .line 713
    invoke-virtual {v4}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesGroupOwnerIdentity()[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/olvid/messenger/databases/entity/Group;-><init>([B[BLio/olvid/engine/engine/types/JsonGroupDetails;[B)V

    .line 714
    iget-object v1, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    invoke-static {v1}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->access$100(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/GroupDao;->insert(Lio/olvid/messenger/databases/entity/Group;)V

    .line 715
    iget-object v1, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    invoke-static {v1}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->access$100(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    iget-object v2, v0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v3, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v1, v2, v3}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByGroupOwnerAndUid([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Creating associated group discussion"

    .line 717
    invoke-static {v1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v3, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-static {v1, v2, v3}, Lio/olvid/messenger/databases/entity/Discussion;->createGroupDiscussion(Ljava/lang/String;[B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v1

    .line 719
    iget-object v2, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    invoke-static {v2}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->access$100(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao;->insert(Lio/olvid/messenger/databases/entity/Discussion;)J

    move-result-wide v2

    iput-wide v2, v1, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    .line 721
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesGroupMembersIdentities()[[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " contacts and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getPendingGroupMembers()[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pending"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 723
    iget-object v2, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesGroupMembersIdentities()[[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 724
    new-instance v7, Lio/olvid/messenger/databases/entity/ContactGroupJoin;

    iget-object v8, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    iget-object v9, v0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    invoke-direct {v7, v8, v9, v6}, Lio/olvid/messenger/databases/entity/ContactGroupJoin;-><init>([B[B[B)V

    .line 725
    iget-object v8, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    invoke-static {v8}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->access$100(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v8

    invoke-interface {v8, v7}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->insert(Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V

    .line 726
    iget-object v7, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    invoke-static {v7}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->access$100(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v7

    iget-wide v8, v1, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {v7, v8, v9, v6}, Lio/olvid/messenger/databases/entity/Message;->createMemberJoinedGroupMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v6

    .line 727
    iget-object v7, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    invoke-static {v7}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->access$100(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v7

    invoke-interface {v7, v6}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/olvid/messenger/databases/entity/Discussion;->updateLastMessageTimestamp(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 732
    iget-object v2, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    invoke-static {v2}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->access$100(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    .line 735
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 736
    iget-object v2, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesDeclinedPendingMembers()[[B

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 737
    new-instance v7, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-direct {v7, v6}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 739
    :cond_3
    iget-object v2, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->val$obvGroup:Lio/olvid/engine/engine/types/identities/ObvGroup;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getPendingGroupMembers()[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v2

    array-length v3, v2

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 740
    new-instance v12, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v7

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v6

    const-string v8, "%f %l (%p @ %c)"

    invoke-virtual {v6, v8}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v10, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    new-instance v6, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v5

    invoke-direct {v6, v5}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lio/olvid/messenger/databases/entity/PendingGroupMember;-><init>([BLjava/lang/String;[B[BZ)V

    .line 741
    iget-object v5, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    invoke-static {v5}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->access$100(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v5

    invoke-interface {v5, v12}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->insert(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 744
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method
