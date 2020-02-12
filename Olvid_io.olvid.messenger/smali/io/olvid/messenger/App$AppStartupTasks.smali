.class Lio/olvid/messenger/App$AppStartupTasks;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppStartupTasks"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 510
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/olvid/messenger/App;->access$000()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "camera_pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 513
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 514
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 516
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    :cond_1
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->retrieveFirebaseToken()Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v1

    invoke-interface {v1}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->getAllSync()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    .line 528
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v5

    iget-object v6, v3, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {v5, v6, v0}, Lio/olvid/engine/engine/Engine;->registerToPushNotification([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 531
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 538
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 539
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/messenger/ContactChooserTargetService;->startPublishingShareTargets(Landroid/content/Context;)V

    :cond_4
    return-void
.end method
