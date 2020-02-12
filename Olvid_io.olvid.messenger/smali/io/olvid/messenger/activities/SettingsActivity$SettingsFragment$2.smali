.class Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment$2;
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

    .line 128
    iput-object p1, p0, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment$2;->this$0:Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 131
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.provider.extra.CHANNEL_ID"

    const-string v1, "olvid_invitation_notification"

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment$2;->this$0:Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/SettingsActivity$SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
