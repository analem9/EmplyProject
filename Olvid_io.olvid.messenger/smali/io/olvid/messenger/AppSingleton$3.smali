.class Lio/olvid/messenger/AppSingleton$3;
.super Ljava/lang/Object;
.source "AppSingleton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/AppSingleton;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/AppSingleton;

.field final synthetic val$currentIdentityObserverForNameCache:Landroidx/lifecycle/Observer;


# direct methods
.method constructor <init>(Lio/olvid/messenger/AppSingleton;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lio/olvid/messenger/AppSingleton$3;->this$0:Lio/olvid/messenger/AppSingleton;

    iput-object p2, p0, Lio/olvid/messenger/AppSingleton$3;->val$currentIdentityObserverForNameCache:Landroidx/lifecycle/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    iget-object v0, p0, Lio/olvid/messenger/AppSingleton$3;->this$0:Lio/olvid/messenger/AppSingleton;

    invoke-static {v0}, Lio/olvid/messenger/AppSingleton;->access$200(Lio/olvid/messenger/AppSingleton;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/AppSingleton$3;->this$0:Lio/olvid/messenger/AppSingleton;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 115
    iget-object v0, p0, Lio/olvid/messenger/AppSingleton$3;->this$0:Lio/olvid/messenger/AppSingleton;

    invoke-static {v0}, Lio/olvid/messenger/AppSingleton;->access$300(Lio/olvid/messenger/AppSingleton;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/AppSingleton$3;->val$currentIdentityObserverForNameCache:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method
