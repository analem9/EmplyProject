.class Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$5;
.super Ljava/lang/Object;
.source "ColorPickerDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

.field final synthetic val$colorJson:Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$5;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    iput-object p2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$5;->val$colorJson:Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 373
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$5;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$000(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;->get(J)Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    :try_start_0
    new-instance v1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    iget-object v2, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$5;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {v2}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$000(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :try_start_1
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$5;->val$colorJson:Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    invoke-virtual {v1, v0}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->setColorJson(Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 379
    :catch_1
    :goto_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;->insert(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)J

    goto :goto_1

    .line 382
    :cond_0
    :try_start_2
    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$5;->val$colorJson:Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->setColorJson(Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;)V

    .line 383
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;->update(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_1
    return-void
.end method
