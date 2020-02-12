.class public Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;
.super Ljava/lang/Object;
.source "DiscussionDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/dao/DiscussionDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscussionAndLastMessage"
.end annotation


# instance fields
.field public discussion:Lio/olvid/messenger/databases/entity/Discussion;

.field public discussionCustomization:Lio/olvid/messenger/databases/entity/DiscussionCustomization;

.field public message:Lio/olvid/messenger/databases/entity/Message;

.field public unreadCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
