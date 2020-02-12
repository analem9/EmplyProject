.class public Lio/olvid/messenger/activities/ObvLinkActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ObvLinkActivity.java"


# static fields
.field public static final API_KEY_PATTERN:Ljava/util/regex/Pattern;

.field public static final CONFIGURATION_PATTERN:Ljava/util/regex/Pattern;

.field public static final INVITATION_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(https|olvid)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://invitation.olvid.io"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/[#]?([-_a-zA-Z0-9]+)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/olvid/messenger/activities/ObvLinkActivity;->INVITATION_PATTERN:Ljava/util/regex/Pattern;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://configuration.olvid.io"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/olvid/messenger/activities/ObvLinkActivity;->CONFIGURATION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/olvid/messenger/activities/ObvLinkActivity;->API_KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 8

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f10020d

    const/4 v2, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 47
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x4b62d238    # 1.4864952E7f

    if-eq v6, v7, :cond_1

    const v7, 0x627c16f5

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "invitation.olvid.io"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const-string v6, "configuration.olvid.io"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_0
    if-eqz v5, :cond_4

    if-eq v5, v3, :cond_3

    goto :goto_1

    .line 56
    :cond_3
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getAvailableIdentities()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v4, Lio/olvid/messenger/activities/ObvLinkActivity$1;

    invoke-direct {v4, p0, p1}, Lio/olvid/messenger/activities/ObvLinkActivity$1;-><init>(Lio/olvid/messenger/activities/ObvLinkActivity;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    goto :goto_2

    .line 49
    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {v4, v1, p1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x24000000

    .line 50
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v4}, Lio/olvid/messenger/activities/ObvLinkActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    .line 91
    invoke-static {v0, v2}, Lio/olvid/messenger/App;->toast(II)V

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-static {v0, v2}, Lio/olvid/messenger/App;->toast(II)V

    .line 93
    throw p1

    .line 95
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ObvLinkActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ObvLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/ObvLinkActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 37
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/ObvLinkActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method
