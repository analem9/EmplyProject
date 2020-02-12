.class public Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;
.super Ljava/lang/Object;
.source "FilteredDiscussionListViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchableDiscussion"
.end annotation


# instance fields
.field public final byteIdentifier:[B

.field public final discussionId:J

.field public final groupMemberNameList:Ljava/lang/String;

.field public final isGroupDiscussion:Z

.field public final patternMatchingField:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iget-object v0, p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-wide v0, v0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iput-wide v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->discussionId:J

    .line 114
    iget-object v0, p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->isGroupDiscussion:Z

    .line 116
    iget-object v0, p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    iput-object v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->byteIdentifier:[B

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;->oneToOneContact:Lio/olvid/messenger/databases/entity/Contact;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 118
    iput-boolean v1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->isGroupDiscussion:Z

    .line 119
    iget-object v0, p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;->oneToOneContact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iput-object v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->byteIdentifier:[B

    goto :goto_0

    .line 121
    :cond_1
    iput-boolean v1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->isGroupDiscussion:Z

    new-array v0, v1, [B

    .line 122
    iput-object v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->byteIdentifier:[B

    .line 124
    :goto_0
    iget-object v0, p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    iput-object v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->title:Ljava/lang/String;

    .line 125
    iget-object v0, p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;->groupContactDisplayNames:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;->groupContactDisplayNames:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->groupMemberNameList:Ljava/lang/String;

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->groupMemberNameList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/messenger/App;->unAccent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->patternMatchingField:Ljava/lang/String;

    return-void
.end method
