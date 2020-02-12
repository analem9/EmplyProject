.class public Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;
.super Landroidx/fragment/app/Fragment;
.source "GroupCreationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/GroupCreationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupNameFragment"
.end annotation


# instance fields
.field groupDescriptionInput:Lcom/google/android/material/textfield/TextInputEditText;

.field groupNameInput:Lcom/google/android/material/textfield/TextInputEditText;

.field groupNameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 413
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c004c

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090177

    .line 423
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->groupNameInput:Lcom/google/android/material/textfield/TextInputEditText;

    const p2, 0x7f090178

    .line 424
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->groupNameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const p2, 0x7f09015b

    .line 425
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->groupDescriptionInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 427
    iget-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->groupNameInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$1;

    invoke-direct {p3, p0}, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$1;-><init>(Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 449
    iget-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->groupDescriptionInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$2;

    invoke-direct {p3, p0}, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$2;-><init>(Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object p1
.end method

.method setGroupDescription(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 475
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->groupDescriptionInput:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setGroupName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 470
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->groupNameInput:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
