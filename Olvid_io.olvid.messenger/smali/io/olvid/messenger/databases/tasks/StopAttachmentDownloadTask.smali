.class public Lio/olvid/messenger/databases/tasks/StopAttachmentDownloadTask;
.super Ljava/lang/Object;
.source "StopAttachmentDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;


# direct methods
.method public constructor <init>(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/StopAttachmentDownloadTask;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 16
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/StopAttachmentDownloadTask;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/StopAttachmentDownloadTask;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/olvid/engine/engine/Engine;->pauseAttachmentDownload([BI)V

    .line 17
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/StopAttachmentDownloadTask;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-wide v1, v1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fyleId:J

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/StopAttachmentDownloadTask;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-wide v3, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->messageId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->get(JJ)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object v0

    const/4 v1, 0x0

    .line 18
    iput v1, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    .line 19
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    return-void
.end method
