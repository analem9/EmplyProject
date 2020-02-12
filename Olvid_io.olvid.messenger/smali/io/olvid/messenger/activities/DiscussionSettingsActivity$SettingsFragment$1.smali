.class Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$1;
.super Ljava/lang/Object;
.source "DiscussionSettingsActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$1;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 125
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$1;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->access$000(Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;)Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$1;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->access$000(Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;)Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$1;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->access$000(Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;)Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->newInstance(J)Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$1;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
