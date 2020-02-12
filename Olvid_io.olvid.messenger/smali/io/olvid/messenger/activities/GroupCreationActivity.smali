.class public Lio/olvid/messenger/activities/GroupCreationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "GroupCreationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;,
        Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;
    }
.end annotation


# static fields
.field public static final CONTACTS_SELECTION_TAB:I = 0x0

.field public static final GROUP_NAME_TAB:I = 0x1


# instance fields
.field private actionBar:Landroidx/appcompat/app/ActionBar;

.field private confirmationButton:Landroid/widget/Button;

.field contactsSelectionFragment:Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;

.field private groupCreationViewModel:Lio/olvid/messenger/viewModels/GroupCreationViewModel;

.field groupNameFragment:Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

.field groupReadyObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private nextButton:Landroid/widget/Button;

.field private previousButton:Landroid/widget/Button;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 71
    new-instance v0, Lio/olvid/messenger/activities/GroupCreationActivity$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/GroupCreationActivity$1;-><init>(Lio/olvid/messenger/activities/GroupCreationActivity;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->groupReadyObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroid/widget/Button;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->confirmationButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/messenger/activities/GroupCreationActivity;)Lio/olvid/messenger/viewModels/GroupCreationViewModel;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->groupCreationViewModel:Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroidx/appcompat/app/ActionBar;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    return-object p0
.end method

.method static synthetic access$300(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroid/widget/Button;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->previousButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroid/widget/Button;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method private initiateGroupCreationProtocol()V
    .locals 7

    .line 280
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->groupCreationViewModel:Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/GroupCreationViewModel;->getSelectedContacts()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 285
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 288
    :cond_1
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->groupCreationViewModel:Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    invoke-virtual {v2}, Lio/olvid/messenger/viewModels/GroupCreationViewModel;->getGroupName()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 289
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 292
    :cond_2
    iget-object v3, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->groupCreationViewModel:Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    invoke-virtual {v3}, Lio/olvid/messenger/viewModels/GroupCreationViewModel;->getGroupDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 294
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 297
    :cond_3
    new-instance v4, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    invoke-direct {v4}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;-><init>()V

    const/4 v5, 0x0

    .line 298
    invoke-virtual {v4, v5}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->setVersion(I)V

    .line 299
    new-instance v6, Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v3}, Lio/olvid/engine/engine/types/JsonGroupDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->setGroupDetails(Lio/olvid/engine/engine/types/JsonGroupDetails;)V

    .line 301
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[B

    .line 303
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/olvid/messenger/databases/entity/Contact;

    .line 304
    iget-object v6, v6, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    :cond_4
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v3

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {v3, v1, v0, v2}, Lio/olvid/engine/engine/Engine;->startGroupCreationProtocol(Ljava/lang/String;[B[[B)V

    const/16 v0, 0x1e

    .line 311
    array-length v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lio/olvid/messenger/AnonymousUsageService;->log(ILjava/lang/Integer;)V

    const v0, 0x7f1001fc

    .line 312
    invoke-static {v0, v5}, Lio/olvid/messenger/App;->toast(II)V

    .line 314
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    const-string v1, "engine_notification_group_created"

    new-instance v2, Lio/olvid/messenger/activities/GroupCreationActivity$5;

    invoke-direct {v2, p0}, Lio/olvid/messenger/activities/GroupCreationActivity$5;-><init>(Lio/olvid/messenger/activities/GroupCreationActivity;)V

    invoke-virtual {v0, v1, v2}, Lio/olvid/engine/engine/Engine;->addNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 236
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 238
    iget-object v1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupCreationActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09008b

    if-eq p1, v0, :cond_2

    const v0, 0x7f090092

    if-eq p1, v0, :cond_1

    const v0, 0x7f090095

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-lez p1, :cond_3

    .line 268
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_3

    .line 261
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->confirmationButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 274
    invoke-direct {p0}, Lio/olvid/messenger/activities/GroupCreationActivity;->initiateGroupCreationProtocol()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->groupCreationViewModel:Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    .line 90
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->groupCreationViewModel:Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupCreationViewModel;->isGroupReady()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->groupReadyObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const p1, 0x7f0c0020

    .line 92
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->setContentView(I)V

    const p1, 0x7f10001e

    .line 93
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    new-instance p1, Lio/olvid/messenger/activities/GroupCreationActivity$2;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupCreationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/olvid/messenger/activities/GroupCreationActivity$2;-><init>(Lio/olvid/messenger/activities/GroupCreationActivity;Landroidx/fragment/app/FragmentManager;)V

    const v0, 0x7f09015a

    .line 145
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/GroupCreationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 146
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const p1, 0x7f090159

    .line 148
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 149
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    const p1, 0x7f090092

    .line 151
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->nextButton:Landroid/widget/Button;

    .line 152
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090095

    .line 153
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->previousButton:Landroid/widget/Button;

    .line 154
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->previousButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09008b

    .line 155
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->confirmationButton:Landroid/widget/Button;

    .line 156
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->confirmationButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupCreationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    .line 159
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 163
    :cond_0
    new-instance p1, Lio/olvid/messenger/activities/GroupCreationActivity$3;

    invoke-direct {p1, p0}, Lio/olvid/messenger/activities/GroupCreationActivity$3;-><init>(Lio/olvid/messenger/activities/GroupCreationActivity;)V

    .line 200
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const/4 v0, 0x0

    .line 201
    invoke-interface {p1, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 206
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupCreationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09004a

    .line 209
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    const v0, 0x7f1000d4

    .line 210
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/GroupCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v0, Lio/olvid/messenger/activities/GroupCreationActivity$4;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/activities/GroupCreationActivity$4;-><init>(Lio/olvid/messenger/activities/GroupCreationActivity;Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 251
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 248
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupCreationActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
