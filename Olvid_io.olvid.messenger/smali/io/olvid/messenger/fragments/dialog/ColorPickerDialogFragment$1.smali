.class Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;
.super Ljava/lang/Object;
.source "ColorPickerDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 68
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$000(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;->get(J)Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {v0, v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$102(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 71
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {v0, v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$202(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Float;)Ljava/lang/Float;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->getColorJson()Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    move-result-object v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {v0, v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$102(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 76
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {v0, v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$202(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Float;)Ljava/lang/Float;

    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$102(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 79
    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$202(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Float;)Ljava/lang/Float;

    .line 82
    :goto_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$302(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Z)Z

    .line 83
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$100(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {v2}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$200(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$400(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Integer;Ljava/lang/Float;)V

    return-void
.end method
