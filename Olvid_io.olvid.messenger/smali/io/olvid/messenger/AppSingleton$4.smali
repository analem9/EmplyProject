.class Lio/olvid/messenger/AppSingleton$4;
.super Ljava/lang/Object;
.source "AppSingleton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/AppSingleton;->generateIdentity(Landroid/content/Context;Ljava/lang/String;Ljava/util/UUID;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/AppSingleton;

.field final synthetic val$activityContext:Landroid/content/Context;

.field final synthetic val$apiKey:Ljava/util/UUID;

.field final synthetic val$identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

.field final synthetic val$server:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/olvid/messenger/AppSingleton;Ljava/lang/String;Lio/olvid/engine/engine/types/JsonIdentityDetails;Ljava/util/UUID;Landroid/content/Context;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lio/olvid/messenger/AppSingleton$4;->this$0:Lio/olvid/messenger/AppSingleton;

    iput-object p2, p0, Lio/olvid/messenger/AppSingleton$4;->val$server:Ljava/lang/String;

    iput-object p3, p0, Lio/olvid/messenger/AppSingleton$4;->val$identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    iput-object p4, p0, Lio/olvid/messenger/AppSingleton$4;->val$apiKey:Ljava/util/UUID;

    iput-object p5, p0, Lio/olvid/messenger/AppSingleton$4;->val$activityContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 209
    iget-object v0, p0, Lio/olvid/messenger/AppSingleton$4;->this$0:Lio/olvid/messenger/AppSingleton;

    invoke-static {v0}, Lio/olvid/messenger/AppSingleton;->access$400(Lio/olvid/messenger/AppSingleton;)Lio/olvid/engine/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/AppSingleton$4;->val$server:Ljava/lang/String;

    iget-object v2, p0, Lio/olvid/messenger/AppSingleton$4;->val$identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    iget-object v3, p0, Lio/olvid/messenger/AppSingleton$4;->val$apiKey:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2, v3}, Lio/olvid/engine/engine/Engine;->generateOwnedIdentity(Ljava/lang/String;Lio/olvid/engine/engine/types/JsonIdentityDetails;Ljava/util/UUID;)Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v0

    .line 210
    new-instance v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/olvid/messenger/databases/entity/OwnedIdentity;-><init>(Lio/olvid/engine/engine/types/identities/ObvIdentity;I)V

    .line 211
    iget-object v3, p0, Lio/olvid/messenger/AppSingleton$4;->this$0:Lio/olvid/messenger/AppSingleton;

    invoke-static {v3}, Lio/olvid/messenger/AppSingleton;->access$000(Lio/olvid/messenger/AppSingleton;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v3

    invoke-interface {v3, v1}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->insert(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    .line 213
    iget-object v3, p0, Lio/olvid/messenger/AppSingleton$4;->this$0:Lio/olvid/messenger/AppSingleton;

    invoke-virtual {v3, v1}, Lio/olvid/messenger/AppSingleton;->selectIdentity(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    .line 214
    iget-object v1, p0, Lio/olvid/messenger/AppSingleton$4;->val$activityContext:Landroid/content/Context;

    invoke-static {v1}, Lio/olvid/messenger/App;->openMyId(Landroid/content/Context;)V

    .line 216
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->retrieveFirebaseToken()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 219
    :try_start_0
    iget-object v3, p0, Lio/olvid/messenger/AppSingleton$4;->this$0:Lio/olvid/messenger/AppSingleton;

    invoke-static {v3}, Lio/olvid/messenger/AppSingleton;->access$400(Lio/olvid/messenger/AppSingleton;)Lio/olvid/engine/engine/Engine;

    move-result-object v3

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lio/olvid/engine/engine/Engine;->registerToPushNotification([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Error registering newly generated Identity to push notification."

    .line 222
    invoke-static {v4}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    return-void
.end method
