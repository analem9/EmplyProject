.class final Lio/olvid/messenger/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/App;->toast(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$gravity:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 297
    iput-object p1, p0, Lio/olvid/messenger/App$1;->val$message:Ljava/lang/String;

    iput p2, p0, Lio/olvid/messenger/App$1;->val$gravity:I

    iput p3, p0, Lio/olvid/messenger/App$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 300
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0c00b5

    const/4 v2, 0x0

    .line 304
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902b2

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 306
    iget-object v2, p0, Lio/olvid/messenger/App$1;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    new-instance v1, Landroid/widget/Toast;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 308
    iget v2, p0, Lio/olvid/messenger/App$1;->val$gravity:I

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v2, v2, 0x60

    div-int/lit16 v2, v2, 0xa0

    invoke-virtual {v1, v3, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {v1, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 319
    :goto_0
    iget v2, p0, Lio/olvid/messenger/App$1;->val$duration:I

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 320
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 321
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
