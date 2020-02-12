.class Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "DiscussionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->onChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end field

.field oldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end field

.field payloadCache:[I

.field payloadComputed:[Z

.field final synthetic this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Ljava/util/List;)V
    .locals 0

    .line 1828
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->val$messages:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 1829
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->val$messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->payloadCache:[I

    .line 1830
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->payloadCache:[I

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->payloadComputed:[Z

    .line 1832
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->oldList:Ljava/util/List;

    .line 1833
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->val$messages:Ljava/util/List;

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->newList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0

    .line 1858
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->getChangePayload(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    return v0

    .line 1853
    :cond_2
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->oldList:Ljava/util/List;

    sub-int/2addr p1, v1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v2, p1, Lio/olvid/messenger/databases/entity/Message;->id:J

    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->newList:Ljava/util/List;

    sub-int/2addr p2, v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Message;

    iget-wide p1, p1, Lio/olvid/messenger/databases/entity/Message;->id:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1864
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    .line 1868
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->payloadComputed:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_1

    .line 1869
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->payloadCache:[I

    aget p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1872
    :cond_1
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->oldList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/Message;

    .line 1873
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->newList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/entity/Message;

    .line 1876
    iget v3, v1, Lio/olvid/messenger/databases/entity/Message;->status:I

    iget v4, v2, Lio/olvid/messenger/databases/entity/Message;->status:I

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    iget v3, v1, Lio/olvid/messenger/databases/entity/Message;->status:I

    if-nez v3, :cond_2

    iget v3, v2, Lio/olvid/messenger/databases/entity/Message;->status:I

    if-eq v3, v5, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 1880
    :goto_0
    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {v4}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$2800(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {v4}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$2800(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v4

    iget-wide v6, v1, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    iget-object v6, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {v6}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$2800(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v6

    iget-wide v7, v2, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v4, v6

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x2

    :cond_4
    if-eqz p1, :cond_6

    .line 1889
    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v4, v4, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iget-wide v6, v1, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    iget-object v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->oldList:Ljava/util/List;

    sub-int/2addr p1, v5

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v8, p1, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    invoke-virtual {v4, v6, v7, v8, v9}, Lio/olvid/messenger/activities/DiscussionActivity;->notTheSameDay(JJ)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p2, :cond_7

    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v4, v4, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iget-wide v6, v2, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    iget-object v8, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->newList:Ljava/util/List;

    add-int/lit8 v9, p2, -0x1

    .line 1890
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/olvid/messenger/databases/entity/Message;

    iget-wide v8, v8, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    invoke-virtual {v4, v6, v7, v8, v9}, Lio/olvid/messenger/activities/DiscussionActivity;->notTheSameDay(JJ)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    xor-int/2addr p1, v0

    if-eqz p1, :cond_9

    or-int/lit8 v3, v3, 0x8

    .line 1894
    :cond_9
    iget p1, v1, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    iget v0, v2, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    if-ne p1, v0, :cond_a

    iget p1, v1, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    iget v0, v2, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    if-eq p1, v0, :cond_b

    :cond_a
    or-int/lit8 v3, v3, 0x40

    .line 1899
    :cond_b
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->payloadCache:[I

    aput v3, p1, p2

    .line 1900
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->payloadComputed:[Z

    aput-boolean v5, p1, p2

    .line 1901
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 1842
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->newList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 1837
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$3;->oldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
