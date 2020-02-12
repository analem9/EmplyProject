.class public Lio/olvid/engine/engine/types/ObvReturnReceipt;
.super Ljava/lang/Object;
.source "ObvReturnReceipt.java"


# instance fields
.field private final bytesContactIdentity:[B

.field private final status:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lio/olvid/engine/engine/types/ObvReturnReceipt;->bytesContactIdentity:[B

    .line 9
    iput p2, p0, Lio/olvid/engine/engine/types/ObvReturnReceipt;->status:I

    return-void
.end method


# virtual methods
.method public getBytesContactIdentity()[B
    .locals 1

    .line 13
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvReturnReceipt;->bytesContactIdentity:[B

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 17
    iget v0, p0, Lio/olvid/engine/engine/types/ObvReturnReceipt;->status:I

    return v0
.end method
