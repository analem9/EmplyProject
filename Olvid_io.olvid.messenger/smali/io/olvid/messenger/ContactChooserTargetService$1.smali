.class final Lio/olvid/messenger/ContactChooserTargetService$1;
.super Ljava/lang/Object;
.source "ContactChooserTargetService.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/ContactChooserTargetService;->lambda$startPublishingShareTargets$0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/Discussion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lio/olvid/messenger/ContactChooserTargetService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/ContactChooserTargetService$1;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/Discussion;

    .line 54
    invoke-static {}, Lio/olvid/messenger/ContactChooserTargetService;->access$000()I

    move-result v5

    if-lt v2, v5, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    invoke-static {}, Lio/olvid/messenger/ContactChooserTargetService;->access$100()[Ljava/lang/Long;

    move-result-object v5

    aget-object v5, v5, v2

    if-eqz v5, :cond_3

    invoke-static {}, Lio/olvid/messenger/ContactChooserTargetService;->access$100()[Ljava/lang/Long;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v3, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 62
    invoke-static {}, Lio/olvid/messenger/ContactChooserTargetService;->access$000()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 66
    invoke-static {}, Lio/olvid/messenger/ContactChooserTargetService;->access$000()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-static {}, Lio/olvid/messenger/ContactChooserTargetService;->access$100()[Ljava/lang/Long;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 70
    iget-object v0, p0, Lio/olvid/messenger/ContactChooserTargetService$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/olvid/messenger/ContactChooserTargetService;->access$200(Landroid/content/Context;Ljava/util/List;)V

    :cond_6
    return-void
.end method
