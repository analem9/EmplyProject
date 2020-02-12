.class Lio/olvid/messenger/AnonymousUsageService$LogItem;
.super Ljava/lang/Object;
.source "AnonymousUsageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/AnonymousUsageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogItem"
.end annotation


# instance fields
.field extraCount:Ljava/lang/Integer;

.field identityBytes:[B

.field public timestamp:J

.field public type:I


# direct methods
.method constructor <init>([BJILjava/lang/Integer;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lio/olvid/messenger/AnonymousUsageService$LogItem;->identityBytes:[B

    .line 268
    iput-wide p2, p0, Lio/olvid/messenger/AnonymousUsageService$LogItem;->timestamp:J

    .line 269
    iput p4, p0, Lio/olvid/messenger/AnonymousUsageService$LogItem;->type:I

    .line 270
    iput-object p5, p0, Lio/olvid/messenger/AnonymousUsageService$LogItem;->extraCount:Ljava/lang/Integer;

    return-void
.end method
