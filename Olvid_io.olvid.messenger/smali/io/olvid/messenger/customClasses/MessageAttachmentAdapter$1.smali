.class Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "MessageAttachmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;


# direct methods
.method constructor <init>(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$1;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    .line 87
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$1;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-static {v0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$000(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)I

    move-result v0

    const/4 v1, 0x2

    if-lt p1, v0, :cond_0

    return v1

    .line 90
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$1;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-static {v0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$000(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$1;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-static {v0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$000(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$1;->this$0:Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;

    invoke-static {p1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$000(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;)I

    move-result p1

    and-int/2addr p1, v2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method
