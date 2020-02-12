.class final Lcom/google/android/datatransport/cct/a/zzd$zza;
.super Lcom/google/android/datatransport/cct/a/zza$zza;
.source "com.google.android.datatransport:transport-backend-cct@@2.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/a/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/a/zza$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(I)Lcom/google/android/datatransport/cct/a/zza$zza;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zza:Ljava/lang/Integer;

    return-object p0
.end method

.method public zza(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public zza()Lcom/google/android/datatransport/cct/a/zza;
    .locals 12

    .line 3
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zza:Ljava/lang/Integer;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sdkVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzd;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zza:Ljava/lang/Integer;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zzc:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zzd:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zze:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zzf:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zzg:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zzh:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/datatransport/cct/a/zzd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/datatransport/cct/a/zzc;)V

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzb(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public zzc(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public zzd(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public zze(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public zzf(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public zzg(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/a/zzd$zza;->zze:Ljava/lang/String;

    return-object p0
.end method
