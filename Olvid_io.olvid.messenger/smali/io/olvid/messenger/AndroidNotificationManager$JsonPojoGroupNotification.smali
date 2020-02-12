.class Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;
.super Ljava/lang/Object;
.source "AndroidNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/AndroidNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonPojoGroupNotification"
.end annotation


# instance fields
.field addedMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field groupName:Ljava/lang/String;

.field removedMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddedMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->addedMembers:Ljava/util/List;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 692
    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemovedMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->removedMembers:Ljava/util/List;

    return-object v0
.end method

.method public setAddedMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 704
    iput-object p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->addedMembers:Ljava/util/List;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setRemovedMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 712
    iput-object p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoGroupNotification;->removedMembers:Ljava/util/List;

    return-void
.end method
