.class Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$3;
.super Ljava/lang/Object;
.source "PromptToDeleteContactTask.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$builder:Landroidx/appcompat/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$3;->this$0:Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;

    iput-object p2, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$3;->val$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 81
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$3;->val$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
