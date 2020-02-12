.class public Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;
.super Ljava/lang/Object;
.source "PendingGroupMemberDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingGroupMemberAndContact"
.end annotation


# instance fields
.field public contact:Lio/olvid/messenger/databases/entity/Contact;

.field public pendingGroupMember:Lio/olvid/messenger/databases/entity/PendingGroupMember;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
