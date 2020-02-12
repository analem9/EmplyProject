.class public Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;
.super Ljava/lang/Object;
.source "DiscussionDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/dao/DiscussionDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscussionAndContactDisplayNames"
.end annotation


# instance fields
.field public discussion:Lio/olvid/messenger/databases/entity/Discussion;

.field public groupContactDisplayNames:Ljava/lang/String;

.field public oneToOneContact:Lio/olvid/messenger/databases/entity/Contact;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
