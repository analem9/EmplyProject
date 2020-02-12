.class Lio/olvid/messenger/activities/DiscussionActivity$7$1$1;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$7$1;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/olvid/messenger/activities/DiscussionActivity$7$1;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$7$1;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$7$1$1;->this$2:Lio/olvid/messenger/activities/DiscussionActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 561
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$7$1$1;->this$2:Lio/olvid/messenger/activities/DiscussionActivity$7$1;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$7$1;->val$animated:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    return-void
.end method
