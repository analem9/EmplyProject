.class Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment$1;
.super Ljava/lang/Object;
.source "IdentityCreationActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;->generateIdButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 454
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;->generateIdButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;->generateIdButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 449
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment$1;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
