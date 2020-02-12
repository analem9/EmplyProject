.class Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask$1;
.super Ljava/lang/Object;
.source "DraftAttachmentAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask;

.field final synthetic val$holder:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;


# direct methods
.method constructor <init>(Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask;Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask$1;->this$0:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask;

    iput-object p2, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask$1;->val$holder:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 398
    iget-object v0, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask$1;->val$holder:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;

    iget-object v0, v0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
