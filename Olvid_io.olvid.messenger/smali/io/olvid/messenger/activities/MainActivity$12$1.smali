.class Lio/olvid/messenger/activities/MainActivity$12$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MainActivity$12;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/MainActivity$12;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity$12;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$12$1;->this$1:Lio/olvid/messenger/activities/MainActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 546
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    .line 547
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 548
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 549
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$12$1;->this$1:Lio/olvid/messenger/activities/MainActivity$12;

    iget-object v0, v0, Lio/olvid/messenger/activities/MainActivity$12;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
