.class Lio/olvid/messenger/activities/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/MainActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$6;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 370
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$6;->this$0:Lio/olvid/messenger/activities/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/olvid/messenger/activities/MainActivity;->access$602(Lio/olvid/messenger/activities/MainActivity;Z)Z

    .line 371
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$6;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/MainActivity;->access$000(Lio/olvid/messenger/activities/MainActivity;)V

    return-void
.end method
