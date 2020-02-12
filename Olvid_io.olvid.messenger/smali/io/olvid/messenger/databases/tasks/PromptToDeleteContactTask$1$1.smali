.class Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1$1;
.super Ljava/lang/Object;
.source "PromptToDeleteContactTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1$1;->this$1:Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 50
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1$1;->this$1:Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;

    iget-object v0, v0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;->this$0:Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;

    invoke-static {v0}, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->access$000(Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
