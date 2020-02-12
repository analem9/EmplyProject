.class Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;
.super Ljava/lang/Object;
.source "AndroidNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/AndroidNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonPojoDiscussionNotification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;
    }
.end annotation


# instance fields
.field bytesOwnedIdentity:[B

.field discussionInitialBytes:[B

.field isGroup:Z

.field messageNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;",
            ">;"
        }
    .end annotation
.end field

.field ownDisplayName:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytesOwnedIdentity()[B
    .locals 1

    .line 729
    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->bytesOwnedIdentity:[B

    return-object v0
.end method

.method public getDiscussionInitialBytes()[B
    .locals 1

    .line 753
    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->discussionInitialBytes:[B

    return-object v0
.end method

.method public getMessageNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;",
            ">;"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->messageNotifications:Ljava/util/List;

    return-object v0
.end method

.method public getOwnDisplayName()Ljava/lang/String;
    .locals 1

    .line 737
    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->ownDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 745
    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isGroup()Z
    .locals 1

    .line 761
    iget-boolean v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->isGroup:Z

    return v0
.end method

.method public setBytesOwnedIdentity([B)V
    .locals 0

    .line 733
    iput-object p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->bytesOwnedIdentity:[B

    return-void
.end method

.method public setDiscussionInitialBytes([B)V
    .locals 0

    .line 757
    iput-object p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->discussionInitialBytes:[B

    return-void
.end method

.method public setGroup(Z)V
    .locals 0

    .line 765
    iput-boolean p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->isGroup:Z

    return-void
.end method

.method public setMessageNotifications(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;",
            ">;)V"
        }
    .end annotation

    .line 773
    iput-object p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->messageNotifications:Ljava/util/List;

    return-void
.end method

.method public setOwnDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->ownDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;->title:Ljava/lang/String;

    return-void
.end method
