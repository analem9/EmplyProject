.class Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$3;
.super Ljava/lang/Object;
.source "IdentityCreationActivityNoAPI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$3;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 350
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$3;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 351
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$3;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 352
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$3;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 354
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$3;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lio/olvid/messenger/activities/ObvLinkActivity;->CONFIGURATION_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$3;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

    const v2, 0x7f100204

    invoke-virtual {v1, v2}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/olvid/messenger/App;->openCameraScanActivity(Landroid/content/Context;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
