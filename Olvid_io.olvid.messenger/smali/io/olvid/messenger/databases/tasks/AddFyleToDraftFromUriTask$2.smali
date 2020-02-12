.class Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;
.super Ljava/lang/Object;
.source "AddFyleToDraftFromUriTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;

.field final synthetic val$db:Lio/olvid/messenger/databases/AppDatabase;

.field final synthetic val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

.field final synthetic val$fileSize:J

.field final synthetic val$finalFileName:Ljava/lang/String;

.field final synthetic val$finalFyle:Lio/olvid/messenger/databases/entity/Fyle;

.field final synthetic val$finalOutputFile:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;Lio/olvid/messenger/databases/AppDatabase;Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 103
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->this$0:Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;

    iput-object p2, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    iput-object p3, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$finalFyle:Lio/olvid/messenger/databases/entity/Fyle;

    iput-object p4, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    iput-object p5, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$finalOutputFile:Ljava/lang/String;

    iput-object p6, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$finalFileName:Ljava/lang/String;

    iput-object p7, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$mimeType:Ljava/lang/String;

    iput-wide p8, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$fileSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 11

    .line 106
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$finalFyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-wide v1, v1, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-wide v3, v3, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v0, v1, v2, v3, v4}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->get(JJ)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 108
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$finalFyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-wide v1, v0, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-wide v3, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-object v5, v0, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    iget-object v6, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$finalOutputFile:Ljava/lang/String;

    iget-object v7, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$finalFileName:Ljava/lang/String;

    iget-object v8, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$mimeType:Ljava/lang/String;

    iget-wide v9, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$fileSize:J

    invoke-static/range {v1 .. v10}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->createDraft(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->insert(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    const/4 v0, 0x0

    .line 120
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
