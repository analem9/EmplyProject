.class public final synthetic Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$7S5qCFIm-sXi9P27VnHvmDw-W0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/olvid/messenger/databases/entity/Discussion;

.field private final synthetic f$1:Lio/olvid/messenger/databases/AppDatabase;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/AppDatabase;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$7S5qCFIm-sXi9P27VnHvmDw-W0E;->f$0:Lio/olvid/messenger/databases/entity/Discussion;

    iput-object p2, p0, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$7S5qCFIm-sXi9P27VnHvmDw-W0E;->f$1:Lio/olvid/messenger/databases/AppDatabase;

    iput-object p3, p0, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$7S5qCFIm-sXi9P27VnHvmDw-W0E;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$7S5qCFIm-sXi9P27VnHvmDw-W0E;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$7S5qCFIm-sXi9P27VnHvmDw-W0E;->f$0:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v1, p0, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$7S5qCFIm-sXi9P27VnHvmDw-W0E;->f$1:Lio/olvid/messenger/databases/AppDatabase;

    iget-object v2, p0, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$7S5qCFIm-sXi9P27VnHvmDw-W0E;->f$2:Ljava/lang/String;

    iget-wide v3, p0, Lio/olvid/messenger/activities/-$$Lambda$NotificationActionService$7S5qCFIm-sXi9P27VnHvmDw-W0E;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lio/olvid/messenger/activities/NotificationActionService;->lambda$onHandleIntent$0(Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/AppDatabase;Ljava/lang/String;J)V

    return-void
.end method
