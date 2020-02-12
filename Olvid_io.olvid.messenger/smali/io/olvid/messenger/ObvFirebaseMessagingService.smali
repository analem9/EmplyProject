.class public Lio/olvid/messenger/ObvFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "ObvFirebaseMessagingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 5

    .line 16
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 17
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getSentTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/16 v2, 0x6e

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v3, v0

    long-to-int v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lio/olvid/messenger/AnonymousUsageService;->log(ILjava/lang/Integer;)V

    :cond_0
    const-string v0, "\n\n\nFIREBASE Message received\n\n"

    .line 21
    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "identity"

    .line 23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 26
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/olvid/engine/engine/Engine;->processAndroidPushNotification(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 7

    .line 32
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lio/olvid/messenger/AppSingleton;->storeFirebaseToken(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 38
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lio/olvid/engine/engine/Engine;->getOwnedIdentities()[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v3

    .line 40
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 41
    invoke-virtual {v6}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v6

    invoke-virtual {v2, v6, p1}, Lio/olvid/engine/engine/Engine;->registerToPushNotification([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "An error occurred while updating the push notifications with a new firebase token"

    .line 45
    invoke-static {v3}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
