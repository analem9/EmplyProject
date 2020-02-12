.class Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment$3;->this$0:Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 153
    iget-object p1, p0, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment$3;->this$0:Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "user_dialog_hide_google_apis"

    .line 154
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "user_dialog_hide_olvid_not_free"

    .line 155
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "user_dialog_hide_background_restricted"

    .line 156
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "user_dialog_hide_battery_optimization"

    .line 157
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const p1, 0x7f1001f3

    .line 159
    invoke-static {p1, v0}, Lio/olvid/messenger/App;->toast(II)V

    .line 160
    sput-boolean v0, Lio/olvid/messenger/activities/MainActivity;->dialogsLoaded:Z

    return v0
.end method
