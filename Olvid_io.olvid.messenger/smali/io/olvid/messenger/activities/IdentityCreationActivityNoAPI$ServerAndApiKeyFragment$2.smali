.class Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;
.super Ljava/lang/Object;
.source "IdentityCreationActivityNoAPI.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;
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
.field final synthetic this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 301
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 3

    .line 304
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->apiKeyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->apiKeyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 311
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x24

    if-ne p1, v2, :cond_1

    .line 315
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->apiKeyValidGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->apiKeyInvalidGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 313
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :catch_0
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->apiKeyValidGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 319
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->apiKeyInvalidGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 307
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->apiKeyValidGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 308
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->apiKeyInvalidGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method
