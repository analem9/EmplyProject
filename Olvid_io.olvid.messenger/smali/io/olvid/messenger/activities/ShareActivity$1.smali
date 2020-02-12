.class Lio/olvid/messenger/activities/ShareActivity$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/ShareActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ShareActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lio/olvid/messenger/activities/ShareActivity$1;->this$0:Lio/olvid/messenger/activities/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lio/olvid/messenger/activities/ShareActivity$1;->this$0:Lio/olvid/messenger/activities/ShareActivity;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/ShareActivity;->finish()V

    return-void
.end method
