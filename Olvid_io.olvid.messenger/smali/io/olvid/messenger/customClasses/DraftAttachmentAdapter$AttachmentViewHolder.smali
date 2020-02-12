.class public Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DraftAttachmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttachmentViewHolder"
.end annotation


# instance fields
.field final attachmentDeleteImageView:Landroid/widget/ImageView;

.field final attachmentDeleteSpacer:Landroid/view/View;

.field final attachmentFileName:Landroid/widget/TextView;

.field final attachmentImageView:Landroid/widget/ImageView;

.field final attachmentMimeType:Landroid/widget/TextView;

.field final attachmentProgress:Landroid/widget/ProgressBar;

.field final attachmentProgressLabel:Landroid/widget/TextView;

.field final attachmentStatusIconImageView:Landroid/widget/ImageView;

.field fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

.field final synthetic this$0:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;


# direct methods
.method constructor <init>(Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;Landroid/view/View;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->this$0:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;

    .line 216
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090070

    .line 217
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    const p1, 0x7f090075

    .line 218
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentStatusIconImageView:Landroid/widget/ImageView;

    const p1, 0x7f09006d

    .line 219
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteImageView:Landroid/widget/ImageView;

    const p1, 0x7f09006e

    .line 220
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteSpacer:Landroid/view/View;

    const p1, 0x7f090073

    .line 221
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgress:Landroid/widget/ProgressBar;

    const p1, 0x7f090074

    .line 222
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentProgressLabel:Landroid/widget/TextView;

    const p1, 0x7f09006f

    .line 223
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentFileName:Landroid/widget/TextView;

    const p1, 0x7f090071

    .line 224
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentMimeType:Landroid/widget/TextView;

    .line 225
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentDeleteImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->this$0:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;

    iget-object v0, v0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->attachmentFyles:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09006d

    if-eq p1, v0, :cond_0

    .line 238
    iget-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->this$0:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;

    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-static {p1, v0}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->access$100(Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;I)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->this$0:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;

    invoke-virtual {p0}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-static {p1, v0}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;->access$000(Lio/olvid/messenger/customClasses/DraftAttachmentAdapter;I)V

    :cond_1
    :goto_0
    return-void
.end method
