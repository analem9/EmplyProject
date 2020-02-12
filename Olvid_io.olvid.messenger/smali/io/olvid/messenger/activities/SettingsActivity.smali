.class public Lio/olvid/messenger/activities/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;
    }
.end annotation


# static fields
.field static final PREF_KEY_AUTODOWNLOAD_SIZE:Ljava/lang/String; = "pref_key_autodownload_size"

.field static final PREF_KEY_AUTODOWNLOAD_SIZE_DEFAULT:Ljava/lang/String; = "10000000"

.field public static final PREF_KEY_QR_CORRECTION_LEVEL:Ljava/lang/String; = "pref_key_qr_correction_level"

.field static final PREF_KEY_QR_CORRECTION_LEVEL_DEFAULT:Ljava/lang/String; = "M"

.field static final PREF_KEY_READ_RECEIPT:Ljava/lang/String; = "pref_key_send_read_receipt"

.field static final PREF_KEY_READ_RECEIPT_DEFAULT:Z = false

.field static final PREF_KEY_VIBRATOR:Ljava/lang/String; = "pref_key_use_vibrator"

.field static final PREF_KEY_VIBRATOR_DEFAULT:Z = true

.field public static final USER_DIALOG_HIDE_BACKGROUND_RESTRICTED:Ljava/lang/String; = "user_dialog_hide_background_restricted"

.field public static final USER_DIALOG_HIDE_BATTERY_OPTIMIZATION:Ljava/lang/String; = "user_dialog_hide_battery_optimization"

.field public static final USER_DIALOG_HIDE_GOOGLE_APIS:Ljava/lang/String; = "user_dialog_hide_google_apis"

.field public static final USER_DIALOG_HIDE_OLVID_NOT_FREE:Ljava/lang/String; = "user_dialog_hide_olvid_not_free"


# instance fields
.field private settingsFragment:Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static getAutoDownloadSize()J
    .locals 3

    .line 77
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_autodownload_size"

    const-string v2, "10000000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultSendReturnReceipt()Z
    .locals 3

    .line 82
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_send_read_receipt"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getQrCorrectionLevel()Ljava/lang/String;
    .locals 3

    .line 86
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_qr_correction_level"

    const-string v2, "M"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static useVibrator()Z
    .locals 3

    .line 73
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_use_vibrator"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lio/olvid/messenger/activities/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    :cond_0
    new-instance p1, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;

    invoke-direct {p1}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/SettingsActivity;->settingsFragment:Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;

    .line 59
    invoke-virtual {p0}, Lio/olvid/messenger/activities/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x1020002

    iget-object v1, p0, Lio/olvid/messenger/activities/SettingsActivity;->settingsFragment:Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 69
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 66
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/SettingsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
