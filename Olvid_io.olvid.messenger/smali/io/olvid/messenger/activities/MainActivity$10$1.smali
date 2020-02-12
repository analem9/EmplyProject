.class Lio/olvid/messenger/activities/MainActivity$10$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MainActivity$10;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/MainActivity$10;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity$10;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$10$1;->this$1:Lio/olvid/messenger/activities/MainActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 501
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 502
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 503
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 504
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$10$1;->this$1:Lio/olvid/messenger/activities/MainActivity$10;

    iget-object v0, v0, Lio/olvid/messenger/activities/MainActivity$10;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 505
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 506
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$10$1;->this$1:Lio/olvid/messenger/activities/MainActivity$10;

    iget-object v0, v0, Lio/olvid/messenger/activities/MainActivity$10;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
