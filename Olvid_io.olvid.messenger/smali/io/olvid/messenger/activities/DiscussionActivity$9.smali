.class Lio/olvid/messenger/activities/DiscussionActivity$9;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 644
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$9;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 647
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$9;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$200(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->invalidate()V

    return-void
.end method
