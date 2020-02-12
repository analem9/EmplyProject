.class public Lio/olvid/messenger/databases/entity/Invitation;
.super Ljava/lang/Object;
.source "Invitation.java"


# static fields
.field public static final ASSOCIATED_DIALOG:Ljava/lang/String; = "associated_dialog"

.field public static final BYTES_OWNED_IDENTITY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final DIALOG_UUID:Ljava/lang/String; = "dialog_uuid"

.field public static final INVITATION_TIMESTAMP:Ljava/lang/String; = "invitation_timestamp"

.field public static final TABLE_NAME:Ljava/lang/String; = "invitation_table"


# instance fields
.field public associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

.field public bytesOwnedIdentity:[B

.field public dialogUuid:Ljava/util/UUID;

.field public invitationTimestamp:J


# direct methods
.method public constructor <init>(Lio/olvid/engine/engine/types/ObvDialog;J)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    .line 71
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getBytesOwnedIdentity()[B

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation;->bytesOwnedIdentity:[B

    .line 72
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    .line 73
    iput-wide p2, p0, Lio/olvid/messenger/databases/entity/Invitation;->invitationTimestamp:J

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;[BLio/olvid/engine/engine/types/ObvDialog;J)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    .line 79
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Invitation;->bytesOwnedIdentity:[B

    .line 80
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    .line 81
    iput-wide p4, p0, Lio/olvid/messenger/databases/entity/Invitation;->invitationTimestamp:J

    return-void
.end method


# virtual methods
.method public displayStatusDescriptionTextAsync(Landroid/widget/TextView;)V
    .locals 8

    .line 118
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "%f %l (%p @ %c)"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 363
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 332
    :pswitch_0
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 334
    new-instance p1, Lio/olvid/messenger/databases/entity/Invitation$7;

    invoke-direct {p1, p0, v0}, Lio/olvid/messenger/databases/entity/Invitation$7;-><init>(Lio/olvid/messenger/databases/entity/Invitation;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 304
    :pswitch_1
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 306
    new-instance p1, Lio/olvid/messenger/databases/entity/Invitation$6;

    invoke-direct {p1, p0, v0}, Lio/olvid/messenger/databases/entity/Invitation$6;-><init>(Lio/olvid/messenger/databases/entity/Invitation;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 275
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 277
    new-instance p1, Lio/olvid/messenger/databases/entity/Invitation$5;

    invoke-direct {p1, p0, v0}, Lio/olvid/messenger/databases/entity/Invitation$5;-><init>(Lio/olvid/messenger/databases/entity/Invitation;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 195
    :pswitch_3
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 197
    new-instance p1, Lio/olvid/messenger/databases/entity/Invitation$2;

    invoke-direct {p1, p0, v0}, Lio/olvid/messenger/databases/entity/Invitation$2;-><init>(Lio/olvid/messenger/databases/entity/Invitation;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 251
    :pswitch_4
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 253
    new-instance p1, Lio/olvid/messenger/databases/entity/Invitation$4;

    invoke-direct {p1, p0, v0}, Lio/olvid/messenger/databases/entity/Invitation$4;-><init>(Lio/olvid/messenger/databases/entity/Invitation;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 223
    :pswitch_5
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 225
    new-instance p1, Lio/olvid/messenger/databases/entity/Invitation$3;

    invoke-direct {p1, p0, v0}, Lio/olvid/messenger/databases/entity/Invitation$3;-><init>(Lio/olvid/messenger/databases/entity/Invitation;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 167
    :pswitch_6
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 169
    new-instance p1, Lio/olvid/messenger/databases/entity/Invitation$1;

    invoke-direct {p1, p0, v0}, Lio/olvid/messenger/databases/entity/Invitation$1;-><init>(Lio/olvid/messenger/databases/entity/Invitation;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 159
    :pswitch_7
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v1

    const-class v6, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v0, v1, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 160
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f1000e7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 162
    :catch_0
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 150
    :pswitch_8
    :try_start_1
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v1

    const-class v6, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v0, v1, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 151
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f1000ed

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 153
    :catch_1
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 141
    :pswitch_9
    :try_start_2
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iget-object v6, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v6}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v6

    invoke-virtual {v6}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v0, v6, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 142
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1000e3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getSasToDisplay()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v0, v1, v4

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 144
    :catch_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 132
    :pswitch_a
    :try_start_3
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iget-object v6, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v6}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v6

    invoke-virtual {v6}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v0, v6, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 133
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1000e2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getSasToDisplay()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v0, v1, v4

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 135
    :catch_3
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :pswitch_b
    :try_start_4
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v1

    const-class v6, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v0, v1, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 125
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f1000dd

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 127
    :catch_4
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :pswitch_c
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000e8

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    .line 111
    :pswitch_0
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :pswitch_1
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :pswitch_2
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_3
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :pswitch_4
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :pswitch_5
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_6
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :pswitch_7
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :pswitch_8
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :pswitch_9
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :pswitch_a
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public listGroupMembersAsync(Landroid/widget/TextView;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 372
    new-instance p1, Lio/olvid/messenger/databases/entity/Invitation$8;

    invoke-direct {p1, p0, v0}, Lio/olvid/messenger/databases/entity/Invitation$8;-><init>(Lio/olvid/messenger/databases/entity/Invitation;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
