.class Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$2;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;

.field final synthetic val$builder:Landroid/text/SpannableStringBuilder;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$2;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;

    iput-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$2;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$2;->val$builder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 509
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$2;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$2;->val$builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
