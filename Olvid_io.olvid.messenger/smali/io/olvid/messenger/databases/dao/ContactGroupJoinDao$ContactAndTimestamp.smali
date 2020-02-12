.class public Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;
.super Ljava/lang/Object;
.source "ContactGroupJoinDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactAndTimestamp"
.end annotation


# instance fields
.field public contact:Lio/olvid/messenger/databases/entity/Contact;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
