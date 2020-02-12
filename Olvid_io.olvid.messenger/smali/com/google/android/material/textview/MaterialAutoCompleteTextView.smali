.class public Lcom/google/android/material/textview/MaterialAutoCompleteTextView;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "MaterialAutoCompleteTextView.java"


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    sget v0, Lcom/google/android/material/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "accessibility"

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 70
    new-instance p1, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    .line 71
    iget-object p1, p0, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 72
    iget-object p1, p0, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 73
    iget-object p1, p0, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 74
    iget-object p1, p0, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object p1, p0, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance p2, Lcom/google/android/material/textview/MaterialAutoCompleteTextView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView$1;-><init>(Lcom/google/android/material/textview/MaterialAutoCompleteTextView;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/textview/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/ListPopupWindow;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/textview/MaterialAutoCompleteTextView;Ljava/lang/Object;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->updateText(Ljava/lang/Object;)V

    return-void
.end method

.method private findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 133
    instance-of v1, v0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v1, :cond_0

    .line 134
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0

    .line 136
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateText(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0, v1}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getHint()Ljava/lang/CharSequence;
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .line 113
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object p1, p0, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public showDropDown()V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->getInputType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/material/textview/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_0

    .line 107
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->showDropDown()V

    :goto_0
    return-void
.end method
