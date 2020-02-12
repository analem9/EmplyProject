.class public Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;
.super Ljava/lang/Object;
.source "GroupDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/dao/GroupDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupAndContactDisplayNames"
.end annotation


# instance fields
.field public contactDisplayNames:Ljava/lang/String;

.field public group:Lio/olvid/messenger/databases/entity/Group;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
