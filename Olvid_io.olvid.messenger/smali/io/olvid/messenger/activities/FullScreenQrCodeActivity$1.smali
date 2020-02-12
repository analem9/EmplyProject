.class Lio/olvid/messenger/activities/FullScreenQrCodeActivity$1;
.super Ljava/lang/Object;
.source "FullScreenQrCodeActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->finisher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/FullScreenQrCodeActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/FullScreenQrCodeActivity;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity$1;->this$0:Lio/olvid/messenger/activities/FullScreenQrCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity$1;->this$0:Lio/olvid/messenger/activities/FullScreenQrCodeActivity;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->finish()V

    .line 191
    iget-object p1, p0, Lio/olvid/messenger/activities/FullScreenQrCodeActivity$1;->this$0:Lio/olvid/messenger/activities/FullScreenQrCodeActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
