.class public Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao$MessageRecipientInfoAndMessage;
.super Ljava/lang/Object;
.source "MessageRecipientInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageRecipientInfoAndMessage"
.end annotation


# instance fields
.field public message:Lio/olvid/messenger/databases/entity/Message;

.field public messageRecipientInfo:Lio/olvid/messenger/databases/entity/MessageRecipientInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
