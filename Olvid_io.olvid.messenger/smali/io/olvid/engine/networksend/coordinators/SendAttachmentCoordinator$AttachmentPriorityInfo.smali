.class Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;
.super Ljava/lang/Object;
.source "SendAttachmentCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachmentPriorityInfo"
.end annotation


# instance fields
.field private final attachmentNumber:I

.field private final initialPriority:J

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field final synthetic this$0:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IJ)V
    .locals 0

    .line 217
    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;->this$0:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 219
    iput p3, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;->attachmentNumber:I

    .line 220
    iput-wide p4, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;->initialPriority:J

    return-void
.end method


# virtual methods
.method public getAttachmentNumber()I
    .locals 1

    .line 228
    iget v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;->attachmentNumber:I

    return v0
.end method

.method public getInitialPriority()J
    .locals 2

    .line 232
    iget-wide v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;->initialPriority:J

    return-wide v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 224
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method
