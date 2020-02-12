.class public Lio/olvid/messenger/databases/entity/DiscussionCustomization;
.super Ljava/lang/Object;
.source "DiscussionCustomization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;
    }
.end annotation


# static fields
.field public static final BACKGROUND_IMAGE_URL:Ljava/lang/String; = "background_image_url"

.field public static final DISCUSSION_BACKGROUNDS_DIRECTORY:Ljava/lang/String; = "discussion_backgrounds"

.field public static final DISCUSSION_ID:Ljava/lang/String; = "discussion_id"

.field public static final PREF_SEND_READ_RECEIPT:Ljava/lang/String; = "pref_send_read_receipt"

.field public static final SERIALIZED_COLOR_JSON:Ljava/lang/String; = "serialized_color_json"

.field public static final TABLE_NAME:Ljava/lang/String; = "discussion_customization_table"


# instance fields
.field public backgroundImageUrl:Ljava/lang/String;

.field public discussionId:J

.field public prefSendReadReceipt:Ljava/lang/Boolean;

.field public serializedColorJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->discussionId:J

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->serializedColorJson:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->discussionId:J

    .line 56
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->serializedColorJson:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->prefSendReadReceipt:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public buildBackgroundImagePath()Ljava/lang/String;
    .locals 5

    .line 71
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "discussion_backgrounds"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 74
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->discussionId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorJson()Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;
    .locals 4

    .line 80
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->serializedColorJson:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 84
    :cond_0
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iget-object v2, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->serializedColorJson:Ljava/lang/String;

    const-class v3, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public setColorJson(Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->serializedColorJson:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->serializedColorJson:Ljava/lang/String;

    :goto_0
    return-void
.end method
