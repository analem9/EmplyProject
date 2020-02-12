.class Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask$2;
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

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$holder:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;


# direct methods
.method constructor <init>(Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask;Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask$2;->this$0:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask;

    iput-object p2, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask$2;->val$holder:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;

    iput-object p3, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 405
    iget-object v0, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask$2;->val$holder:Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;

    iget-object v0, v0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentViewHolder;->attachmentImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$ShowPreviewTask$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
