.class public Lio/olvid/messenger/activities/ShareActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ShareActivity.java"


# static fields
.field public static final DISCUSSION_ID_INTENT_EXTRA:Ljava/lang/String; = "discussion_id"


# instance fields
.field private sharedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private sharedText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/activities/ShareActivity;J)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lio/olvid/messenger/activities/ShareActivity;->proceed(J)V

    return-void
.end method

.method private intentFail()V
    .locals 2

    const v0, 0x7f100208

    const/4 v1, 0x0

    .line 138
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    .line 139
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ShareActivity;->finish()V

    return-void
.end method

.method private proceed(J)V
    .locals 3

    .line 143
    new-instance v0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;

    iget-object v1, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedText:Ljava/lang/String;

    iget-object v2, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedFiles:Ljava/util/ArrayList;

    invoke-direct {v0, p1, p2, v1, v2}, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;-><init>(JLjava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "forward_action"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    const-class v1, Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "forward_to"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "discussion_id"

    .line 148
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/ShareActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ShareActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002a

    .line 39
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ShareActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x45ee9a33

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, -0x37c67be

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    const/16 v0, 0x28

    const/16 v2, 0x29

    const-string v3, ""

    const-string v6, "android.intent.extra.TEXT"

    const-string v7, "android.intent.extra.STREAM"

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_4

    .line 84
    invoke-direct {p0}, Lio/olvid/messenger/activities/ShareActivity;->intentFail()V

    return-void

    .line 70
    :cond_4
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedFiles:Ljava/util/ArrayList;

    .line 71
    iget-object v1, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedFiles:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    .line 72
    invoke-direct {p0}, Lio/olvid/messenger/activities/ShareActivity;->intentFail()V

    return-void

    .line 75
    :cond_5
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedText:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedText:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 77
    iput-object v3, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedText:Ljava/lang/String;

    goto :goto_1

    .line 79
    :cond_6
    invoke-static {v0}, Lio/olvid/messenger/AnonymousUsageService;->log(I)V

    .line 81
    :goto_1
    iget-object v0, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lio/olvid/messenger/AnonymousUsageService;->log(ILjava/lang/Integer;)V

    goto :goto_2

    .line 49
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v8, "text/plain"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 50
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedText:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedText:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 52
    invoke-direct {p0}, Lio/olvid/messenger/activities/ShareActivity;->intentFail()V

    return-void

    .line 55
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedFiles:Ljava/util/ArrayList;

    .line 56
    invoke-static {v0}, Lio/olvid/messenger/AnonymousUsageService;->log(I)V

    goto :goto_2

    .line 58
    :cond_9
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_a

    .line 60
    invoke-direct {p0}, Lio/olvid/messenger/activities/ShareActivity;->intentFail()V

    return-void

    .line 63
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedFiles:Ljava/util/ArrayList;

    .line 64
    iget-object v1, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iput-object v3, p0, Lio/olvid/messenger/activities/ShareActivity;->sharedText:Ljava/lang/String;

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lio/olvid/messenger/AnonymousUsageService;->log(ILjava/lang/Integer;)V

    :goto_2
    const-string v0, "android.intent.extra.shortcut.ID"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "discussion_"

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xb

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 93
    invoke-direct {p0, v0, v1}, Lio/olvid/messenger/activities/ShareActivity;->proceed(J)V

    return-void

    :cond_b
    const p1, 0x7f090111

    .line 102
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v0, 0x7f090089

    .line 103
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    new-instance v1, Lio/olvid/messenger/activities/ShareActivity$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/activities/ShareActivity$1;-><init>(Lio/olvid/messenger/activities/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lio/olvid/messenger/activities/ShareActivity$2;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/activities/ShareActivity$2;-><init>(Lio/olvid/messenger/activities/ShareActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .line 43
    :cond_c
    :goto_3
    invoke-direct {p0}, Lio/olvid/messenger/activities/ShareActivity;->intentFail()V

    return-void
.end method
