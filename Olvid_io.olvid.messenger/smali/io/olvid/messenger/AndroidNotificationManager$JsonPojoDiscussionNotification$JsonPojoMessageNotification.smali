.class Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;
.super Ljava/lang/Object;
.source "AndroidNotificationManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonPojoMessageNotification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;",
        ">;"
    }
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field sender:Ljava/lang/String;

.field senderByteIdentity:[B

.field timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput-wide p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->timestamp:J

    .line 787
    iput-object p3, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->sender:Ljava/lang/String;

    .line 788
    iput-object p4, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->senderByteIdentity:[B

    .line 789
    iput-object p5, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;)I
    .locals 4

    .line 829
    iget-wide v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->timestamp:J

    iget-wide v2, p1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->timestamp:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 779
    check-cast p1, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->compareTo(Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;)I

    move-result p1

    return p1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 820
    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->content:Ljava/lang/String;

    return-object v0
.end method

.method getMessage()Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .locals 5
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 838
    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->senderByteIdentity:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->sender:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 839
    new-instance v0, Lio/olvid/messenger/customClasses/InitialView;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/olvid/messenger/customClasses/InitialView;-><init>(Landroid/content/Context;)V

    .line 840
    iget-object v1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->senderByteIdentity:[B

    iget-object v2, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->sender:Ljava/lang/String;

    invoke-static {v2}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 841
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 842
    invoke-virtual {v0, v1, v1}, Lio/olvid/messenger/customClasses/InitialView;->setSize(II)V

    .line 843
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 844
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lio/olvid/messenger/customClasses/InitialView;->drawOnCanvas(Landroid/graphics/Canvas;)V

    .line 846
    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    iget-object v2, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->sender:Ljava/lang/String;

    .line 847
    invoke-virtual {v0, v2}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    .line 848
    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v0

    .line 851
    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    iget-object v2, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->content:Ljava/lang/String;

    iget-wide v3, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->timestamp:J

    invoke-direct {v1, v2, v3, v4, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    return-object v1

    .line 853
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    iget-object v1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->content:Ljava/lang/String;

    iget-wide v2, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->timestamp:J

    const/4 v4, 0x0

    check-cast v4, Landroidx/core/app/Person;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 812
    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderByteIdentity()[B
    .locals 1

    .line 796
    iget-object v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->senderByteIdentity:[B

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 804
    iget-wide v0, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->timestamp:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->content:Ljava/lang/String;

    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->sender:Ljava/lang/String;

    return-void
.end method

.method public setSenderByteIdentity([B)V
    .locals 0

    .line 800
    iput-object p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->senderByteIdentity:[B

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 808
    iput-wide p1, p0, Lio/olvid/messenger/AndroidNotificationManager$JsonPojoDiscussionNotification$JsonPojoMessageNotification;->timestamp:J

    return-void
.end method
