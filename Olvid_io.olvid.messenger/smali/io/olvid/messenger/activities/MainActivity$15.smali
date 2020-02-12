.class Lio/olvid/messenger/activities/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MainActivity;->processQRCodeData(Landroid/net/Uri;)V
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

    .line 770
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$15;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 773
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$15;->this$0:Lio/olvid/messenger/activities/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/olvid/messenger/activities/MainActivity;->access$802(Lio/olvid/messenger/activities/MainActivity;Z)Z

    return-void
.end method
