.class public Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;
.super Landroidx/fragment/app/Fragment;
.source "IdentityCreationActivityNoAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerAndApiKeyFragment"
.end annotation


# static fields
.field public static final PERMISSION_CAMERA:I = 0x13


# instance fields
.field apiKeyInvalidGroup:Landroid/view/ViewGroup;

.field apiKeyObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field apiKeyTextView:Landroid/widget/TextView;

.field apiKeyValidGroup:Landroid/view/ViewGroup;

.field enterManuallyButton:Landroid/widget/Button;

.field importFromClipboardButton:Landroid/widget/Button;

.field scanQrCodeButton:Landroid/widget/Button;

.field serverObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field serverTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 292
    new-instance v0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$1;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->serverObserver:Landroidx/lifecycle/Observer;

    .line 301
    new-instance v0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$2;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->apiKeyObserver:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 330
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v1, "android.hardware.camera"

    invoke-virtual {p3, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const v1, 0x7f0c004e

    .line 332
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090192

    .line 334
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->serverTextView:Landroid/widget/TextView;

    const p2, 0x7f090186

    .line 335
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->apiKeyTextView:Landroid/widget/TextView;

    const p2, 0x7f090189

    .line 337
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->apiKeyValidGroup:Landroid/view/ViewGroup;

    const p2, 0x7f090188

    .line 338
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->apiKeyInvalidGroup:Landroid/view/ViewGroup;

    const p2, 0x7f090098

    .line 340
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->scanQrCodeButton:Landroid/widget/Button;

    if-nez p3, :cond_1

    .line 342
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->scanQrCodeButton:Landroid/widget/Button;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    const p2, 0x7f090091

    .line 344
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->importFromClipboardButton:Landroid/widget/Button;

    const p2, 0x7f09008d

    .line 345
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->enterManuallyButton:Landroid/widget/Button;

    .line 347
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->scanQrCodeButton:Landroid/widget/Button;

    new-instance p3, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$3;

    invoke-direct {p3, p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$3;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->enterManuallyButton:Landroid/widget/Button;

    new-instance p3, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$4;

    invoke-direct {p3, p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$4;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->importFromClipboardButton:Landroid/widget/Button;

    new-instance p3, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$5;

    invoke-direct {p3, p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment$5;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x13

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    .line 421
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 422
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lio/olvid/messenger/activities/ObvLinkActivity;->CONFIGURATION_PATTERN:Ljava/util/regex/Pattern;

    const p3, 0x7f100204

    invoke-virtual {p0, p3}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lio/olvid/messenger/App;->openCameraScanActivity(Landroid/content/Context;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f1001ed

    .line 425
    invoke-static {p1, p2}, Lio/olvid/messenger/App;->toast(II)V

    :cond_2
    :goto_0
    return-void
.end method
