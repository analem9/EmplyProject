.class Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MessageAttachmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttachmentViewHolder"
.end annotation


# instance fields
.field final attachmentFileName:Landroid/widget/TextView;

.field final attachmentImageView:Landroid/widget/ImageView;

.field final attachmentMimeType:Landroid/widget/TextView;

.field final attachmentOverlay:Landroid/widget/ImageView;

.field final attachmentProgress:Landroid/widget/ProgressBar;

.field final attachmentProgressLabel:Landroid/widget/TextView;

.field final attachmentStatusIconImageView:Landroid/widget/ImageView;

.field fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

.field final rootView:Landroid/view/View;

.field final synthetic this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

.field final type:I


# direct methods
.method constructor <init>(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;Landroid/view/View;I)V
    .locals 0

    .line 480
    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    .line 481
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 482
    iput-object p2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->rootView:Landroid/view/View;

    .line 483
    iput p3, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->type:I

    const p1, 0x7f090070

    .line 484
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    const p1, 0x7f090075

    .line 485
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    const p1, 0x7f090073

    .line 486
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    const p1, 0x7f090074

    .line 487
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    const p1, 0x7f09006f

    .line 488
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentFileName:Landroid/widget/TextView;

    const p1, 0x7f090071

    .line 489
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentMimeType:Landroid/widget/TextView;

    const p1, 0x7f090072

    .line 490
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->attachmentOverlay:Landroid/widget/ImageView;

    .line 491
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 493
    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 498
    iget-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-static {p1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$100(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 499
    iget-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-static {p1, v0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$200(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;I)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 505
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-static {v0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$100(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)[Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->attachmentLongClicked(ILandroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
