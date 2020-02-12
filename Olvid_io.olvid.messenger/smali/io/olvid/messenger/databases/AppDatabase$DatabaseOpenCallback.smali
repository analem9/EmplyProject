.class Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;
.super Ljava/lang/Object;
.source "AppDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseOpenCallback"
.end annotation


# instance fields
.field private final db:Lio/olvid/messenger/databases/AppDatabase;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/AppDatabase;)V
    .locals 0

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iput-object p1, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    return-void
.end method

.method static synthetic access$100(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;)Lio/olvid/messenger/databases/AppDatabase;
    .locals 0

    .line 591
    iget-object p0, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v1, p0

    .line 600
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/16 v3, 0xbb8

    .line 607
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v3, 0x0

    .line 613
    :try_start_1
    iget-object v4, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v4

    invoke-interface {v4}, Lio/olvid/messenger/databases/dao/ContactDao;->getAllSync()Ljava/util/List;

    move-result-object v4

    .line 614
    iget-object v5, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v5

    invoke-interface {v5}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->getAllSync()Ljava/util/List;

    move-result-object v5

    .line 615
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v6

    invoke-interface {v6}, Lio/olvid/messenger/databases/dao/GroupDao;->getAllSync()Ljava/util/List;

    move-result-object v6

    .line 616
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 617
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 618
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 619
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/olvid/messenger/databases/entity/Contact;

    .line 620
    new-instance v11, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v12, v10, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    invoke-direct {v11, v12}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    if-nez v11, :cond_1

    .line 622
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 623
    new-instance v12, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v13, v10, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    invoke-direct {v12, v13}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v7, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    :cond_1
    new-instance v12, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v13, v10, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-direct {v12, v13}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 627
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/olvid/messenger/databases/entity/Group;

    .line 628
    new-instance v10, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v11, v6, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    invoke-direct {v10, v11}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    if-nez v10, :cond_3

    .line 630
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 631
    new-instance v11, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v12, v6, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    invoke-direct {v11, v12}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :cond_3
    new-instance v11, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v12, v6, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-direct {v11, v12}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 635
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    .line 636
    new-instance v6, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v10, v5, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-direct {v6, v10}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 639
    :cond_5
    invoke-virtual {v2}, Lio/olvid/engine/engine/Engine;->getOwnedIdentities()[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v4

    .line 640
    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_24

    aget-object v10, v4, v6

    .line 641
    iget-object v11, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v11}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v11

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v12

    invoke-interface {v11, v12}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->get([B)Lio/olvid/messenger/databases/entity/OwnedIdentity;

    move-result-object v11

    if-nez v11, :cond_6

    .line 643
    new-instance v11, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-direct {v11, v10, v3}, Lio/olvid/messenger/databases/entity/OwnedIdentity;-><init>(Lio/olvid/engine/engine/types/identities/ObvIdentity;I)V

    .line 644
    iget-object v12, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v12}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v12

    invoke-interface {v12, v11}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->insert(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    .line 646
    :cond_6
    new-instance v11, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v12

    invoke-direct {v11, v12}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    new-instance v11, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v12

    invoke-direct {v11, v12}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 649
    invoke-virtual {v10}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v12

    invoke-virtual {v2, v12}, Lio/olvid/engine/engine/Engine;->getContactsOfOwnedIdentity([B)[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v12

    .line 650
    array-length v13, v12

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_c

    aget-object v15, v12, v14

    if-eqz v11, :cond_7

    .line 653
    new-instance v3, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    move-object/from16 v17, v4

    invoke-virtual {v15}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/Contact;

    .line 654
    new-instance v4, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    move-object/from16 v16, v3

    invoke-virtual {v15}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    move-object/from16 v17, v4

    const/16 v16, 0x0

    :goto_5
    if-nez v16, :cond_8

    .line 657
    iget-object v3, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    new-instance v4, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;

    invoke-direct {v4, v1, v15, v10}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;-><init>(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;Lio/olvid/engine/engine/types/identities/ObvIdentity;Lio/olvid/engine/engine/types/identities/ObvIdentity;)V

    invoke-virtual {v3, v4}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    .line 674
    iget-object v3, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v3

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v4

    move/from16 v18, v5

    invoke-virtual {v15}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v16

    if-nez v16, :cond_9

    goto :goto_6

    :cond_8
    move/from16 v18, v5

    :cond_9
    move-object/from16 v3, v16

    .line 679
    invoke-virtual {v15}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v4

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lio/olvid/engine/engine/Engine;->getContactDeviceCount([B[B)I

    move-result v4

    .line 680
    invoke-virtual {v15}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v5

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v15

    invoke-virtual {v2, v5, v15}, Lio/olvid/engine/engine/Engine;->getContactEstablishedChannelsCount([B[B)I

    move-result v5

    .line 681
    iget v15, v3, Lio/olvid/messenger/databases/entity/Contact;->deviceCount:I

    if-ne v15, v4, :cond_a

    iget v15, v3, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    if-eq v15, v5, :cond_b

    .line 682
    :cond_a
    iput v4, v3, Lio/olvid/messenger/databases/entity/Contact;->deviceCount:I

    .line 683
    iput v5, v3, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    .line 684
    iget-object v4, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/olvid/messenger/databases/dao/ContactDao;->update(Lio/olvid/messenger/databases/entity/Contact;)V

    :cond_b
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v17

    move/from16 v5, v18

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_c
    move-object/from16 v17, v4

    move/from16 v18, v5

    if-eqz v11, :cond_d

    .line 687
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 688
    new-instance v3, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    :cond_d
    new-instance v3, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 695
    invoke-virtual {v10}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/olvid/engine/engine/Engine;->getGroupsOfOwnedIdentity([B)[Lio/olvid/engine/engine/types/identities/ObvGroup;

    move-result-object v4

    .line 696
    array-length v5, v4

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v5, :cond_22

    aget-object v12, v4, v11

    if-eqz v3, :cond_e

    .line 699
    new-instance v13, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {v12}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesGroupOwnerAndUid()[B

    move-result-object v14

    invoke-direct {v13, v14}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Lio/olvid/messenger/databases/entity/Group;

    .line 700
    new-instance v13, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {v12}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesGroupOwnerAndUid()[B

    move-result-object v14

    invoke-direct {v13, v14}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_e
    const/4 v15, 0x0

    :goto_8
    if-nez v15, :cond_f

    .line 704
    iget-object v13, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    new-instance v14, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;

    invoke-direct {v14, v1, v12}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$2;-><init>(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;Lio/olvid/engine/engine/types/identities/ObvGroup;)V

    invoke-virtual {v13, v14}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    move-object/from16 v21, v2

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v25, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v8

    move-object/from16 v22, v9

    move-object v6, v10

    move v8, v11

    goto/16 :goto_16

    .line 750
    :cond_f
    iget-object v13, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v13}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v13

    iget-object v14, v15, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    move-object/from16 v19, v4

    iget-object v4, v15, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v13, v14, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByGroupOwnerAndUid([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v4

    if-nez v4, :cond_10

    const-string v4, "Creating missing discussion for existing group !!!"

    .line 752
    invoke-static {v4}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v15}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v4

    iget-object v13, v15, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v14, v15, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-static {v4, v13, v14}, Lio/olvid/messenger/databases/entity/Discussion;->createGroupDiscussion(Ljava/lang/String;[B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v4

    .line 754
    iget-object v13, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v13}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v13

    invoke-virtual {v13, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->insert(Lio/olvid/messenger/databases/entity/Discussion;)J

    move-result-wide v13

    iput-wide v13, v4, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    .line 758
    :cond_10
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 759
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move/from16 v20, v5

    .line 760
    iget-object v5, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v21, v2

    :try_start_2
    iget-object v2, v15, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    move-object/from16 v22, v9

    iget-object v9, v15, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-interface {v5, v2, v9}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->getGroupContactsSync([B[B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/olvid/messenger/databases/entity/Contact;

    .line 761
    new-instance v9, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v5, v5, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-direct {v9, v5}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v13, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 763
    :cond_11
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesGroupMembersIdentities()[[B

    move-result-object v2

    array-length v5, v2

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v5, :cond_13

    move/from16 v23, v5

    aget-object v5, v2, v9

    move-object/from16 v24, v2

    .line 764
    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-direct {v2, v5}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    .line 765
    invoke-virtual {v13, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 766
    invoke-virtual {v13, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 768
    :cond_12
    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v23

    move-object/from16 v2, v24

    goto :goto_a

    .line 771
    :cond_13
    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v5, " and add "

    const-string v9, " remove "

    if-eqz v2, :cond_15

    :try_start_3
    invoke-virtual {v13}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_c

    :cond_14
    move v2, v6

    move-object/from16 v23, v7

    goto :goto_d

    .line 772
    :cond_15
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v7

    const-string v7, "Contact mismatch in group "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    move v2, v6

    .line 773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lio/olvid/messenger/databases/entity/Discussion;->updateLastMessageTimestamp(J)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 774
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    .line 777
    :cond_16
    :goto_d
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    .line 778
    iget-object v13, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v13}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v13

    move-object/from16 v24, v6

    iget-object v6, v15, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    move/from16 v25, v2

    iget-object v2, v15, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    move-object/from16 v26, v8

    iget-object v8, v7, Lio/olvid/messenger/databases/AppDatabase$BytesKey;->bytes:[B

    invoke-interface {v13, v6, v2, v8}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->get([B[B[B)Lio/olvid/messenger/databases/entity/ContactGroupJoin;

    move-result-object v2

    .line 779
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v6

    invoke-interface {v6, v2}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->delete(Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V

    .line 780
    iget-object v2, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    move-object v6, v10

    move v8, v11

    iget-wide v10, v4, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iget-object v7, v7, Lio/olvid/messenger/databases/AppDatabase$BytesKey;->bytes:[B

    invoke-static {v2, v10, v11, v7}, Lio/olvid/messenger/databases/entity/Message;->createMemberLeftGroupMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v2

    .line 781
    iget-object v7, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v7}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v7

    invoke-interface {v7, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    move-object v10, v6

    move v11, v8

    move-object/from16 v6, v24

    move/from16 v2, v25

    move-object/from16 v8, v26

    goto :goto_e

    :cond_17
    move/from16 v25, v2

    move-object/from16 v26, v8

    move-object v6, v10

    move v8, v11

    .line 783
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    .line 784
    new-instance v10, Lio/olvid/messenger/databases/entity/ContactGroupJoin;

    iget-object v11, v15, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    iget-object v13, v15, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v14, v7, Lio/olvid/messenger/databases/AppDatabase$BytesKey;->bytes:[B

    invoke-direct {v10, v11, v13, v14}, Lio/olvid/messenger/databases/entity/ContactGroupJoin;-><init>([B[B[B)V

    .line 785
    iget-object v11, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v11}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v11

    invoke-interface {v11, v10}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->insert(Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V

    .line 786
    iget-object v10, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    iget-wide v13, v4, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iget-object v7, v7, Lio/olvid/messenger/databases/AppDatabase$BytesKey;->bytes:[B

    invoke-static {v10, v13, v14, v7}, Lio/olvid/messenger/databases/entity/Message;->createMemberJoinedGroupMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v7

    .line 787
    iget-object v10, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v10}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v10

    invoke-interface {v10, v7}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    goto :goto_f

    .line 791
    :cond_18
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 792
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 793
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 794
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getBytesDeclinedPendingMembers()[[B

    move-result-object v10

    array-length v11, v10

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v11, :cond_19

    aget-object v14, v10, v13

    move-object/from16 v24, v10

    .line 795
    new-instance v10, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-direct {v10, v14}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v24

    goto :goto_10

    .line 798
    :cond_19
    iget-object v10, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v10}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v10

    iget-object v11, v15, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v13, v15, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-interface {v10, v11, v13}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->getGroupPendingMembers([B[B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    .line 799
    new-instance v13, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v14, v11, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesIdentity:[B

    invoke-direct {v13, v14}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v2, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 801
    :cond_1a
    invoke-virtual {v12}, Lio/olvid/engine/engine/types/identities/ObvGroup;->getPendingGroupMembers()[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_12
    if-ge v12, v11, :cond_1d

    aget-object v13, v10, v12

    .line 802
    new-instance v14, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    move-object/from16 v24, v10

    invoke-virtual {v13}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v10

    invoke-direct {v14, v10}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    .line 803
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 804
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    if-eqz v10, :cond_1b

    .line 805
    iget-boolean v13, v10, Lio/olvid/messenger/databases/entity/PendingGroupMember;->declined:Z

    invoke-virtual {v7, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    xor-int v13, v13, v27

    if-eqz v13, :cond_1b

    .line 806
    invoke-virtual {v7, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    iput-boolean v13, v10, Lio/olvid/messenger/databases/entity/PendingGroupMember;->declined:Z

    .line 807
    iget-object v13, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v13}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v13

    invoke-interface {v13, v10}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->update(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V

    .line 809
    :cond_1b
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 811
    :cond_1c
    invoke-virtual {v4, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, v24

    goto :goto_12

    .line 815
    :cond_1d
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1f

    .line 816
    :cond_1e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pending group member mismatch in group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v15, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 818
    :cond_1f
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    .line 819
    iget-object v9, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v9}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v9

    invoke-interface {v9, v5}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->delete(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V

    goto :goto_14

    .line 821
    :cond_20
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    .line 822
    new-instance v5, Lio/olvid/messenger/databases/entity/PendingGroupMember;

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v10

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v9

    const-string v11, "%f %l (%p @ %c)"

    invoke-virtual {v9, v11}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v15, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v13, v15, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    new-instance v9, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v4

    invoke-direct {v9, v4}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    move-object v9, v5

    invoke-direct/range {v9 .. v14}, Lio/olvid/messenger/databases/entity/PendingGroupMember;-><init>([BLjava/lang/String;[B[BZ)V

    .line 823
    iget-object v4, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v4

    invoke-interface {v4, v5}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->insert(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V

    goto :goto_15

    :cond_21
    :goto_16
    add-int/lit8 v11, v8, 0x1

    move-object v10, v6

    move-object/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v2, v21

    move-object/from16 v9, v22

    move-object/from16 v7, v23

    move/from16 v6, v25

    move-object/from16 v8, v26

    goto/16 :goto_7

    :cond_22
    move-object/from16 v21, v2

    move/from16 v25, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v8

    move-object/from16 v22, v9

    move-object v6, v10

    if-eqz v3, :cond_23

    .line 827
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_23

    .line 828
    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {v6}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    move-object/from16 v3, v26

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_23
    move-object/from16 v3, v26

    :goto_17
    add-int/lit8 v6, v25, 0x1

    move-object v8, v3

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v2, v21

    move-object/from16 v9, v22

    move-object/from16 v7, v23

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_24
    move-object/from16 v21, v2

    move-object/from16 v23, v7

    move-object v3, v8

    move-object/from16 v22, v9

    .line 835
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 836
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/messenger/databases/entity/Group;

    .line 837
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting app-side-only Group: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 839
    iget-object v5, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v5

    iget-object v6, v4, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v7, v4, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v5, v6, v7}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByGroupOwnerAndUid([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v5

    if-eqz v5, :cond_26

    .line 841
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5, v6}, Lio/olvid/messenger/databases/entity/Discussion;->lockWithMessage(Lio/olvid/messenger/databases/AppDatabase;)V

    .line 843
    :cond_26
    iget-object v5, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v5

    invoke-interface {v5, v4}, Lio/olvid/messenger/databases/dao/GroupDao;->delete(Lio/olvid/messenger/databases/entity/Group;)V

    goto :goto_18

    .line 848
    :cond_27
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 849
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/messenger/databases/entity/Contact;

    .line 850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting app-side-only Contact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 851
    iget-object v5, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v5

    iget-object v6, v4, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v7, v4, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v5, v6, v7}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByContact([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v5

    if-eqz v5, :cond_29

    .line 853
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5, v6}, Lio/olvid/messenger/databases/entity/Discussion;->lockWithMessage(Lio/olvid/messenger/databases/AppDatabase;)V

    .line 855
    :cond_29
    iget-object v5, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v5

    invoke-interface {v5, v4}, Lio/olvid/messenger/databases/dao/ContactDao;->delete(Lio/olvid/messenger/databases/entity/Contact;)V

    goto :goto_19

    .line 859
    :cond_2a
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    .line 860
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting app-side-only OwnedIdentity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 861
    iget-object v4, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->delete(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1a

    :catch_1
    move-exception v0

    goto :goto_1b

    :catch_2
    move-exception v0

    move-object/from16 v21, v2

    :goto_1b
    move-object v2, v0

    .line 864
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "Error syncing Room database with Engine database"

    .line 865
    invoke-static {v2}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 869
    :cond_2b
    iget-object v2, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v2

    invoke-interface {v2}, Lio/olvid/messenger/databases/dao/MessageDao;->getProcessingMessages()Ljava/util/List;

    move-result-object v2

    .line 870
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/Message;

    .line 871
    iget-object v5, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v5

    iget-wide v6, v3, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v5, v6, v7}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->getAllNotSentByMessageId(J)Ljava/util/List;

    move-result-object v5

    .line 872
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 873
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    .line 874
    iget-object v8, v7, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    if-nez v8, :cond_2e

    .line 875
    iget-object v8, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v8}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v8

    iget-object v9, v3, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    iget-object v10, v7, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    invoke-interface {v8, v9, v10}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v8

    .line 876
    iget v8, v8, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    if-lez v8, :cond_2d

    .line 877
    invoke-virtual {v3, v7}, Lio/olvid/messenger/databases/entity/Message;->repost(Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V

    :cond_2d
    move-object/from16 v9, v21

    goto :goto_1e

    .line 880
    :cond_2e
    new-instance v8, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v9, v7, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    invoke-direct {v8, v9}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-nez v8, :cond_2f

    .line 882
    iget-object v8, v7, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    move-object/from16 v9, v21

    invoke-virtual {v9, v8}, Lio/olvid/engine/engine/Engine;->isOutboxMessageSent([B)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 883
    new-instance v10, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v11, v7, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    invoke-direct {v10, v11}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v6, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_2f
    move-object/from16 v9, v21

    .line 885
    :goto_1d
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_30

    const-wide/16 v10, 0x0

    .line 886
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    .line 887
    iget-object v8, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v8}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v8

    new-array v10, v4, [Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-interface {v8, v10}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->update([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V

    .line 888
    invoke-virtual {v3}, Lio/olvid/messenger/databases/entity/Message;->refreshOutboundStatus()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 889
    iget-object v7, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v7}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v7

    invoke-interface {v7, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V

    :cond_30
    :goto_1e
    move-object/from16 v21, v9

    goto :goto_1c

    :cond_31
    move-object/from16 v9, v21

    .line 897
    iget-object v2, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v2

    invoke-interface {v2}, Lio/olvid/messenger/databases/dao/MessageDao;->getUnprocessedMessages()Ljava/util/List;

    move-result-object v2

    .line 898
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/Message;

    const/4 v5, 0x0

    .line 899
    invoke-virtual {v3, v5}, Lio/olvid/messenger/databases/entity/Message;->post(Z)V

    goto :goto_1f

    .line 904
    :cond_32
    :try_start_4
    invoke-virtual {v9}, Lio/olvid/engine/engine/Engine;->resendAllPersistedDialogs()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_20

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 906
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "Error syncing Room invitations with Engine dialogs."

    .line 907
    invoke-static {v2}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 912
    :goto_20
    :try_start_5
    invoke-virtual {v9}, Lio/olvid/engine/engine/Engine;->resendAllAttachmentNotifications()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_21

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 914
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "Error syncing Room messages with Engine attachments."

    .line 915
    invoke-static {v2}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 920
    :goto_21
    :try_start_6
    iget-object v2, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v2

    invoke-interface {v2}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getUploading()Ljava/util/List;

    move-result-object v2

    .line 921
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x4

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 922
    iget-object v6, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    if-eqz v6, :cond_35

    iget-object v6, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    if-nez v6, :cond_34

    goto :goto_23

    .line 925
    :cond_34
    iget-object v6, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    iget-object v7, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v9, v6, v7}, Lio/olvid/engine/engine/Engine;->isOutboxAttachmentSent([BI)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 926
    iput v5, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    .line 927
    iget-object v5, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v5

    invoke-interface {v5, v3}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    goto :goto_22

    .line 923
    :cond_35
    :goto_23
    iput v5, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    .line 924
    iget-object v5, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v5

    invoke-interface {v5, v3}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    goto :goto_22

    .line 930
    :cond_36
    iget-object v2, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v2

    invoke-interface {v2}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getDownloading()Ljava/util/List;

    move-result-object v2

    .line 931
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 932
    iget-object v6, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    if-eqz v6, :cond_38

    iget-object v6, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    if-nez v6, :cond_37

    goto :goto_25

    .line 958
    :cond_37
    iget-object v6, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    iget-object v7, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v9, v6, v7}, Lio/olvid/engine/engine/Engine;->isInboxAttachmentReceived([BI)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 959
    iput v5, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    .line 960
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v6

    invoke-interface {v6, v3}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    goto/16 :goto_28

    .line 933
    :cond_38
    :goto_25
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object v6

    iget-wide v7, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fyleId:J

    invoke-interface {v6, v7, v8}, Lio/olvid/messenger/databases/dao/FyleDao;->getById(J)Lio/olvid/messenger/databases/entity/Fyle;

    move-result-object v6

    if-eqz v6, :cond_3a

    .line 934
    invoke-virtual {v6}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_26

    .line 955
    :cond_39
    iput v5, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    .line 956
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v6

    invoke-interface {v6, v3}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    goto :goto_28

    .line 935
    :cond_3a
    :goto_26
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v6

    invoke-interface {v6, v3}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->delete(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    .line 936
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v6

    iget-wide v7, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->messageId:J

    invoke-interface {v6, v7, v8}, Lio/olvid/messenger/databases/dao/MessageDao;->get(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 940
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v6

    iget-wide v7, v3, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v6, v7, v8}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getStatusForMessage(J)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 941
    sget-object v11, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->imageAndVideoPattern:Ljava/util/regex/Pattern;

    iget-object v10, v10, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3b

    add-int/lit8 v8, v8, 0x1

    :cond_3b
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 946
    :cond_3c
    iput v7, v3, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    .line 947
    iput v8, v3, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    .line 948
    invoke-virtual {v3}, Lio/olvid/messenger/databases/entity/Message;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 949
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v6

    new-array v7, v4, [Lio/olvid/messenger/databases/entity/Message;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-interface {v6, v7}, Lio/olvid/messenger/databases/dao/MessageDao;->delete([Lio/olvid/messenger/databases/entity/Message;)V

    goto/16 :goto_24

    :cond_3d
    const/4 v8, 0x0

    .line 951
    iget-object v6, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v6

    invoke-interface {v6, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_24

    :cond_3e
    :goto_28
    const/4 v8, 0x0

    goto/16 :goto_24

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 964
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "Error refreshing Fyle statuses."

    .line 965
    invoke-static {v2}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 971
    :cond_3f
    :try_start_7
    iget-object v2, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object v2

    invoke-interface {v2}, Lio/olvid/messenger/databases/dao/FyleDao;->getStray()Ljava/util/List;

    move-result-object v2

    .line 972
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/Fyle;

    .line 973
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning stray Fyle with sha256 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    invoke-static {v5}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 974
    iget-object v4, v3, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    invoke-static {v4}, Lio/olvid/messenger/databases/entity/Fyle;->acquireLock([B)V

    .line 975
    iget-object v4, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/olvid/messenger/databases/dao/FyleDao;->delete(Lio/olvid/messenger/databases/entity/Fyle;)V

    .line 976
    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    invoke-static {v3}, Lio/olvid/messenger/databases/entity/Fyle;->releaseLock([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_29

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 979
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "Error cleaning stray Fyles."

    .line 980
    invoke-static {v2}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 984
    :cond_40
    iget-object v2, v1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->deleteEmptyLockedDiscussions()V

    return-void
.end method
