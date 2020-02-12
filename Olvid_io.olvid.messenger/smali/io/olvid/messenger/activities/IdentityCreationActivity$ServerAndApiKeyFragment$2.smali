.class Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$2;
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

    .line 303
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 303
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$2;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 3

    .line 306
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->apiKeyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->apiKeyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 313
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x24

    if-ne p1, v2, :cond_1

    .line 317
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->apiKeyValidGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 318
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->apiKeyInvalidGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 315
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :catch_0
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->apiKeyValidGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 321
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->apiKeyInvalidGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 309
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->apiKeyValidGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 310
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->apiKeyInvalidGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method
