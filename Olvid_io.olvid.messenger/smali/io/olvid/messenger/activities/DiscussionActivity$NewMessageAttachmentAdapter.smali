.class public Lio/olvid/messenger/activities/DiscussionActivity$NewMessageAttachmentAdapter;
.super Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;
.source "DiscussionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/DiscussionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewMessageAttachmentAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroid/content/Context;)V
    .locals 0

    .line 1650
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessageAttachmentAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    .line 1651
    invoke-direct {p0, p2}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1649
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$NewMessageAttachmentAdapter;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;)V"
        }
    .end annotation

    .line 1656
    invoke-super {p0, p1}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->onChanged(Ljava/util/List;)V

    .line 1657
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$NewMessageAttachmentAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2700(Lio/olvid/messenger/activities/DiscussionActivity;)V

    return-void
.end method
