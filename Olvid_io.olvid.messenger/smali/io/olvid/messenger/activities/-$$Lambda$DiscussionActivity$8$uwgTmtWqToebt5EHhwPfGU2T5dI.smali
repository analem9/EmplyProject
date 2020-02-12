.class public final synthetic Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$8$uwgTmtWqToebt5EHhwPfGU2T5dI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/olvid/messenger/activities/DiscussionActivity$8;

.field private final synthetic f$1:Lio/olvid/messenger/databases/entity/Discussion;


# direct methods
.method public synthetic constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$8;Lio/olvid/messenger/databases/entity/Discussion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$8$uwgTmtWqToebt5EHhwPfGU2T5dI;->f$0:Lio/olvid/messenger/activities/DiscussionActivity$8;

    iput-object p2, p0, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$8$uwgTmtWqToebt5EHhwPfGU2T5dI;->f$1:Lio/olvid/messenger/databases/entity/Discussion;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$8$uwgTmtWqToebt5EHhwPfGU2T5dI;->f$0:Lio/olvid/messenger/activities/DiscussionActivity$8;

    iget-object v1, p0, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$8$uwgTmtWqToebt5EHhwPfGU2T5dI;->f$1:Lio/olvid/messenger/databases/entity/Discussion;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity$8;->lambda$onChanged$2$DiscussionActivity$8(Lio/olvid/messenger/databases/entity/Discussion;)V

    return-void
.end method
