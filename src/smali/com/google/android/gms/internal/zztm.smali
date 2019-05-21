.class public final Lcom/google/android/gms/internal/zztm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/panorama/PanoramaApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zztm$zzc;,
        Lcom/google/android/gms/internal/zztm$zzb;,
        Lcom/google/android/gms/internal/zztm$zzd;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zztl;Lcom/google/android/gms/internal/zztk;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 0
    const/4 v0, 0x0

    .line 1000
    const-string v1, "com.google.android.gms"

    invoke-virtual {p0, v1, p3, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    new-instance v1, Lcom/google/android/gms/internal/zztm$4;

    invoke-direct {v1, p0, p3, p2}, Lcom/google/android/gms/internal/zztm$4;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/zztk;)V

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1, v1, p3, v0, v2}, Lcom/google/android/gms/internal/zztl;->zza(Lcom/google/android/gms/internal/zztk;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    .line 2000
    invoke-virtual {p0, p3, v3}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1000
    throw v0

    :catch_1
    move-exception v0

    .line 3000
    invoke-virtual {p0, p3, v3}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1000
    throw v0
.end method

.method static synthetic zzc(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 0
    .line 4000
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 0
    return-void
.end method


# virtual methods
.method public final loadPanoramaInfoAndGrantAccess(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zztm$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zztm$3;-><init>(Lcom/google/android/gms/internal/zztm;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;

    move-result-object v0

    return-object v0
.end method
