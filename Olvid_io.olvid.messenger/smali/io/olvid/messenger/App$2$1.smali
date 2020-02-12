.class Lio/olvid/messenger/App$2$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/App$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/App$2;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$size:I

.field final synthetic val$smallQrCodeBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lio/olvid/messenger/App$2;Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 479
    iput-object p1, p0, Lio/olvid/messenger/App$2$1;->this$0:Lio/olvid/messenger/App$2;

    iput-object p2, p0, Lio/olvid/messenger/App$2$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lio/olvid/messenger/App$2$1;->val$smallQrCodeBitmap:Landroid/graphics/Bitmap;

    iput p4, p0, Lio/olvid/messenger/App$2$1;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 482
    iget-object v0, p0, Lio/olvid/messenger/App$2$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/olvid/messenger/App$2$1;->val$smallQrCodeBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lio/olvid/messenger/App$2$1;->val$size:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
