.class public Lio/olvid/engine/engine/types/ObvPostMessageOutput;
.super Ljava/lang/Object;
.source "ObvPostMessageOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;
    }
.end annotation


# instance fields
.field private final messageIdentifierByContactIdentity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;",
            "[B>;"
        }
    .end annotation
.end field

.field private final messageSent:Z


# direct methods
.method public constructor <init>(ZLjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;",
            "[B>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lio/olvid/engine/engine/types/ObvPostMessageOutput;->messageSent:Z

    .line 17
    iput-object p2, p0, Lio/olvid/engine/engine/types/ObvPostMessageOutput;->messageIdentifierByContactIdentity:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getMessageIdentifierByContactIdentity()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;",
            "[B>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvPostMessageOutput;->messageIdentifierByContactIdentity:Ljava/util/HashMap;

    return-object v0
.end method

.method public isMessageSent()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lio/olvid/engine/engine/types/ObvPostMessageOutput;->messageSent:Z

    return v0
.end method
