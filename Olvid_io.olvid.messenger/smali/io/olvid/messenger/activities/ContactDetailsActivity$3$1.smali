.class Lio/olvid/messenger/activities/ContactDetailsActivity$3$1;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity$3;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/ContactDetailsActivity$3;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ContactDetailsActivity$3;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$3$1;->this$1:Lio/olvid/messenger/activities/ContactDetailsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 250
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$3$1;->this$1:Lio/olvid/messenger/activities/ContactDetailsActivity$3;

    iget-object v0, v0, Lio/olvid/messenger/activities/ContactDetailsActivity$3;->val$animated:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    return-void
.end method
