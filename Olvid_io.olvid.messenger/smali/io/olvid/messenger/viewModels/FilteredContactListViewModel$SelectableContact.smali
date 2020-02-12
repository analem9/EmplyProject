.class public Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;
.super Ljava/lang/Object;
.source "FilteredContactListViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/viewModels/FilteredContactListViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectableContact"
.end annotation


# instance fields
.field public contact:Lio/olvid/messenger/databases/entity/Contact;

.field public selected:Z


# direct methods
.method public constructor <init>(Lio/olvid/messenger/databases/entity/Contact;Z)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    .line 159
    iput-boolean p2, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->selected:Z

    return-void
.end method
