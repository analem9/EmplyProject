.class public final synthetic Lio/olvid/messenger/-$$Lambda$AppSingleton$2$l4HHCBmLkEbDnwtIj4OTFZseV0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/olvid/messenger/AppSingleton$2;

.field private final synthetic f$1:Lio/olvid/messenger/databases/entity/OwnedIdentity;


# direct methods
.method public synthetic constructor <init>(Lio/olvid/messenger/AppSingleton$2;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/-$$Lambda$AppSingleton$2$l4HHCBmLkEbDnwtIj4OTFZseV0o;->f$0:Lio/olvid/messenger/AppSingleton$2;

    iput-object p2, p0, Lio/olvid/messenger/-$$Lambda$AppSingleton$2$l4HHCBmLkEbDnwtIj4OTFZseV0o;->f$1:Lio/olvid/messenger/databases/entity/OwnedIdentity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/olvid/messenger/-$$Lambda$AppSingleton$2$l4HHCBmLkEbDnwtIj4OTFZseV0o;->f$0:Lio/olvid/messenger/AppSingleton$2;

    iget-object v1, p0, Lio/olvid/messenger/-$$Lambda$AppSingleton$2$l4HHCBmLkEbDnwtIj4OTFZseV0o;->f$1:Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/AppSingleton$2;->lambda$onChanged$0$AppSingleton$2(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method
