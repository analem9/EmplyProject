.class Lio/olvid/messenger/activities/ObvLinkActivity$1;
.super Ljava/lang/Object;
.source "ObvLinkActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ObvLinkActivity;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/ObvLinkActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ObvLinkActivity;Landroid/net/Uri;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lio/olvid/messenger/activities/ObvLinkActivity$1;->this$0:Lio/olvid/messenger/activities/ObvLinkActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/ObvLinkActivity$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ObvLinkActivity$1;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getAvailableIdentities()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/high16 v0, 0x24000000

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 79
    iget-object p1, p0, Lio/olvid/messenger/activities/ObvLinkActivity$1;->this$0:Lio/olvid/messenger/activities/ObvLinkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/olvid/messenger/App;->showMainActivityTab(Landroid/content/Context;I)V

    const-string p1, "Multiple identities not implemented yet."

    .line 80
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lio/olvid/messenger/activities/ObvLinkActivity$1;->val$uri:Landroid/net/Uri;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/olvid/messenger/activities/MainActivity;

    const-string v4, "update_api_key_action"

    invoke-direct {p1, v4, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lio/olvid/messenger/activities/ObvLinkActivity$1;->this$0:Lio/olvid/messenger/activities/ObvLinkActivity;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/ObvLinkActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lio/olvid/messenger/activities/ObvLinkActivity$1;->val$uri:Landroid/net/Uri;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {p1, v4, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lio/olvid/messenger/activities/ObvLinkActivity$1;->this$0:Lio/olvid/messenger/activities/ObvLinkActivity;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/ObvLinkActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
