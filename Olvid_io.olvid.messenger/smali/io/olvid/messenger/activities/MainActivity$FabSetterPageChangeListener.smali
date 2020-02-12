.class Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FabSetterPageChangeListener"
.end annotation


# instance fields
.field private currentFabDrawableResourceId:I

.field private fabVisible:Z

.field private forceFabHidden:Z

.field private final imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic this$0:Lio/olvid/messenger/activities/MainActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity;)V
    .locals 1

    .line 1088
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lio/olvid/messenger/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 p1, 0x0

    .line 1091
    iput p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->currentFabDrawableResourceId:I

    .line 1092
    iput-boolean p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->fabVisible:Z

    .line 1093
    iput-boolean p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->forceFabHidden:Z

    return-void
.end method

.method static synthetic access$1000(Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;)Z
    .locals 0

    .line 1088
    iget-boolean p0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->fabVisible:Z

    return p0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 1115
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v2, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {v2}, Lio/olvid/messenger/activities/MainActivity;->access$700(Lio/olvid/messenger/activities/MainActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1118
    :cond_0
    iput-boolean v1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->forceFabHidden:Z

    .line 1119
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/MainActivity;->access$200(Lio/olvid/messenger/activities/MainActivity;)Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->highlightTab(I)V

    .line 1120
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/MainActivity;->access$900(Lio/olvid/messenger/activities/MainActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    const v0, 0x7f0800a6

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x7f0800bb

    goto :goto_0

    :cond_2
    const v0, 0x7f0800dc

    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    .line 1140
    :try_start_0
    iget-boolean v4, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->fabVisible:Z

    if-eqz v4, :cond_4

    .line 1141
    iget v4, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->currentFabDrawableResourceId:I

    if-eq v4, v0, :cond_5

    .line 1142
    iget-object v4, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {v4}, Lio/olvid/messenger/activities/MainActivity;->access$900(Lio/olvid/messenger/activities/MainActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v4

    new-instance v5, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener$1;

    invoke-direct {v5, p0, v0}, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener$1;-><init>(Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;I)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    goto :goto_1

    .line 1154
    :cond_4
    iput-boolean v3, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->fabVisible:Z

    .line 1155
    iget-object v4, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {v4}, Lio/olvid/messenger/activities/MainActivity;->access$900(Lio/olvid/messenger/activities/MainActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 1156
    iget-object v4, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {v4}, Lio/olvid/messenger/activities/MainActivity;->access$900(Lio/olvid/messenger/activities/MainActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    .line 1158
    :cond_5
    :goto_1
    iput v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->currentFabDrawableResourceId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1163
    :cond_6
    iput v1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->currentFabDrawableResourceId:I

    .line 1164
    iput-boolean v1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->fabVisible:Z

    .line 1165
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/MainActivity;->access$900(Lio/olvid/messenger/activities/MainActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 1170
    :cond_7
    :goto_2
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/MainActivity;->invalidateOptionsMenu()V

    .line 1171
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/MainActivity;->access$500(Lio/olvid/messenger/activities/MainActivity;)Lio/olvid/messenger/fragments/InvitationListFragment;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1172
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/MainActivity;->access$500(Lio/olvid/messenger/activities/MainActivity;)Lio/olvid/messenger/fragments/InvitationListFragment;

    move-result-object v0

    if-ne p1, v2, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-virtual {v0, v1}, Lio/olvid/messenger/fragments/InvitationListFragment;->setInvitationsAreVisible(Z)V

    :cond_9
    return-void
.end method

.method setForceFabHidden(Z)V
    .locals 2

    .line 1096
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/MainActivity;->access$700(Lio/olvid/messenger/activities/MainActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 1099
    :cond_0
    iget-boolean v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->forceFabHidden:Z

    xor-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 1100
    iput-boolean p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->forceFabHidden:Z

    .line 1101
    iget-boolean v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->fabVisible:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1102
    iput-boolean p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->fabVisible:Z

    .line 1103
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/MainActivity;->access$900(Lio/olvid/messenger/activities/MainActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 1105
    iget p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->currentFabDrawableResourceId:I

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1106
    iput-boolean p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->fabVisible:Z

    .line 1107
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/MainActivity;->access$900(Lio/olvid/messenger/activities/MainActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    :cond_2
    :goto_0
    return-void
.end method
