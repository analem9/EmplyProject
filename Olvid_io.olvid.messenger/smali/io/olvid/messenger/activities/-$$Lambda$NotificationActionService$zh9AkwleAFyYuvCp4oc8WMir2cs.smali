.class public final synthetic Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$zh9AkwleAFyYuvCp4oc8WMir2cs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(JLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$zh9AkwleAFyYuvCp4oc8WMir2cs;->f$0:J

    iput-object p3, p0, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$zh9AkwleAFyYuvCp4oc8WMir2cs;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$zh9AkwleAFyYuvCp4oc8WMir2cs;->f$0:J

    iget-object v2, p0, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$zh9AkwleAFyYuvCp4oc8WMir2cs;->f$1:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lio/olvid/messenger/activities/NotificationActionService;->lambda$markAllDiscussionMessagesRead$1(JLjava/util/List;)V

    return-void
.end method
