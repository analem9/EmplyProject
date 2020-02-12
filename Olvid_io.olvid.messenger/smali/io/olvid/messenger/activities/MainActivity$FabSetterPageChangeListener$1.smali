.class Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener$1;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;

.field final synthetic val$resourceId:I


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;I)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener$1;->this$1:Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;

    iput p2, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener$1;->val$resourceId:I

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    .line 1145
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;->onHidden(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 1146
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener$1;->this$1:Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;

    invoke-static {v0}, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->access$1000(Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    iget v0, p0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener$1;->val$resourceId:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 1148
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    :cond_0
    return-void
.end method
