.class Lio/olvid/messenger/activities/MainActivity$13$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MainActivity$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/MainActivity$13;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity$13;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$13$1;->this$1:Lio/olvid/messenger/activities/MainActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 714
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$13$1;->this$1:Lio/olvid/messenger/activities/MainActivity$13;

    iget-object v0, v0, Lio/olvid/messenger/activities/MainActivity$13;->val$ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;

    const/4 v1, 0x0

    iput v1, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->apiKeyStatus:I

    .line 715
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/MainActivity$13$1;->this$1:Lio/olvid/messenger/activities/MainActivity$13;

    iget-object v1, v1, Lio/olvid/messenger/activities/MainActivity$13;->val$ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->update(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method
