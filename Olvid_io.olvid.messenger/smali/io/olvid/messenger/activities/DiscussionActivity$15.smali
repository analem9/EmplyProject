.class Lio/olvid/messenger/activities/DiscussionActivity$15;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroid/net/Uri;)V
    .locals 0

    .line 1286
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$15;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$15;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 1289
    :try_start_0
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$15;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$15;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 1293
    :try_start_1
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$15;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v2}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2000(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1296
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$15;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v3}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2000(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    move-result-object v3

    iget-object v3, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/high16 v3, 0x40000

    :try_start_2
    new-array v3, v3, [B

    .line 1299
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1300
    invoke-virtual {v1, v3, v0, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1302
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const v2, 0x7f1001ec

    .line 1303
    invoke-static {v2, v0}, Lio/olvid/messenger/App;->toast(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_4

    .line 1304
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v3

    .line 1296
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    .line 1302
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4

    .line 1294
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2

    :catchall_3
    move-exception v2

    goto :goto_2

    .line 1291
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unable to write to provided Uri"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1289
    :goto_2
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v3

    if-eqz v1, :cond_3

    .line 1304
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    const v1, 0x7f1001f9

    .line 1305
    invoke-static {v1, v0}, Lio/olvid/messenger/App;->toast(II)V

    :cond_4
    :goto_4
    return-void
.end method
