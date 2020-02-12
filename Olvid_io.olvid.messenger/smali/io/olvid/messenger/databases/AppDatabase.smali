.class public abstract Lio/olvid/messenger/databases/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/databases/AppDatabase$BytesKey;,
        Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;
    }
.end annotation


# static fields
.field public static final DB_SCHEMA_VERSION:I = 0x16

.field private static volatile instance:Lio/olvid/messenger/databases/AppDatabase;

.field private static final migrations:[Landroidx/room/migration/Migration;

.field private static roomDatabaseOpenCallback:Landroidx/room/RoomDatabase$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 92
    new-instance v0, Lio/olvid/messenger/databases/AppDatabase$1;

    invoke-direct {v0}, Lio/olvid/messenger/databases/AppDatabase$1;-><init>()V

    sput-object v0, Lio/olvid/messenger/databases/AppDatabase;->roomDatabaseOpenCallback:Landroidx/room/RoomDatabase$Callback;

    const/16 v0, 0x15

    new-array v1, v0, [Landroidx/room/migration/Migration;

    .line 100
    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$2;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lio/olvid/messenger/databases/AppDatabase$2;-><init>(II)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$3;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lio/olvid/messenger/databases/AppDatabase$3;-><init>(II)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$4;

    const/4 v5, 0x4

    invoke-direct {v2, v4, v5}, Lio/olvid/messenger/databases/AppDatabase$4;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$5;

    const/4 v3, 0x5

    invoke-direct {v2, v5, v3}, Lio/olvid/messenger/databases/AppDatabase$5;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$6;

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lio/olvid/messenger/databases/AppDatabase$6;-><init>(II)V

    aput-object v2, v1, v5

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$7;

    const/4 v5, 0x7

    invoke-direct {v2, v4, v5}, Lio/olvid/messenger/databases/AppDatabase$7;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$8;

    const/16 v3, 0x8

    invoke-direct {v2, v5, v3}, Lio/olvid/messenger/databases/AppDatabase$8;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$9;

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lio/olvid/messenger/databases/AppDatabase$9;-><init>(II)V

    aput-object v2, v1, v5

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$10;

    const/16 v5, 0xa

    invoke-direct {v2, v4, v5}, Lio/olvid/messenger/databases/AppDatabase$10;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$11;

    const/16 v3, 0xb

    invoke-direct {v2, v5, v3}, Lio/olvid/messenger/databases/AppDatabase$11;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$12;

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Lio/olvid/messenger/databases/AppDatabase$12;-><init>(II)V

    aput-object v2, v1, v5

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$13;

    const/16 v5, 0xd

    invoke-direct {v2, v4, v5}, Lio/olvid/messenger/databases/AppDatabase$13;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$14;

    const/16 v3, 0xe

    invoke-direct {v2, v5, v3}, Lio/olvid/messenger/databases/AppDatabase$14;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$15;

    const/16 v4, 0xf

    invoke-direct {v2, v3, v4}, Lio/olvid/messenger/databases/AppDatabase$15;-><init>(II)V

    aput-object v2, v1, v5

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$16;

    const/16 v5, 0x10

    invoke-direct {v2, v4, v5}, Lio/olvid/messenger/databases/AppDatabase$16;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$17;

    const/16 v3, 0x10

    const/16 v5, 0x11

    invoke-direct {v2, v3, v5}, Lio/olvid/messenger/databases/AppDatabase$17;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$18;

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v2, v3, v4}, Lio/olvid/messenger/databases/AppDatabase$18;-><init>(II)V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$19;

    const/16 v3, 0x12

    const/16 v4, 0x13

    invoke-direct {v2, v3, v4}, Lio/olvid/messenger/databases/AppDatabase$19;-><init>(II)V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$20;

    const/16 v3, 0x13

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4}, Lio/olvid/messenger/databases/AppDatabase$20;-><init>(II)V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$21;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v0}, Lio/olvid/messenger/databases/AppDatabase$21;-><init>(II)V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$22;

    const/16 v3, 0x16

    invoke-direct {v2, v0, v3}, Lio/olvid/messenger/databases/AppDatabase$22;-><init>(II)V

    const/16 v0, 0x14

    aput-object v2, v1, v0

    sput-object v1, Lio/olvid/messenger/databases/AppDatabase;->migrations:[Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lio/olvid/messenger/databases/AppDatabase;
    .locals 1

    .line 74
    sget-object v0, Lio/olvid/messenger/databases/AppDatabase;->instance:Lio/olvid/messenger/databases/AppDatabase;

    return-object v0
.end method

.method public static getInstance()Lio/olvid/messenger/databases/AppDatabase;
    .locals 3

    .line 578
    const-class v0, Lio/olvid/messenger/databases/AppDatabase;

    sget-object v1, Lio/olvid/messenger/databases/AppDatabase;->instance:Lio/olvid/messenger/databases/AppDatabase;

    if-nez v1, :cond_1

    .line 579
    monitor-enter v0

    .line 580
    :try_start_0
    sget-object v1, Lio/olvid/messenger/databases/AppDatabase;->instance:Lio/olvid/messenger/databases/AppDatabase;

    if-nez v1, :cond_0

    .line 581
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_database"

    invoke-static {v1, v0, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    sget-object v2, Lio/olvid/messenger/databases/AppDatabase;->roomDatabaseOpenCallback:Landroidx/room/RoomDatabase$Callback;

    .line 582
    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    sget-object v2, Lio/olvid/messenger/databases/AppDatabase;->migrations:[Landroidx/room/migration/Migration;

    .line 583
    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    .line 584
    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/AppDatabase;

    sput-object v1, Lio/olvid/messenger/databases/AppDatabase;->instance:Lio/olvid/messenger/databases/AppDatabase;

    .line 586
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 588
    :cond_1
    :goto_0
    sget-object v0, Lio/olvid/messenger/databases/AppDatabase;->instance:Lio/olvid/messenger/databases/AppDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract anonymizerForOwnedIdentityDao()Lio/olvid/messenger/databases/dao/AnonymizerForOwnedIdentityDao;
.end method

.method public abstract anonymousUsageLogItemDao()Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;
.end method

.method public abstract contactDao()Lio/olvid/messenger/databases/dao/ContactDao;
.end method

.method public abstract contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;
.end method

.method public abstract discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;
.end method

.method public abstract discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;
.end method

.method public abstract fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;
.end method

.method public abstract fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;
.end method

.method public abstract groupDao()Lio/olvid/messenger/databases/dao/GroupDao;
.end method

.method public abstract invitationDao()Lio/olvid/messenger/databases/dao/InvitationDao;
.end method

.method public abstract messageDao()Lio/olvid/messenger/databases/dao/MessageDao;
.end method

.method public abstract messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;
.end method

.method public abstract ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;
.end method

.method public abstract pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;
.end method
