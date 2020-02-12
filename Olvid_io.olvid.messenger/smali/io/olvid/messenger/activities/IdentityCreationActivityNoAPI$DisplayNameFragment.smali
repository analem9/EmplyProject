.class public Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;
.super Landroidx/fragment/app/Fragment;
.source "IdentityCreationActivityNoAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayNameFragment"
.end annotation


# instance fields
.field companyEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field firstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field generateIdButton:Landroid/widget/Button;

.field identityReadyObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field lastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field positionEditText:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 438
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 447
    new-instance v0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$1;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->identityReadyObserver:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c004d

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09008e

    .line 465
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->generateIdButton:Landroid/widget/Button;

    const p2, 0x7f09018e

    .line 466
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->firstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const p2, 0x7f090190

    .line 467
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->lastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const p2, 0x7f09018d

    .line 468
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const p2, 0x7f09018f

    .line 469
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const p2, 0x7f09018c

    .line 470
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->companyEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const p2, 0x7f090191

    .line 471
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->positionEditText:Lcom/google/android/material/textfield/TextInputEditText;

    .line 473
    new-instance p2, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;

    invoke-direct {p2, p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;)V

    .line 503
    iget-object p3, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p3, p2}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 504
    iget-object p3, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p3, p2}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 505
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->companyEditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$3;

    invoke-direct {p3, p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$3;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 523
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->positionEditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$4;

    invoke-direct {p3, p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$4;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 541
    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->generateIdButton:Landroid/widget/Button;

    new-instance p3, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$5;

    invoke-direct {p3, p0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$5;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method setIdentityDetails(Lio/olvid/engine/engine/types/JsonIdentityDetails;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 555
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->companyEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_2

    .line 562
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 564
    :cond_2
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->positionEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_3

    .line 565
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getPosition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
