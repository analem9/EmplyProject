.class public Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;
.super Landroidx/preference/PreferenceDataStore;
.source "DiscussionSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/DiscussionSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiscussionSettingsDataStore"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity;


# direct methods
.method public constructor <init>(Lio/olvid/messenger/activities/DiscussionSettingsActivity;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity;

    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    return-void
.end method

.method static synthetic lambda$putString$0(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 1

    .line 250
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;->insert(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)J

    return-void
.end method

.method static synthetic lambda$putString$1(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 1

    .line 252
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;->update(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    return-void
.end method


# virtual methods
.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x166a014a

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "pref_key_discussion_read_receipt"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 264
    :cond_2
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->access$100(Lio/olvid/messenger/activities/DiscussionSettingsActivity;)Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->getDiscussionCustomization()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    const-string p2, "null"

    if-eqz p1, :cond_5

    .line 266
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    return-object p2

    .line 269
    :cond_3
    iget-object p1, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "1"

    goto :goto_2

    :cond_4
    const-string p1, "0"

    :goto_2
    return-object p1

    :cond_5
    return-object p2
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x166a014a

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "pref_key_discussion_read_receipt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_3

    goto/16 :goto_5

    .line 227
    :cond_3
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->access$100(Lio/olvid/messenger/activities/DiscussionSettingsActivity;)Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->getDiscussionCustomization()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    const/4 v0, 0x1

    if-nez p1, :cond_5

    .line 230
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->access$100(Lio/olvid/messenger/activities/DiscussionSettingsActivity;)Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 233
    :cond_4
    new-instance p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionSettingsActivity$DiscussionSettingsDataStore;->this$0:Lio/olvid/messenger/activities/DiscussionSettingsActivity;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionSettingsActivity;->access$100(Lio/olvid/messenger/activities/DiscussionSettingsActivity;)Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p1, v4, v5}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;-><init>(J)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 236
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_8

    const/16 v5, 0x31

    if-eq v4, v5, :cond_7

    const v5, 0x33c587

    if-eq v4, v5, :cond_6

    goto :goto_3

    :cond_6
    const-string v4, "null"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 v2, 0x2

    goto :goto_3

    :cond_7
    const-string v4, "1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    const-string v4, "0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 v2, 0x0

    :cond_9
    :goto_3
    if-eqz v2, :cond_b

    if-eq v2, v0, :cond_a

    const/4 p2, 0x0

    .line 245
    iput-object p2, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    goto :goto_4

    .line 241
    :cond_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    goto :goto_4

    .line 238
    :cond_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    :goto_4
    if-eqz v1, :cond_c

    .line 250
    new-instance p2, Lio/olvid/messenger/activities/-$$Lambda$DiscussionSettingsActivity$DiscussionSettingsDataStore$6E_icn1ceZ9f-HrfZMT8y4Sl9cY;

    invoke-direct {p2, p1}, Lio/olvid/messenger/activities/-$$Lambda$DiscussionSettingsActivity$DiscussionSettingsDataStore$6E_icn1ceZ9f-HrfZMT8y4Sl9cY;-><init>(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    invoke-static {p2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 252
    :cond_c
    new-instance p2, Lio/olvid/messenger/activities/-$$Lambda$DiscussionSettingsActivity$DiscussionSettingsDataStore$qHk_ZoMaO5snQDMQu-fL6hxWk1Y;

    invoke-direct {p2, p1}, Lio/olvid/messenger/activities/-$$Lambda$DiscussionSettingsActivity$DiscussionSettingsDataStore$qHk_ZoMaO5snQDMQu-fL6hxWk1Y;-><init>(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    invoke-static {p2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :goto_5
    return-void
.end method
