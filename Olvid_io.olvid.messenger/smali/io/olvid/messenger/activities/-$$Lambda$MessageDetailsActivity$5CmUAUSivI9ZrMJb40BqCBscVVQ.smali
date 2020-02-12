.class public final synthetic Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$5CmUAUSivI9ZrMJb40BqCBscVVQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

.field private final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lio/olvid/messenger/activities/MessageDetailsActivity;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$5CmUAUSivI9ZrMJb40BqCBscVVQ;->f$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$5CmUAUSivI9ZrMJb40BqCBscVVQ;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$5CmUAUSivI9ZrMJb40BqCBscVVQ;->f$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object v1, p0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$5CmUAUSivI9ZrMJb40BqCBscVVQ;->f$1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->lambda$recomputeMessageLayout$1$MessageDetailsActivity(Landroid/graphics/Rect;)V

    return-void
.end method
