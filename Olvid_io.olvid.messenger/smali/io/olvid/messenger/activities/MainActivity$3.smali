.class Lio/olvid/messenger/activities/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/MainActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$3;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/olvid/messenger/databases/entity/OwnedIdentity;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 200
    :cond_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-interface {v0, p1}, Lio/olvid/messenger/databases/dao/MessageDao;->hasUnreadMessages([B)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 194
    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MainActivity$3;->apply(Lio/olvid/messenger/databases/entity/OwnedIdentity;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
