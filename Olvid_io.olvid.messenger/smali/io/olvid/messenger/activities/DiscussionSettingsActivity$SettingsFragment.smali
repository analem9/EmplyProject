.class public Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "DiscussionSettingsActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/DiscussionSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/preference/PreferenceFragmentCompat;",
        "Landroidx/lifecycle/Observer<",
        "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
        ">;"
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_BACKGROUND_IMAGE:I = 0x12


# instance fields
.field backgroundImagePreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

.field colorPickerPreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

.field private discussionSettingsDataStore:Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;

.field private discussionSettingsViewModel:Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

.field readReceiptPreference:Landroidx/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;)Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;
    .locals 0

    .line 87
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->discussionSettingsViewModel:Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    return-object p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 173
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->discussionSettingsViewModel:Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object p1

    .line 174
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 176
    new-instance p3, Lio/olvid/messenger/databases/tasks/SetDiscussionBackgroundImageTask;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p3, p2, v0, v1}, Lio/olvid/messenger/databases/tasks/SetDiscussionBackgroundImageTask;-><init>(Landroid/net/Uri;J)V

    invoke-static {p3}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onChanged(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->readReceiptPreference:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 190
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->discussionSettingsDataStore:Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;

    const-string v2, "pref_key_discussion_read_receipt"

    const-string v3, "null"

    invoke-virtual {v1, v2, v3}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 192
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->colorPickerPreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->getColorJson()Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->colorPickerPreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    invoke-virtual {v1, v0}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setColor(Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;)V

    .line 196
    :cond_2
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->backgroundImagePreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 198
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->backgroundImagePreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setImage(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->backgroundImagePreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    const v0, 0x7f10018e

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setSummary(I)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->backgroundImagePreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setImage(Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->backgroundImagePreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    const v0, 0x7f10018f

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setSummary(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->onChanged(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 99
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->discussionSettingsDataStore:Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->discussionSettingsDataStore:Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    :cond_0
    const p1, 0x7f130001

    .line 103
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->addPreferencesFromResource(I)V

    .line 104
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 p2, 0x0

    .line 106
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->readReceiptPreference:Landroidx/preference/ListPreference;

    .line 107
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->readReceiptPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 108
    invoke-static {}, Lio/olvid/messenger/activities/SettingsActivity;->getDefaultSendReturnReceipt()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1001b2

    .line 109
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    goto :goto_0

    :cond_1
    const v1, 0x7f1001b1

    .line 111
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    .line 113
    :goto_0
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->readReceiptPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getOrder()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 118
    new-instance v0, Lio/olvid/messenger/customClasses/ImageViewPreference;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/olvid/messenger/customClasses/ImageViewPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->colorPickerPreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    .line 119
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->colorPickerPreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setTitle(I)V

    .line 120
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->colorPickerPreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    invoke-virtual {v0, p2}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setOrder(I)V

    .line 121
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->colorPickerPreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setIcon(I)V

    .line 122
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->colorPickerPreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    new-instance v1, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$1;-><init>(Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;)V

    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 133
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->colorPickerPreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 p2, p2, 0x1

    .line 138
    new-instance v0, Lio/olvid/messenger/customClasses/ImageViewPreference;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/olvid/messenger/customClasses/ImageViewPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->backgroundImagePreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    .line 139
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->backgroundImagePreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    const v1, 0x7f10018d

    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setTitle(I)V

    .line 140
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->backgroundImagePreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    invoke-virtual {v0, p2}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setOrder(I)V

    .line 141
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->backgroundImagePreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    const v0, 0x7f0800d1

    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setIcon(I)V

    .line 142
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->backgroundImagePreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    new-instance v0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$2;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$2;-><init>(Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;)V

    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/ImageViewPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 161
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->backgroundImagePreference:Lio/olvid/messenger/customClasses/ImageViewPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public setDiscussionSettingsViewModel(Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->discussionSettingsViewModel:Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    return-void
.end method

.method public setPreferenceDataStore(Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;)V
    .locals 1

    .line 208
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->discussionSettingsDataStore:Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;

    .line 209
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    :cond_0
    return-void
.end method
