.class public Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const p1, 0x7f130003

    .line 95
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 98
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_0

    const p2, 0x7f10019b

    .line 99
    invoke-virtual {p0, p2}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    .line 100
    invoke-virtual {p2}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    .line 101
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 103
    new-instance p2, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100198

    .line 104
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f10019d

    .line 105
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const v1, 0x7f10019c

    .line 106
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 107
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOrder(I)V

    const v1, 0x7f0800d3

    .line 108
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 109
    new-instance v1, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment$1;-><init>(Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;)V

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 122
    new-instance p2, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100197

    .line 123
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f100194

    .line 124
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const v1, 0x7f100193

    .line 125
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    add-int/lit8 v0, v0, 0x1

    .line 126
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOrder(I)V

    const v0, 0x7f0800d2

    .line 127
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 128
    new-instance v0, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment$2;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment$2;-><init>(Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getOrder()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 145
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1001a3

    .line 146
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const v1, 0x7f1001a2

    .line 147
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 148
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOrder(I)V

    const p2, 0x7f0800d6

    .line 149
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setIcon(I)V

    .line 150
    new-instance p2, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment$3;

    invoke-direct {p2, p0}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment$3;-><init>(Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 241
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 233
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 234
    invoke-virtual {p0}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 246
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x6b7eb23b

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "pref_key_qr_correction_level"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 248
    :cond_2
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->reloadCurrentIdentity()V

    :goto_2
    return-void
.end method
