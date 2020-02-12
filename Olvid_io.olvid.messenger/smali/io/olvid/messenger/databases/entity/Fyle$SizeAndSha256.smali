.class public Lio/olvid/messenger/databases/entity/Fyle$SizeAndSha256;
.super Ljava/lang/Object;
.source "Fyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/entity/Fyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeAndSha256"
.end annotation


# instance fields
.field public final fileSize:J

.field public final sha256:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide p1, p0, Lio/olvid/messenger/databases/entity/Fyle$SizeAndSha256;->fileSize:J

    .line 116
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/Fyle$SizeAndSha256;->sha256:[B

    return-void
.end method
