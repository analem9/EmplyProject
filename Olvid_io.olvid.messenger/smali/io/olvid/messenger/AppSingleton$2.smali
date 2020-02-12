.class Lio/olvid/messenger/AppSingleton$2;
.super Ljava/lang/Object;
.source "AppSingleton.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/AppSingleton;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/AppSingleton;


# direct methods
.method constructor <init>(Lio/olvid/messenger/AppSingleton;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lio/olvid/messenger/AppSingleton$2;->this$0:Lio/olvid/messenger/AppSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChanged$0$AppSingleton$2(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 5

    .line 100
    iget-object v0, p0, Lio/olvid/messenger/AppSingleton$2;->this$0:Lio/olvid/messenger/AppSingleton;

    invoke-static {v0}, Lio/olvid/messenger/AppSingleton;->access$000(Lio/olvid/messenger/AppSingleton;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v0

    iget-object v1, p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->getAllForOwnedIdentitySync([B)Ljava/util/List;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/entity/Contact;

    .line 103
    new-instance v3, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v4, v2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-direct {v3, v4}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-direct {v0, p1}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f1001e5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p1, p0, Lio/olvid/messenger/AppSingleton$2;->this$0:Lio/olvid/messenger/AppSingleton;

    invoke-static {p1}, Lio/olvid/messenger/AppSingleton;->access$100(Lio/olvid/messenger/AppSingleton;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 1

    .line 99
    new-instance v0, Lio/olvid/messenger/-$$Lambda$AppSingleton$2$l4HHCBmLkEbDnwtIj4OTFZseV0o;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/-$$Lambda$AppSingleton$2$l4HHCBmLkEbDnwtIj4OTFZseV0o;-><init>(Lio/olvid/messenger/AppSingleton$2;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/AppSingleton$2;->onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method
