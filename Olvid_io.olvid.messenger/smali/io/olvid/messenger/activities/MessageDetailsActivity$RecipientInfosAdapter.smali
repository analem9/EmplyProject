.class public Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessageDetailsActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/MessageDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecipientInfosAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;",
        ">;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private messageRecipientInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;


# direct methods
.method public constructor <init>(Lio/olvid/messenger/activities/MessageDetailsActivity;Landroid/content/Context;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 421
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x1

    .line 422
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$200(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;)Ljava/util/List;
    .locals 0

    .line 416
    iget-object p0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->messageRecipientInfos:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 466
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->messageRecipientInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 433
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->messageRecipientInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 416
    check-cast p1, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->onBindViewHolder(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;I)V
    .locals 3

    .line 448
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->messageRecipientInfos:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    .line 452
    invoke-static {p1}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->access$000(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    invoke-static {v1}, Lio/olvid/messenger/AppSingleton;->getContactCustomDisplayName([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 454
    invoke-static {p1}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->access$100(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/olvid/messenger/App;->getLongNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 456
    invoke-static {p1}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->access$100(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/olvid/messenger/App;->getLongNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 457
    :cond_2
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 458
    invoke-static {p1}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->access$100(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/olvid/messenger/App;->getLongNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 460
    :cond_3
    invoke-static {p1}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->access$100(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f1001db

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 416
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;)V"
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->messageRecipientInfos:Ljava/util/List;

    .line 428
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 416
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;
    .locals 2

    .line 442
    iget-object p2, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0063

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 443
    new-instance p2, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;-><init>(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;Landroid/view/View;)V

    return-object p2
.end method
