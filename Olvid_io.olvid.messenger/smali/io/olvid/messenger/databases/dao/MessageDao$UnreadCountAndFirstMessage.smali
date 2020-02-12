.class public Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;
.super Ljava/lang/Object;
.source "MessageDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/dao/MessageDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadCountAndFirstMessage"
.end annotation


# instance fields
.field public messageId:J

.field public minSortIndex:D

.field public unreadCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
