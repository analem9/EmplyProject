.class Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;
.super Ljava/lang/Object;
.source "MyIdActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/MyIdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdentityObserver"
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
.field private ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;

.field final synthetic this$0:Lio/olvid/messenger/activities/MyIdActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MyIdActivity;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;->this$0:Lio/olvid/messenger/activities/MyIdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 370
    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;->ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;

    return-void
.end method


# virtual methods
.method public onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;->ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;

    .line 374
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;->reload()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 369
    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;->onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method

.method public reload()V
    .locals 2

    .line 378
    iget-object v0, p0, Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;->this$0:Lio/olvid/messenger/activities/MyIdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/olvid/messenger/activities/MyIdActivity;->access$002(Lio/olvid/messenger/activities/MyIdActivity;Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    .line 379
    iget-object v0, p0, Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;->this$0:Lio/olvid/messenger/activities/MyIdActivity;

    iget-object v1, p0, Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;->ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/MyIdActivity;->displayDetails(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method
