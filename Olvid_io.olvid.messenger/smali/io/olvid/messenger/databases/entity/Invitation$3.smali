.class Lio/olvid/messenger/databases/entity/Invitation$3;
.super Ljava/lang/Object;
.source "Invitation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/entity/Invitation;->displayStatusDescriptionTextAsync(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/entity/Invitation;

.field final synthetic val$textViewWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/entity/Invitation;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Invitation$3;->this$0:Lio/olvid/messenger/databases/entity/Invitation;

    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Invitation$3;->val$textViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 228
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Invitation$3;->this$0:Lio/olvid/messenger/databases/entity/Invitation;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog;->getBytesOwnedIdentity()[B

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/databases/entity/Invitation$3;->this$0:Lio/olvid/messenger/databases/entity/Invitation;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesMediatorOrGroupOwnerIdentity()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Invitation$3;->val$textViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 232
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/databases/entity/Invitation$3;->this$0:Lio/olvid/messenger/databases/entity/Invitation;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 233
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lio/olvid/messenger/databases/entity/Invitation$3$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lio/olvid/messenger/databases/entity/Invitation$3$1;-><init>(Lio/olvid/messenger/databases/entity/Invitation$3;Lio/olvid/messenger/databases/entity/Contact;Landroid/widget/TextView;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
