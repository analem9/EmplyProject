.class Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;
.super Ljava/lang/Object;
.source "DownloadAttachmentCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachmentPriorityInfo"
.end annotation


# instance fields
.field private final attachmentNumber:I

.field private final initialPriority:J

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final priorityCategory:I

.field final synthetic this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IIJ)V
    .locals 0

    .line 268
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->this$0:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 270
    iput p3, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->attachmentNumber:I

    .line 271
    iput p4, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->priorityCategory:I

    .line 272
    iput-wide p5, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->initialPriority:J

    return-void
.end method


# virtual methods
.method public getAttachmentNumber()I
    .locals 1

    .line 280
    iget v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->attachmentNumber:I

    return v0
.end method

.method public getInitialPriority()J
    .locals 2

    .line 288
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->initialPriority:J

    return-wide v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 276
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getPriorityCategory()I
    .locals 1

    .line 284
    iget v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;->priorityCategory:I

    return v0
.end method
