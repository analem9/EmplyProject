.class Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MessageDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private final recipientInfoTimestampTextView:Landroid/widget/TextView;

.field private final recipientNameTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;


# direct methods
.method public constructor <init>(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;Landroid/view/View;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    .line 477
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09023f

    .line 478
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->recipientNameTextView:Landroid/widget/TextView;

    const p1, 0x7f09023d

    .line 479
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->recipientInfoTimestampTextView:Landroid/widget/TextView;

    .line 480
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 472
    iget-object p0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->recipientNameTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 472
    iget-object p0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->recipientInfoTimestampTextView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 485
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->getLayoutPosition()I

    move-result p1

    .line 486
    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    invoke-static {v0}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->access$200(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    iget-object v1, v1, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    const v2, 0x7f1001cb

    invoke-virtual {v1, v2}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HH:mm:ss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    invoke-static {v1}, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->access$200(Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    .line 490
    iget-object v1, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    iget-object v1, v1, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    const v2, 0x7f1001db

    invoke-virtual {v1, v2}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 491
    iget-object v2, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v1

    .line 492
    :goto_1
    iget-object v5, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_3
    :goto_2
    move-object v5, v1

    .line 493
    :goto_3
    iget-object v6, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    if-eqz v6, :cond_5

    iget-object v6, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    iget-object p1, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 495
    :cond_5
    :goto_4
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    const v3, 0x7f1100e9

    invoke-direct {p1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->recipientNameTextView:Landroid/widget/TextView;

    .line 496
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter$ViewHolder;->this$1:Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;

    iget-object v0, v0, Lio/olvid/messenger/activities/MessageDetailsActivity$RecipientInfosAdapter;->this$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    const v3, 0x7f100080

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v4, v6

    const/4 v2, 0x1

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object v1, v4, v2

    .line 497
    invoke-virtual {v0, v3, v4}, Lio/olvid/messenger/activities/MessageDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10003d

    const/4 v1, 0x0

    .line 498
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 499
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_6
    return-void
.end method
