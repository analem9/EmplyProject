.class public Lio/olvid/messenger/activities/DiscussionSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DiscussionSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;,
        Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;
    }
.end annotation


# static fields
.field public static final DISCUSSION_ID_INTENT_EXTRA:Ljava/lang/String; = "discussion_id"

.field public static final PREF_KEY_DISCUSSION_READ_RECEIPT:Ljava/lang/String; = "pref_key_discussion_read_receipt"


# instance fields
.field private discussionSettingsViewModel:Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

.field private settingsFragment:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/olvid/messenger/activities/DiscussionSettingsActivity;)Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->discussionSettingsViewModel:Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    return-object p0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "discussion_id"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, -0x1

    .line 64
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 65
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->discussionSettingsViewModel:Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    invoke-virtual {p1, v0, v1}, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->setDiscussionId(J)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->discussionSettingsViewModel:Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    .line 45
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->discussionSettingsViewModel:Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->getDiscussionCustomization()Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 52
    new-instance v0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    invoke-direct {v0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->settingsFragment:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    .line 53
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->settingsFragment:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->discussionSettingsViewModel:Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->setDiscussionSettingsViewModel(Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;)V

    .line 54
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->settingsFragment:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    new-instance v1, Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;

    invoke-direct {v1, p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;-><init>(Lio/olvid/messenger/activities/DiscussionSettingsActivity;)V

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->setPreferenceDataStore(Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;)V

    .line 56
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->settingsFragment:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 57
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x1020002

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->settingsFragment:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 59
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 79
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
