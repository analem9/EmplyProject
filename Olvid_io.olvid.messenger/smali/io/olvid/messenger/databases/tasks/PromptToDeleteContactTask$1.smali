.class Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;
.super Ljava/lang/Object;
.source "PromptToDeleteContactTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;

.field final synthetic val$contact:Lio/olvid/messenger/databases/entity/Contact;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;->this$0:Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;

    iput-object p2, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 44
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {p1, p2, v0}, Lio/olvid/engine/engine/Engine;->deleteContact([B[B)V

    const p1, 0x7f1001f0

    const/4 p2, 0x0

    .line 45
    invoke-static {p1, p2}, Lio/olvid/messenger/App;->toast(II)V

    .line 46
    iget-object p1, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;->this$0:Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;

    invoke-static {p1}, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->access$000(Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1$1;

    invoke-direct {p2, p0}, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1$1;-><init>(Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
