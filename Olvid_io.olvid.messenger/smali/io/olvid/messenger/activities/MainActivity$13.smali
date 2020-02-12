.class Lio/olvid/messenger/activities/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MainActivity;->updateApiKey(Lio/olvid/messenger/databases/entity/OwnedIdentity;Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/MainActivity;

.field final synthetic val$configurationPojo:Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;

.field final synthetic val$ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity;Lio/olvid/messenger/databases/entity/OwnedIdentity;Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$13;->this$0:Lio/olvid/messenger/activities/MainActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/MainActivity$13;->val$ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iput-object p3, p0, Lio/olvid/messenger/activities/MainActivity$13;->val$configurationPojo:Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 709
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/activities/MainActivity$13;->val$ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$13;->val$configurationPojo:Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->apiKey:Ljava/util/UUID;

    invoke-virtual {p1, p2, v0}, Lio/olvid/engine/engine/Engine;->updateApiKeyForOwnedIdentity([BLjava/util/UUID;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f1001ea

    .line 710
    invoke-static {p1, p2}, Lio/olvid/messenger/App;->toast(II)V

    .line 711
    new-instance p1, Lio/olvid/messenger/activities/MainActivity$13$1;

    invoke-direct {p1, p0}, Lio/olvid/messenger/activities/MainActivity$13$1;-><init>(Lio/olvid/messenger/activities/MainActivity$13;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1001e9

    .line 719
    invoke-static {p1, p2}, Lio/olvid/messenger/App;->toast(II)V

    :goto_0
    return-void
.end method
