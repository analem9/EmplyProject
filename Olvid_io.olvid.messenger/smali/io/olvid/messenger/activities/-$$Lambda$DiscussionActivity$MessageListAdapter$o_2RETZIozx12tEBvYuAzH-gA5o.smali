.class public final synthetic Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$MessageListAdapter$o_2RETZIozx12tEBvYuAzH-gA5o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

.field private final synthetic f$1:Lio/olvid/messenger/databases/entity/Message;


# direct methods
.method public synthetic constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Lio/olvid/messenger/databases/entity/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$MessageListAdapter$o_2RETZIozx12tEBvYuAzH-gA5o;->f$0:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$MessageListAdapter$o_2RETZIozx12tEBvYuAzH-gA5o;->f$1:Lio/olvid/messenger/databases/entity/Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$MessageListAdapter$o_2RETZIozx12tEBvYuAzH-gA5o;->f$0:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v1, p0, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$MessageListAdapter$o_2RETZIozx12tEBvYuAzH-gA5o;->f$1:Lio/olvid/messenger/databases/entity/Message;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->lambda$onBindViewHolder$0$DiscussionActivity$MessageListAdapter(Lio/olvid/messenger/databases/entity/Message;)V

    return-void
.end method
