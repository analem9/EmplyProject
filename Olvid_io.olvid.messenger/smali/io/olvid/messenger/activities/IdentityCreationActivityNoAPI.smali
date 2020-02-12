.class public Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "IdentityCreationActivityNoAPI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ConfigurationPojo;,
        Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;,
        Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;
    }
.end annotation


# static fields
.field public static final DISPLAY_NAME_TAB:I


# instance fields
.field private actionBar:Landroidx/appcompat/app/ActionBar;

.field displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

.field private final forceDisabledLock:Ljava/lang/Object;

.field private identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

.field private nextButton:Landroid/widget/Button;

.field private previousButton:Landroid/widget/Button;

.field serverAndApiKeyFragment:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$ServerAndApiKeyFragment;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->forceDisabledLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;
    .locals 0

    .line 52
    iget-object p0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Landroidx/appcompat/app/ActionBar;
    .locals 0

    .line 52
    iget-object p0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->actionBar:Landroidx/appcompat/app/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Landroid/widget/Button;
    .locals 0

    .line 52
    iget-object p0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->previousButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Landroid/widget/Button;
    .locals 0

    .line 52
    iget-object p0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->createIdentity()V

    return-void
.end method

.method private createIdentity()V
    .locals 6

    .line 245
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getServer()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "5288afb8-bfe0-2ab9-cb24-7b93a54be5d5"

    const/4 v2, 0x0

    .line 255
    :try_start_0
    sget-object v3, Lio/olvid/messenger/activities/ObvLinkActivity;->API_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 264
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getIdentityDetails()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    if-eqz v1, :cond_4

    .line 265
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 269
    :cond_2
    iget-object v3, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    invoke-virtual {v3}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getForceDisabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 270
    iget-object v3, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->forceDisabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 271
    :try_start_1
    iget-object v4, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    invoke-virtual {v4}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getForceDisabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 272
    iget-object v4, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->setForceDisabled(Z)V

    .line 273
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getInstance()Lio/olvid/messenger/AppSingleton;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v2, v1}, Lio/olvid/messenger/AppSingleton;->generateIdentity(Landroid/content/Context;Ljava/lang/String;Ljava/util/UUID;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    .line 274
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->finish()V

    .line 276
    :cond_3
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 215
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 217
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->viewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->finish()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090092

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f090095

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-lez p1, :cond_2

    .line 237
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->viewPager:Landroidx/viewpager/widget/ViewPager;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-ge p1, v1, :cond_2

    .line 230
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->viewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    .line 73
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->setForceDisabled(Z)V

    .line 75
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    const-string v1, "https://server.olvid.io"

    invoke-virtual {p1, v1}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->setServer(Ljava/lang/String;)V

    const p1, 0x7f0c0022

    .line 77
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->setContentView(I)V

    const p1, 0x7f10001f

    .line 78
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->finish()V

    .line 85
    :cond_0
    new-instance p1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$1;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$1;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;Landroidx/fragment/app/FragmentManager;)V

    const v1, 0x7f09018b

    .line 130
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 131
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 132
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    const p1, 0x7f09018a

    .line 134
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 135
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    const p1, 0x7f090092

    .line 137
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->nextButton:Landroid/widget/Button;

    .line 138
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090095

    .line 139
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->previousButton:Landroid/widget/Button;

    .line 140
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->previousButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->actionBar:Landroidx/appcompat/app/ActionBar;

    .line 144
    new-instance p1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$2;

    invoke-direct {p1, p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$2;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)V

    .line 173
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 174
    invoke-interface {p1, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 176
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 182
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 435
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
