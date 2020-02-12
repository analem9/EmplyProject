.class Lio/olvid/messenger/activities/DiscussionActivity$1;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$1;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 230
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$1;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$000(Lio/olvid/messenger/activities/DiscussionActivity;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$1;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$000(Lio/olvid/messenger/activities/DiscussionActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
