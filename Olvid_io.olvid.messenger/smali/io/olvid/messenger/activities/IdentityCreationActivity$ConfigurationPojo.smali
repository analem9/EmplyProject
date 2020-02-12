.class public Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;
.super Ljava/lang/Object;
.source "IdentityCreationActivity.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/IdentityCreationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationPojo"
.end annotation


# instance fields
.field apiKey:Ljava/util/UUID;

.field serverUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 0

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->serverUrl:Ljava/lang/String;

    .line 583
    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->apiKey:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/util/UUID;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "api_key"
    .end annotation

    .line 598
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->apiKey:Ljava/util/UUID;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "server_url"
    .end annotation

    .line 588
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setApiKey(Ljava/util/UUID;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "api_key"
    .end annotation

    .line 603
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->apiKey:Ljava/util/UUID;

    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "server_url"
    .end annotation

    .line 593
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->serverUrl:Ljava/lang/String;

    return-void
.end method
