.class Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$2;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->highlightView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

.field final synthetic val$rippleDrawable:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0

    .line 1803
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$2;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$2;->val$rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1806
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$2;->val$rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    return-void
.end method
