.class public final synthetic Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$1$BsGb_1JC3eTzD43jZGXznwN97GI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/olvid/messenger/activities/MessageDetailsActivity$1;

.field private final synthetic f$1:Lio/olvid/messenger/databases/entity/DiscussionCustomization;


# direct methods
.method public synthetic constructor <init>(Lio/olvid/messenger/activities/MessageDetailsActivity$1;Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$1$BsGb_1JC3eTzD43jZGXznwN97GI;->f$0:Lio/olvid/messenger/activities/MessageDetailsActivity$1;

    iput-object p2, p0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$1$BsGb_1JC3eTzD43jZGXznwN97GI;->f$1:Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$1$BsGb_1JC3eTzD43jZGXznwN97GI;->f$0:Lio/olvid/messenger/activities/MessageDetailsActivity$1;

    iget-object v1, p0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$1$BsGb_1JC3eTzD43jZGXznwN97GI;->f$1:Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/MessageDetailsActivity$1;->lambda$onChanged$1$MessageDetailsActivity$1(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    return-void
.end method
