.class public Lio/olvid/messenger/activities/IdentityCreationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "IdentityCreationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;,
        Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;,
        Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;
    }
.end annotation


# static fields
.field public static final DISPLAY_NAME_TAB:I = 0x1

.field public static final SERVER_AND_API_KEY_TAB:I


# instance fields
.field private actionBar:Landroidx/appcompat/app/ActionBar;

.field displayNameFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$DisplayNameFragment;

.field private final forceDisabledLock:Ljava/lang/Object;

.field private identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

.field private nextButton:Landroid/widget/Button;

.field private previousButton:Landroid/widget/Button;

.field serverAndApiKeyFragment:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->forceDisabledLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/activities/IdentityCreationActivity;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/messenger/activities/IdentityCreationActivity;)Landroidx/appcompat/app/ActionBar;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/messenger/activities/IdentityCreationActivity;)Landroid/widget/Button;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->previousButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lio/olvid/messenger/activities/IdentityCreationActivity;)Landroid/widget/Button;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/messenger/activities/IdentityCreationActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lio/olvid/messenger/activities/IdentityCreationActivity;->createIdentity()V

    return-void
.end method

.method private createIdentity()V
    .locals 6

    .line 246
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getServer()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getApiKey()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 256
    :try_start_0
    sget-object v3, Lio/olvid/messenger/activities/ObvLinkActivity;->API_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 261
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    const v0, 0x7f1001fe

    .line 262
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    return-void

    .line 265
    :cond_3
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getIdentityDetails()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    if-eqz v1, :cond_6

    .line 266
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 270
    :cond_4
    iget-object v3, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    invoke-virtual {v3}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getForceDisabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 271
    iget-object v3, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->forceDisabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 272
    :try_start_1
    iget-object v4, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    invoke-virtual {v4}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getForceDisabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 273
    iget-object v4, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->setForceDisabled(Z)V

    .line 274
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getInstance()Lio/olvid/messenger/AppSingleton;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v2, v1}, Lio/olvid/messenger/AppSingleton;->generateIdentity(Landroid/content/Context;Ljava/lang/String;Ljava/util/UUID;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    .line 276
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivity;->finish()V

    .line 278
    :cond_5
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    :goto_1
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 188
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 190
    sget-object v0, Lio/olvid/messenger/activities/ObvLinkActivity;->CONFIGURATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const v0, 0x7f10020d

    const/4 v1, 0x0

    .line 193
    :try_start_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 194
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/ObvBase64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-class v4, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;

    invoke-virtual {v2, p1, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;

    if-eqz p1, :cond_1

    .line 195
    iget-object v2, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->apiKey:Ljava/util/UUID;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->serverUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "https://server.olvid.io"

    .line 196
    iget-object v4, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->serverUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f10020e

    .line 197
    invoke-static {v2, v3}, Lio/olvid/messenger/App;->toast(II)V

    .line 199
    :cond_0
    iget-object v2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->apiKey:Ljava/util/UUID;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->setApiKey(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 208
    :goto_1
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 205
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 208
    :goto_2
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    .line 210
    throw p1

    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 216
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090092

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f090095

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-lez p1, :cond_2

    .line 238
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-ge p1, v1, :cond_2

    .line 231
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    .line 74
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->setForceDisabled(Z)V

    .line 76
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->identityCreationViewModel:Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    const-string v1, "https://server.olvid.io"

    invoke-virtual {p1, v1}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->setServer(Ljava/lang/String;)V

    const p1, 0x7f0c0022

    .line 78
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->setContentView(I)V

    const p1, 0x7f10001f

    .line 79
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivity;->finish()V

    .line 86
    :cond_0
    new-instance p1, Lio/olvid/messenger/activities/IdentityCreationActivity$1;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lio/olvid/messenger/activities/IdentityCreationActivity$1;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivity;Landroidx/fragment/app/FragmentManager;)V

    const v1, 0x7f09018b

    .line 131
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 132
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 133
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    const p1, 0x7f09018a

    .line 135
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 136
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    const p1, 0x7f090092

    .line 138
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->nextButton:Landroid/widget/Button;

    .line 139
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090095

    .line 140
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->previousButton:Landroid/widget/Button;

    .line 141
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->previousButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    .line 145
    new-instance p1, Lio/olvid/messenger/activities/IdentityCreationActivity$2;

    invoke-direct {p1, p0}, Lio/olvid/messenger/activities/IdentityCreationActivity$2;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivity;)V

    .line 174
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 175
    invoke-interface {p1, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 177
    invoke-virtual {p0}, Lio/olvid/messenger/activities/IdentityCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 183
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 437
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
