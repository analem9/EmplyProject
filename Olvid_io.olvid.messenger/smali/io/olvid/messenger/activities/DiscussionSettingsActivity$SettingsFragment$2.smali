.class Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$2;
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

    .line 142
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$2;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 145
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$2;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->access$000(Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;)Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 146
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$2;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->access$000(Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;)Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->getDiscussionCustomization()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    if-eqz p1, :cond_0

    .line 147
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 148
    new-instance v0, Lio/olvid/messenger/databases/tasks/RemoveDiscussionBackgroundImageTask;

    iget-wide v1, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->discussionId:J

    invoke-direct {v0, v1, v2}, Lio/olvid/messenger/databases/tasks/RemoveDiscussionBackgroundImageTask;-><init>(J)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 150
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 151
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.intent.category.OPENABLE"

    .line 152
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 153
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment$2;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity$SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
