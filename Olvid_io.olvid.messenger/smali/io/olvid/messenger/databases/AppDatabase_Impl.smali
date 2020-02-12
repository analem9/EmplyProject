.class public final Lio/olvid/messenger/databases/AppDatabase_Impl;
.super Lio/olvid/messenger/databases/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile _anonymizerForOwnedIdentityDao:Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;

.field private volatile _anonymousUsageLogItemDao:Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;

.field private volatile _contactDao:Lio/olvid/messenger/databases/dao/ContactDao;

.field private volatile _contactGroupJoinDao:Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

.field private volatile _discussionCustomizationDao:Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

.field private volatile _discussionDao:Lio/olvid/messenger/databases/dao/DiscussionDao;

.field private volatile _fyleDao:Lio/olvid/messenger/databases/dao/FyleDao;

.field private volatile _fyleMessageJoinWithStatusDao:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

.field private volatile _groupDao:Lio/olvid/messenger/databases/dao/GroupDao;

.field private volatile _invitationDao:Lio/olvid/messenger/databases/dao/InvitationDao;

.field private volatile _messageDao:Lio/olvid/messenger/databases/dao/MessageDao;

.field private volatile _messageRecipientInfoDao:Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

.field private volatile _ownedIdentityDao:Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

.field private volatile _pendingGroupMemberDao:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lio/olvid/messenger/databases/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/messenger/databases/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lio/olvid/messenger/databases/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/messenger/databases/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lio/olvid/messenger/databases/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/messenger/databases/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lio/olvid/messenger/databases/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lio/olvid/messenger/databases/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lio/olvid/messenger/databases/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lio/olvid/messenger/databases/AppDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lio/olvid/messenger/databases/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lio/olvid/messenger/databases/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public anonymizerForOwnedIdentityDao()Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;
    .locals 1

    .line 696
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_anonymizerForOwnedIdentityDao:Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_anonymizerForOwnedIdentityDao:Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;

    return-object v0

    .line 699
    :cond_0
    monitor-enter p0

    .line 700
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_anonymizerForOwnedIdentityDao:Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;

    if-nez v0, :cond_1

    .line 701
    new-instance v0, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_anonymizerForOwnedIdentityDao:Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;

    .line 703
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_anonymizerForOwnedIdentityDao:Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 704
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public anonymousUsageLogItemDao()Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;
    .locals 1

    .line 710
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_anonymousUsageLogItemDao:Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_anonymousUsageLogItemDao:Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;

    return-object v0

    .line 713
    :cond_0
    monitor-enter p0

    .line 714
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_anonymousUsageLogItemDao:Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;

    if-nez v0, :cond_1

    .line 715
    new-instance v0, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_anonymousUsageLogItemDao:Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;

    .line 717
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_anonymousUsageLogItemDao:Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 718
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 6

    .line 488
    invoke-super {p0}, Lio/olvid/messenger/databases/AppDatabase;->assertNotMainThread()V

    .line 489
    invoke-super {p0}, Lio/olvid/messenger/databases/AppDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 490
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "VACUUM"

    const-string v3, "PRAGMA foreign_keys = TRUE"

    const-string v4, "PRAGMA wal_checkpoint(FULL)"

    if-nez v1, :cond_1

    :try_start_0
    const-string v5, "PRAGMA foreign_keys = FALSE"

    .line 493
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 495
    :cond_1
    invoke-super {p0}, Lio/olvid/messenger/databases/AppDatabase;->beginTransaction()V

    if-eqz v1, :cond_2

    const-string v5, "PRAGMA defer_foreign_keys = TRUE"

    .line 497
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const-string v5, "DELETE FROM `group_table`"

    .line 499
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `contact_table`"

    .line 500
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `contact_group_join`"

    .line 501
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `pending_group_member_table`"

    .line 502
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `discussion_table`"

    .line 503
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `discussion_customization_table`"

    .line 504
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `fyle_table`"

    .line 505
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `fyle_message_join_with_status`"

    .line 506
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `invitation_table`"

    .line 507
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `message_table`"

    .line 508
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `message_recipient_info_table`"

    .line 509
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `identity_table`"

    .line 510
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `anonymizer_for_owned_identity`"

    .line 511
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `anonymous_usage_log`"

    .line 512
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 513
    invoke-super {p0}, Lio/olvid/messenger/databases/AppDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    invoke-super {p0}, Lio/olvid/messenger/databases/AppDatabase;->endTransaction()V

    if-nez v1, :cond_3

    .line 517
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 519
    :cond_3
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 520
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_4

    .line 521
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v5

    .line 515
    invoke-super {p0}, Lio/olvid/messenger/databases/AppDatabase;->endTransaction()V

    if-nez v1, :cond_5

    .line 517
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 519
    :cond_5
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 520
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_6

    .line 521
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 523
    :cond_6
    throw v5
.end method

.method public contactDao()Lio/olvid/messenger/databases/dao/ContactDao;
    .locals 1

    .line 528
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_contactDao:Lio/olvid/messenger/databases/dao/ContactDao;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_contactDao:Lio/olvid/messenger/databases/dao/ContactDao;

    return-object v0

    .line 531
    :cond_0
    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_contactDao:Lio/olvid/messenger/databases/dao/ContactDao;

    if-nez v0, :cond_1

    .line 533
    new-instance v0, Lio/olvid/messenger/databases/dao/ContactDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/ContactDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_contactDao:Lio/olvid/messenger/databases/dao/ContactDao;

    .line 535
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_contactDao:Lio/olvid/messenger/databases/dao/ContactDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 536
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;
    .locals 1

    .line 556
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_contactGroupJoinDao:Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_contactGroupJoinDao:Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    return-object v0

    .line 559
    :cond_0
    monitor-enter p0

    .line 560
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_contactGroupJoinDao:Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    if-nez v0, :cond_1

    .line 561
    new-instance v0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_contactGroupJoinDao:Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    .line 563
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_contactGroupJoinDao:Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 564
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 17

    .line 481
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 482
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 483
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "contact_table"

    const-string v4, "group_table"

    const-string v5, "contact_group_join"

    const-string v6, "pending_group_member_table"

    const-string v7, "discussion_table"

    const-string v8, "discussion_customization_table"

    const-string v9, "fyle_table"

    const-string v10, "fyle_message_join_with_status"

    const-string v11, "invitation_table"

    const-string v12, "message_table"

    const-string v13, "message_recipient_info_table"

    const-string v14, "identity_table"

    const-string v15, "anonymizer_for_owned_identity"

    const-string v16, "anonymous_usage_log"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct {v1, v4, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 85
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lio/olvid/messenger/databases/AppDatabase_Impl$1;

    const/16 v2, 0x16

    invoke-direct {v1, p0, v2}, Lio/olvid/messenger/databases/AppDatabase_Impl$1;-><init>(Lio/olvid/messenger/databases/AppDatabase_Impl;I)V

    const-string v2, "04a261fd2c89aade274484e6a8a9487f"

    const-string v3, "fd1b972177574d533093a64ca756229f"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 472
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 473
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 475
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;
    .locals 1

    .line 598
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_discussionCustomizationDao:Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_discussionCustomizationDao:Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    return-object v0

    .line 601
    :cond_0
    monitor-enter p0

    .line 602
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_discussionCustomizationDao:Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    if-nez v0, :cond_1

    .line 603
    new-instance v0, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_discussionCustomizationDao:Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    .line 605
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_discussionCustomizationDao:Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 606
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;
    .locals 1

    .line 584
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_discussionDao:Lio/olvid/messenger/databases/dao/DiscussionDao;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_discussionDao:Lio/olvid/messenger/databases/dao/DiscussionDao;

    return-object v0

    .line 587
    :cond_0
    monitor-enter p0

    .line 588
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_discussionDao:Lio/olvid/messenger/databases/dao/DiscussionDao;

    if-nez v0, :cond_1

    .line 589
    new-instance v0, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/DiscussionDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_discussionDao:Lio/olvid/messenger/databases/dao/DiscussionDao;

    .line 591
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_discussionDao:Lio/olvid/messenger/databases/dao/DiscussionDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 592
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;
    .locals 1

    .line 612
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_fyleDao:Lio/olvid/messenger/databases/dao/FyleDao;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_fyleDao:Lio/olvid/messenger/databases/dao/FyleDao;

    return-object v0

    .line 615
    :cond_0
    monitor-enter p0

    .line 616
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_fyleDao:Lio/olvid/messenger/databases/dao/FyleDao;

    if-nez v0, :cond_1

    .line 617
    new-instance v0, Lio/olvid/messenger/databases/dao/FyleDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/FyleDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_fyleDao:Lio/olvid/messenger/databases/dao/FyleDao;

    .line 619
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_fyleDao:Lio/olvid/messenger/databases/dao/FyleDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 620
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;
    .locals 1

    .line 626
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_fyleMessageJoinWithStatusDao:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_fyleMessageJoinWithStatusDao:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    return-object v0

    .line 629
    :cond_0
    monitor-enter p0

    .line 630
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_fyleMessageJoinWithStatusDao:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    if-nez v0, :cond_1

    .line 631
    new-instance v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_fyleMessageJoinWithStatusDao:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    .line 633
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_fyleMessageJoinWithStatusDao:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 634
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public groupDao()Lio/olvid/messenger/databases/dao/GroupDao;
    .locals 1

    .line 542
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_groupDao:Lio/olvid/messenger/databases/dao/GroupDao;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_groupDao:Lio/olvid/messenger/databases/dao/GroupDao;

    return-object v0

    .line 545
    :cond_0
    monitor-enter p0

    .line 546
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_groupDao:Lio/olvid/messenger/databases/dao/GroupDao;

    if-nez v0, :cond_1

    .line 547
    new-instance v0, Lio/olvid/messenger/databases/dao/GroupDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/GroupDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_groupDao:Lio/olvid/messenger/databases/dao/GroupDao;

    .line 549
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_groupDao:Lio/olvid/messenger/databases/dao/GroupDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 550
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invitationDao()Lio/olvid/messenger/databases/dao/InvitationDao;
    .locals 1

    .line 640
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_invitationDao:Lio/olvid/messenger/databases/dao/InvitationDao;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_invitationDao:Lio/olvid/messenger/databases/dao/InvitationDao;

    return-object v0

    .line 643
    :cond_0
    monitor-enter p0

    .line 644
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_invitationDao:Lio/olvid/messenger/databases/dao/InvitationDao;

    if-nez v0, :cond_1

    .line 645
    new-instance v0, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/InvitationDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_invitationDao:Lio/olvid/messenger/databases/dao/InvitationDao;

    .line 647
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_invitationDao:Lio/olvid/messenger/databases/dao/InvitationDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 648
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public messageDao()Lio/olvid/messenger/databases/dao/MessageDao;
    .locals 1

    .line 654
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_messageDao:Lio/olvid/messenger/databases/dao/MessageDao;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_messageDao:Lio/olvid/messenger/databases/dao/MessageDao;

    return-object v0

    .line 657
    :cond_0
    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_messageDao:Lio/olvid/messenger/databases/dao/MessageDao;

    if-nez v0, :cond_1

    .line 659
    new-instance v0, Lio/olvid/messenger/databases/dao/MessageDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/MessageDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_messageDao:Lio/olvid/messenger/databases/dao/MessageDao;

    .line 661
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_messageDao:Lio/olvid/messenger/databases/dao/MessageDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 662
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;
    .locals 1

    .line 668
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_messageRecipientInfoDao:Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_messageRecipientInfoDao:Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    return-object v0

    .line 671
    :cond_0
    monitor-enter p0

    .line 672
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_messageRecipientInfoDao:Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    if-nez v0, :cond_1

    .line 673
    new-instance v0, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_messageRecipientInfoDao:Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    .line 675
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_messageRecipientInfoDao:Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 676
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;
    .locals 1

    .line 682
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_ownedIdentityDao:Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_ownedIdentityDao:Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    return-object v0

    .line 685
    :cond_0
    monitor-enter p0

    .line 686
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_ownedIdentityDao:Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    if-nez v0, :cond_1

    .line 687
    new-instance v0, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_ownedIdentityDao:Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    .line 689
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_ownedIdentityDao:Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 690
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;
    .locals 1

    .line 570
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_pendingGroupMemberDao:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_pendingGroupMemberDao:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    return-object v0

    .line 573
    :cond_0
    monitor-enter p0

    .line 574
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_pendingGroupMemberDao:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    if-nez v0, :cond_1

    .line 575
    new-instance v0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;

    invoke-direct {v0, p0}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_pendingGroupMemberDao:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    .line 577
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase_Impl;->_pendingGroupMemberDao:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 578
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
