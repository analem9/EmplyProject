.class public interface abstract Lio/olvid/engine/metamanager/PushNotificationDelegate;
.super Ljava/lang/Object;
.source "PushNotificationDelegate.java"


# static fields
.field public static final PUSH_NOTIFICATION_TYPE_ANDROID:B = 0x1t

.field public static final PUSH_NOTIFICATION_TYPE_NONE:B = -0x1t

.field public static final PUSH_NOTIFICATION_TYPE_POLLING:B = -0x2t


# virtual methods
.method public abstract getRegisteredPushNotificationExtraInfo(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;B)Lio/olvid/engine/encoder/Encoded;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract processAndroidPushNotification(Ljava/lang/String;)V
.end method

.method public abstract registerPushNotification(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract unregisterPushNotification(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
