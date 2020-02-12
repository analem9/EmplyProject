.class Lio/olvid/messenger/activities/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/MainActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$1;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 2

    .line 147
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    if-nez p1, :cond_0

    .line 149
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$1;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$1;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$1;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/MainActivity;->finish()V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$1;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/MainActivity;->access$000(Lio/olvid/messenger/activities/MainActivity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MainActivity$1;->onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method
