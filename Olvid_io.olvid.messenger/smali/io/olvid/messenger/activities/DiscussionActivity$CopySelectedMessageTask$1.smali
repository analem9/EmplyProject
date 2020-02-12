.class Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask$1;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;

.field final synthetic val$activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic val$clipData:Landroid/content/ClipData;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;Landroidx/appcompat/app/AppCompatActivity;Landroid/content/ClipData;)V
    .locals 0

    .line 2780
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask$1;->this$0:Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask$1;->val$clipData:Landroid/content/ClipData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2783
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 2785
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask$1;->val$clipData:Landroid/content/ClipData;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const v0, 0x7f100202

    const/4 v1, 0x0

    .line 2786
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    :cond_0
    return-void
.end method
