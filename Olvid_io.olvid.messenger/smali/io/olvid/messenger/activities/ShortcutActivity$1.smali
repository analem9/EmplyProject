.class Lio/olvid/messenger/activities/ShortcutActivity$1;
.super Ljava/lang/Object;
.source "ShortcutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ShortcutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/ShortcutActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ShortcutActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lio/olvid/messenger/activities/ShortcutActivity$1;->this$0:Lio/olvid/messenger/activities/ShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lio/olvid/messenger/activities/ShortcutActivity$1;->this$0:Lio/olvid/messenger/activities/ShortcutActivity;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/ShortcutActivity;->finish()V

    return-void
.end method
