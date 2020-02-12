.class public Lio/olvid/engine/engine/types/ObvOutboundAttachment;
.super Ljava/lang/Object;
.source "ObvOutboundAttachment.java"


# instance fields
.field private final attachmentLength:J

.field private final metadata:[B

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J[B)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lio/olvid/engine/engine/types/ObvOutboundAttachment;->path:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lio/olvid/engine/engine/types/ObvOutboundAttachment;->attachmentLength:J

    .line 11
    iput-object p4, p0, Lio/olvid/engine/engine/types/ObvOutboundAttachment;->metadata:[B

    return-void
.end method


# virtual methods
.method public getAttachmentLength()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lio/olvid/engine/engine/types/ObvOutboundAttachment;->attachmentLength:J

    return-wide v0
.end method

.method public getMetadata()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvOutboundAttachment;->metadata:[B

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvOutboundAttachment;->path:Ljava/lang/String;

    return-object v0
.end method
