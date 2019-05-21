.class abstract Lcom/google/android/gms/internal/zztm$zzb;
.super Lcom/google/android/gms/internal/zztm$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zztm$zzd",
        "<",
        "Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zztm$zzd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .prologue
    .line 0
    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/zzto;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzto;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    .line 0
    return-object v0
.end method
