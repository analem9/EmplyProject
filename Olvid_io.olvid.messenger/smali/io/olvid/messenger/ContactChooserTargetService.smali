.class public Lio/olvid/messenger/ContactChooserTargetService;
.super Landroid/service/chooser/ChooserTargetService;
.source "ContactChooserTargetService.java"


# static fields
.field private static final CATEGORY_SHARE_TARGET:Ljava/lang/String; = "io.olvid.messenger.activities.ShareActivity.SHARE"

.field private static MAX_SHORCUTS:I = 0x5

.field private static publishedDiscussionIds:[Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/service/chooser/ChooserTargetService;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 35
    sget v0, Lio/olvid/messenger/ContactChooserTargetService;->MAX_SHORCUTS:I

    return v0
.end method

.method static synthetic access$100()[Ljava/lang/Long;
    .locals 1

    .line 35
    sget-object v0, Lio/olvid/messenger/ContactChooserTargetService;->publishedDiscussionIds:[Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lio/olvid/messenger/ContactChooserTargetService;->publishNewShareTargets(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$startPublishingShareTargets$0(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getLatestDiscussionsInWhichYouWrote()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lio/olvid/messenger/ContactChooserTargetService$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/ContactChooserTargetService$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static publishNewShareTargets(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;)V"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "io.olvid.messenger.activities.ShareActivity.SHARE"

    .line 82
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/Discussion;

    .line 86
    sget-object v4, Lio/olvid/messenger/ContactChooserTargetService;->publishedDiscussionIds:[Ljava/lang/Long;

    iget-wide v5, v3, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    .line 88
    iget-wide v4, v3, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iget-object v6, v3, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    iget-object v7, v3, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v3}, Lio/olvid/messenger/activities/DiscussionActivity;->getShortcutInfo(J[B[BLjava/lang/String;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLived()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v4

    .line 90
    invoke-virtual {v4, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setCategories(Ljava/util/Set;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 91
    invoke-virtual {v3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 94
    sget v3, Lio/olvid/messenger/ContactChooserTargetService;->MAX_SHORCUTS:I

    if-ne v2, v3, :cond_0

    .line 98
    :cond_1
    :goto_0
    sget p1, Lio/olvid/messenger/ContactChooserTargetService;->MAX_SHORCUTS:I

    if-ge v2, p1, :cond_2

    .line 99
    sget-object p1, Lio/olvid/messenger/ContactChooserTargetService;->publishedDiscussionIds:[Ljava/lang/Long;

    const/4 v1, 0x0

    aput-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeAllDynamicShortcuts(Landroid/content/Context;)V

    .line 103
    invoke-static {p0, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->addDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)Z

    return-void
.end method

.method public static startPublishingShareTargets(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getMaxShortcutCountPerActivity(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getMaxShortcutCountPerActivity(Landroid/content/Context;)I

    move-result v0

    sput v0, Lio/olvid/messenger/ContactChooserTargetService;->MAX_SHORCUTS:I

    .line 45
    :cond_0
    sget v0, Lio/olvid/messenger/ContactChooserTargetService;->MAX_SHORCUTS:I

    new-array v0, v0, [Ljava/lang/Long;

    sput-object v0, Lio/olvid/messenger/ContactChooserTargetService;->publishedDiscussionIds:[Ljava/lang/Long;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/olvid/messenger/-$$Lambda$ContactChooserTargetService$snr2ip0cY1wLCmITxBwhBFcC6ho;

    invoke-direct {v1, p0}, Lio/olvid/messenger/-$$Lambda$ContactChooserTargetService$snr2ip0cY1wLCmITxBwhBFcC6ho;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getLatestDiscussionsInWhichYouWroteSync()Ljava/util/List;

    move-result-object p1

    .line 110
    new-instance p2, Lio/olvid/messenger/customClasses/InitialView;

    invoke-direct {p2, p0}, Lio/olvid/messenger/customClasses/InitialView;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p0}, Lio/olvid/messenger/ContactChooserTargetService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 112
    invoke-virtual {p2, v0, v0}, Lio/olvid/messenger/customClasses/InitialView;->setSize(II)V

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    sget v2, Lio/olvid/messenger/ContactChooserTargetService;->MAX_SHORCUTS:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/Discussion;

    .line 117
    iget-object v4, v3, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    if-eqz v4, :cond_1

    .line 118
    iget-object v4, v3, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    invoke-virtual {p2, v4}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v4, v3, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, v3, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v5, v3, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    invoke-static {v5}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 126
    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 127
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v5}, Lio/olvid/messenger/customClasses/InitialView;->drawOnCanvas(Landroid/graphics/Canvas;)V

    .line 128
    invoke-static {v4}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 130
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discussion_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.extra.shortcut.ID"

    invoke-virtual {v11, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v4, Landroid/service/chooser/ChooserTarget;

    iget-object v7, v3, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    const/high16 v9, 0x3f800000    # 1.0f

    new-instance v10, Landroid/content/ComponentName;

    const-class v3, Lio/olvid/messenger/activities/ShareActivity;

    invoke-direct {v10, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 141
    sget v3, Lio/olvid/messenger/ContactChooserTargetService;->MAX_SHORCUTS:I

    if-ne v2, v3, :cond_0

    :cond_2
    return-object v1
.end method
