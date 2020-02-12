.class public Lio/olvid/messenger/activities/ShortcutActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ShortcutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/activities/ShortcutActivity;Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/ShortcutActivity;->proceed(Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;)V

    return-void
.end method

.method private intentFail()V
    .locals 2

    const v0, 0x7f100209

    const/4 v1, 0x0

    .line 78
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    .line 79
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ShortcutActivity;->finish()V

    return-void
.end method

.method private proceed(Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 85
    iget-boolean v0, p1, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->isGroupDiscussion:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 86
    iget-wide v3, p1, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->discussionId:J

    iget-object v0, p1, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->byteIdentifier:[B

    iget-object p1, p1, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->title:Ljava/lang/String;

    invoke-static {v3, v4, v0, v2, p1}, Lio/olvid/messenger/activities/DiscussionActivity;->getShortcutInfo(J[B[BLjava/lang/String;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    .line 87
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->createShortcutResultIntent(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lio/olvid/messenger/activities/ShortcutActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-wide v3, p1, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->discussionId:J

    iget-object v0, p1, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->byteIdentifier:[B

    iget-object p1, p1, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->title:Ljava/lang/String;

    invoke-static {v3, v4, v2, v0, p1}, Lio/olvid/messenger/activities/DiscussionActivity;->getShortcutInfo(J[B[BLjava/lang/String;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->createShortcutResultIntent(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lio/olvid/messenger/activities/ShortcutActivity;->setResult(ILandroid/content/Intent;)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ShortcutActivity;->finish()V

    goto :goto_1

    .line 94
    :cond_1
    invoke-direct {p0}, Lio/olvid/messenger/activities/ShortcutActivity;->intentFail()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002b

    .line 30
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ShortcutActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 39
    invoke-direct {p0}, Lio/olvid/messenger/activities/ShortcutActivity;->intentFail()V

    return-void

    :cond_1
    const p1, 0x7f090111

    .line 43
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v0, 0x7f090089

    .line 44
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/ShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    new-instance v1, Lio/olvid/messenger/activities/ShortcutActivity$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/activities/ShortcutActivity$1;-><init>(Lio/olvid/messenger/activities/ShortcutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lio/olvid/messenger/activities/ShortcutActivity$2;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/activities/ShortcutActivity$2;-><init>(Lio/olvid/messenger/activities/ShortcutActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .line 34
    :cond_2
    :goto_0
    invoke-direct {p0}, Lio/olvid/messenger/activities/ShortcutActivity;->intentFail()V

    return-void
.end method
