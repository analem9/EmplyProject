.class Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$1;
.super Ljava/lang/Object;
.source "IdentityCreationActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 294
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$1;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->serverTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$1;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->serverTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
