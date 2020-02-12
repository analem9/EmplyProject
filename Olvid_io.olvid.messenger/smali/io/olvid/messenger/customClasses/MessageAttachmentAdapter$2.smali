.class Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "MessageAttachmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->onChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field newArray:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

.field oldArray:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

.field payloadCache:[I

.field payloadComputed:[Z

.field final synthetic this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

.field final synthetic val$finalAttachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

.field final synthetic val$orderedFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;


# direct methods
.method constructor <init>(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    iput-object p2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->val$orderedFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iput-object p3, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->val$finalAttachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 368
    iget-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->val$orderedFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->payloadCache:[I

    .line 369
    iget-object p2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->payloadCache:[I

    array-length p2, p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->payloadComputed:[Z

    .line 371
    iget-object p2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->val$finalAttachmentFyles:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iput-object p2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->oldArray:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 372
    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->newArray:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0

    .line 391
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->getChangePayload(II)Ljava/lang/Object;

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
    .locals 3

    .line 386
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->oldArray:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    aget-object p1, v0, p1

    iget-object p1, p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-wide v0, p1, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    iget-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->newArray:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    aget-object p1, p1, p2

    iget-object p1, p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-wide p1, p1, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 6

    .line 396
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->payloadComputed:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    .line 397
    iget-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->payloadCache:[I

    aget p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 400
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->oldArray:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    aget-object v0, v0, p1

    .line 401
    iget-object v1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->newArray:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    .line 404
    iget-object v3, v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget v3, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    iget-object v4, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget v4, v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    .line 414
    :cond_1
    iget-object v0, v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget v0, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    iget-object v1, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget v1, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    or-int/lit8 v2, v2, 0x2

    .line 418
    :cond_2
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->oldArray:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    array-length v0, v0

    iget-object v1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->newArray:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    array-length v1, v1

    if-ne v0, v1, :cond_3

    if-eq p1, p2, :cond_4

    :cond_3
    or-int/lit8 v2, v2, 0x4

    .line 422
    :cond_4
    iget-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->payloadCache:[I

    aput v2, p1, p2

    .line 423
    iget-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->payloadComputed:[Z

    aput-boolean v5, p1, p2

    .line 424
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 381
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->newArray:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    array-length v0, v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 376
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$2;->oldArray:[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    array-length v0, v0

    return v0
.end method
