.class Lio/olvid/messenger/JobSchedulerService$1;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/JobSchedulerService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/JobSchedulerService;

.field final synthetic val$jobParameters:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lio/olvid/messenger/JobSchedulerService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lio/olvid/messenger/JobSchedulerService$1;->this$0:Lio/olvid/messenger/JobSchedulerService;

    iput-object p2, p0, Lio/olvid/messenger/JobSchedulerService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x7d0

    .line 26
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    iget-object v0, p0, Lio/olvid/messenger/JobSchedulerService$1;->this$0:Lio/olvid/messenger/JobSchedulerService;

    iget-object v1, p0, Lio/olvid/messenger/JobSchedulerService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/olvid/messenger/JobSchedulerService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
